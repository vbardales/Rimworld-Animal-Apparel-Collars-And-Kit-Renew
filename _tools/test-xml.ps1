param([string]$ModPath = (Join-Path $PSScriptRoot '../Mod'))
$ErrorActionPreference = 'Stop'
$root = (Resolve-Path $ModPath).Path
$script:checks = 0
function Assert($condition, [string]$message) {
    $script:checks++
    if (-not $condition) { throw "FAIL: $message" }
}
function Read-Xml([string]$path) {
    $doc = [System.Xml.XmlDocument]::new()
    $doc.Load($path)
    return ,$doc
}
function Apply-Operations($doc, $operations) {
    foreach ($op in $operations) {
        $kind = $op.GetAttribute('Class')
        if ($kind -eq 'PatchOperationSequence') {
            Apply-Operations $doc $op.SelectNodes('operations/li')
            continue
        }
        Assert ($kind -in @('PatchOperationAdd','PatchOperationRemove','PatchOperationReplace')) "Unsupported operation $kind"
        $targets = @($doc.SelectNodes($op.xpath))
        Assert (($targets.Count -gt 0) -or ($op.success -eq 'Always')) "Unmatched XPath: $($op.xpath)"
        foreach ($target in $targets) {
            if ($kind -eq 'PatchOperationRemove') { [void]$target.ParentNode.RemoveChild($target); continue }
            foreach ($value in $op.SelectNodes('value/*')) {
                $copy = $doc.ImportNode($value, $true)
                if ($kind -eq 'PatchOperationReplace') { [void]$target.ParentNode.ReplaceChild($copy, $target) }
                else { [void]$target.AppendChild($copy) }
            }
        }
    }
}
$docs = @{}
foreach ($file in Get-ChildItem $root -Recurse -Filter '*.xml') {
    $docs[$file.FullName] = Read-Xml $file.FullName
    Assert ($docs[$file.FullName].DocumentElement.LocalName -in @('Defs','Patch','LanguageData','ModMetaData','loadFolders')) "Unexpected root: $file"
}
Write-Host "Parsed $($docs.Count) XML files"
$about = Read-Xml (Join-Path $root 'About/About.xml')
Assert ($about.SelectNodes('/ModMetaData/modDependencies/li[packageId="Ingendum.AnimalApparelFramework"]').Count -eq 1) 'Framework dependency'
Assert ($about.ModMetaData.description.Contains($about.ModMetaData.url)) 'GitHub URL in description'
Assert ($about.ModMetaData.url -match '^https://github.com/') 'GitHub metadata URL'

# Case-sensitive relative paths, including on Windows.
$paths = [Collections.Generic.HashSet[string]]::new([StringComparer]::Ordinal)
foreach ($item in Get-ChildItem $root -Recurse) {
    [void]$paths.Add($item.FullName.Substring($root.Length + 1).Replace('\','/'))
}
Assert ($paths.Contains('LoadFolders.xml')) 'LoadFolders filename case'
$folders = Read-Xml (Join-Path $root 'LoadFolders.xml')
$entries = @($folders.SelectNodes('/loadFolders/v1.6/li'))
$seen = @{}
foreach ($entry in $entries) {
    $path = $entry.InnerText
    Assert (-not $seen.ContainsKey($path)) "Repeated load folder: $path"
    $seen[$path] = $true
    Assert (($path -eq '/') -or $paths.Contains($path)) "Missing/case-mismatched load folder: $path"
    if ($path -ne '/') { Assert ($entry.HasAttribute('IfModActive')) "Unguarded optional folder: $path" }
}
function Active-Folders([string[]]$packages) {
    @($entries | Where-Object { -not $_.HasAttribute('IfModActive') -or @($_.GetAttribute('IfModActive').Split(',') | Where-Object { $_ -in $packages }).Count -gt 0 } | ForEach-Object { $_.InnerText })
}
Assert ((Active-Folders @()).Count -eq 1) 'Bare modlist loads only base content'
foreach ($entry in $entries | Where-Object { $_.HasAttribute('IfModActive') }) {
    foreach ($alias in $entry.GetAttribute('IfModActive').Split(',')) {
        Assert ($entry.InnerText -in (Active-Folders @($alias))) "Alias does not activate folder: $alias"
    }
}
Assert ('Mods/VEF' -notin (Active-Folders @('MemeGoddess.GiddyUp'))) 'VEF remains absent without VEF'

$defs = [xml]'<Defs />'
$identities = @{}
foreach ($doc in $docs.Values | Where-Object { $_.DocumentElement.LocalName -eq 'Defs' }) {
    foreach ($def in $doc.SelectNodes('/Defs/*')) {
        $id = if ($def.defName) { $def.defName } else { '@' + $def.GetAttribute('Name') }
        $key = $def.LocalName + ':' + $id
        Assert (-not $identities.ContainsKey($key)) "Duplicate definition: $key"
        $identities[$key] = $true
        [void]$defs.DocumentElement.AppendChild($defs.ImportNode($def, $true))
    }
}
# Translation targets and duplicate keys, scoped by Def type.
$keys = @{}
foreach ($file in Get-ChildItem (Join-Path $root 'Languages') -Recurse -Filter '*.xml') {
    $type = $file.Directory.Name
    foreach ($node in $docs[$file.FullName].SelectNodes('/LanguageData/*')) {
        $key = $type + ':' + $node.Name
        Assert (-not $keys.ContainsKey($key)) "Duplicate translation: $key"
        $keys[$key] = $true
        $id = $node.Name.Split('.')[0]
        Assert ($identities.ContainsKey($type + ':' + $id)) "Unknown translation target: $key"
        Assert (-not [string]::IsNullOrWhiteSpace($node.InnerText)) "Empty translation: $key"
    }
}
# All authored XPath expressions must compile, even in disabled optional branches.
foreach ($doc in $docs.Values) {
    foreach ($xpath in $doc.SelectNodes('//xpath')) { [void][System.Xml.XPath.XPathExpression]::Compile($xpath.InnerText); $script:checks++ }
}
# Fixtures exercise actual body patch selectors: existing/missing groups, neck/head,
# human exclusion, and a body with no matching part. No game loader is emulated.
$bodyPatch = Read-Xml (Join-Path $root 'Patches/Bodies_AnimalNeck.xml')
foreach ($neck in @($true,$false)) {
    foreach ($groups in @($true,$false)) {
        $part = if ($neck) { 'Neck' } else { 'Head' }
        $groupXml = if ($groups) { '<groups><li>Existing</li></groups>' } else { '' }
        $fixture = [xml]"<Defs><BodyDef><defName>Animal</defName><corePart><parts><li><def>$part</def>$groupXml</li></parts></corePart></BodyDef><BodyDef><defName>Human</defName><corePart><parts><li><def>Neck</def></li></parts></corePart></BodyDef><BodyDef><defName>NoMatch</defName><corePart><parts><li><def>Tail</def></li></parts></corePart></BodyDef></Defs>"
        Apply-Operations $fixture $bodyPatch.SelectNodes('/Patch/Operation')
        Assert ($fixture.SelectNodes('//BodyDef[defName="Animal"]//groups/li[text()="AnimalNeck"]').Count -eq 1) "AnimalNeck assignment: neck=$neck groups=$groups"
        Assert ($fixture.SelectNodes('//BodyDef[defName="Human" or defName="NoMatch"]//groups').Count -eq 0) 'Excluded bodies unchanged'
        if ($groups) { Assert ($fixture.SelectNodes('//li[text()="Existing"]').Count -eq 1) 'Existing groups preserved' }
    }
}
$ce = $defs.CloneNode($true)
Apply-Operations $ce (Read-Xml (Join-Path $root 'Mods/CETeam.CombatExtended/Patches/Saddle_CE.xml')).SelectNodes('/Patch/Operation')
Assert ($ce.SelectSingleNode('//ThingDef[defName="Apparel_MedievalHorseSaddle"]/equippedStatOffsets/CarryBulk').InnerText -eq '25') 'CE saddle capacity'
Assert ($ce.SelectSingleNode('//ThingDef[defName="Apparel_MedievalHorseSaddle"]/statBases/StuffEffectMultiplierArmor').InnerText -eq '3') 'CE saddle replacement'
foreach ($existing in @('', '<li Class="GiddyUp.CompProperties_Overlay"><old /></li>')) {
    $horse = [xml]"<Defs><ThingDef><defName>Horse</defName><comps><li Class='Other.Comp'/>$existing</comps></ThingDef></Defs>"
    Apply-Operations $horse (Read-Xml (Join-Path $root 'Mods/MemeGoddess.GiddyUp/Patches/HorseRidingOverlay.xml')).SelectNodes('/Patch/Operation')
    Assert ($horse.SelectNodes('//li[@Class="GiddyUp.CompProperties_Overlay"]').Count -eq 1) 'Exactly one horse overlay'
    Assert ($horse.SelectNodes('//li[@Class="Other.Comp"]').Count -eq 1) 'Unrelated horse comp preserved'
    Assert ($horse.SelectNodes('//allVariants/li').Count -eq 7) 'Seven horse overlays'
}
# Toggle children are tested explicitly in both branches, without claiming to run VEF.
# Hyperlink patches use inherited descriptionHyperlinks. Materialize that field only;
# this is deliberately not a replacement for RimWorld's full inheritance loader.
$links = $defs.CloneNode($true)
foreach ($def in $links.SelectNodes('/Defs/ThingDef[defName]')) {
    if ($def.SelectSingleNode('descriptionHyperlinks')) { continue }
    $parent = $def
    $visited = @{}
    while ($parent.HasAttribute('ParentName')) {
        $name = $parent.GetAttribute('ParentName')
        Assert (-not $visited.ContainsKey($name)) "Inheritance cycle: $name"
        $visited[$name] = $true
        $parent = $links.SelectSingleNode("/Defs/ThingDef[@Name='$name']")
        if (-not $parent) { break }
        $field = $parent.SelectSingleNode('descriptionHyperlinks')
        if ($field) { [void]$def.AppendChild($field.CloneNode($true)); break }
    }
}
foreach ($file in Get-ChildItem (Join-Path $root 'Mods') -Recurse -Filter '*hyperlinks.xml') {
    Apply-Operations $links $docs[$file.FullName].SelectNodes('/Patch/Operation')
}
$toggle = Read-Xml (Join-Path $root 'Mods/VEF/Patches/TogglePlaceholders.xml')
$toggled = $defs.CloneNode($true)
$remove = $toggle.SelectSingleNode('/Patch/Operation/operations/li[@Class="PatchOperationRemove"]')
Assert ($toggled.SelectNodes($remove.xpath).Count -eq 5) 'Five universal pieces before toggle'
Apply-Operations $toggled @($remove)
Assert ($toggled.SelectNodes($remove.xpath).Count -eq 0) 'Universal pieces removed by toggle'
Assert ($toggled.SelectNodes('//ThingDef[defName="Apparel_leatherdogcollar"]').Count -eq 1) 'Toggle preserves collars'
$relics = $defs.CloneNode($true)
Apply-Operations $relics $toggle.SelectNodes('/Patch/Operation/operations/li[@Class="PatchOperationAdd"]')
Assert ($relics.SelectNodes('/Defs/ThingDef/relicChance[text()="0"]').Count -eq 9) 'Nine apparel bases excluded from relics'

# Local texture paths: exact case, shared graphics or per-animal directories.
$texturePaths = @($paths | Where-Object { $_ -match '(^|/)Textures/' } | ForEach-Object { $_ -replace '^.*?Textures/', '' })
foreach ($doc in $docs.Values) {
    foreach ($node in $doc.SelectNodes('//texPath | //wornGraphicPath')) {
        $path = $node.InnerText
        if (-not $path.StartsWith('Things/Pawn/Animal/Apparel/')) { continue } # Vanilla/external paths need the game database.
        $matches = @($texturePaths | Where-Object { $_ -ceq ($path + '.png') -or $_ -ceq ($path + '_east.png') -or $_.StartsWith($path + '/', [StringComparison]::Ordinal) })
        Assert ($matches.Count -gt 0) "Missing local texture path: $path"
    }
}
Write-Host "PASS: $script:checks checks. Game rendering, external types and full XML inheritance require RimWorld."
