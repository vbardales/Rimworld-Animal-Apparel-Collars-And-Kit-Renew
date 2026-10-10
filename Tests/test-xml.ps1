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
foreach ($file in Get-ChildItem (Join-Path $root 'Languages') -Recurse -Filter '*.xml' | Where-Object { $_.FullName -match '[\\/]DefInjected[\\/]' }) {
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
# Coverage is checked against authored text, not just existing translation keys.
# MVCF label pairs are identifiers; visualLabel and description are displayed text.
$textCount = 0
foreach ($def in $defs.SelectNodes('/Defs/*[defName]')) {
    foreach ($field in $def.SelectNodes('label | description')) {
        $key = $def.LocalName + ':' + $def.defName + '.' + $field.Name
        Assert ($keys.ContainsKey($key)) "Missing French text: $key"
        Assert (-not [string]::IsNullOrWhiteSpace($field.InnerText)) "Empty English text: $key"
        $textCount++
    }
    foreach ($prop in $def.SelectNodes('comps/li[@Class="MVCF.Comps.CompProperties_VerbGiver"]/verbProps/li')) {
        Assert ($def.SelectNodes('verbs/li').Count -eq 1) "Review MVCF verb mapping: $($def.defName)"
        Assert ($def.SelectSingleNode('verbs/li/label').InnerText -ceq $prop.label) "MVCF identifier mismatch: $($def.defName)"
        Assert ($prop.ParentNode.SelectNodes('li').Count -eq 1) "Review MVCF translation index: $($def.defName)"
        foreach ($field in @('visualLabel', 'description')) {
            $key = 'ThingDef:' + $def.defName + '.comps.Comp_VerbGiver.verbProps.0.' + $field
            Assert ($keys.ContainsKey($key)) "Missing French MVCF text: $key"
            Assert (-not [string]::IsNullOrWhiteSpace($prop.SelectSingleNode($field).InnerText)) "Empty English MVCF text: $key"
            $textCount++
        }
    }
}
Write-Host "Covered $textCount authored Def text fields in English and French."
# Keyed settings text is inventoried from the actual literal keys in the source.
$sourceRoot = Join-Path $PSScriptRoot '../Source'
$usedKeys = @([regex]::Matches((Get-Content (Join-Path $sourceRoot 'ApparelSettingsMod.cs') -Raw), '"(AA_CK_[A-Za-z]+)"') | ForEach-Object { $_.Groups[1].Value } | Sort-Object -Unique)
foreach ($language in @('English','French')) {
    $languageKeys = @{}
    foreach ($file in Get-ChildItem (Join-Path $root "Languages/$language/Keyed") -Filter '*.xml') {
        foreach ($node in (Read-Xml $file.FullName).SelectNodes('/LanguageData/*')) {
            Assert (-not $languageKeys.ContainsKey($node.Name)) "Duplicate $language Keyed key: $($node.Name)"
            Assert (-not [string]::IsNullOrWhiteSpace($node.InnerText)) "Empty $language key: $($node.Name)"
            Assert ($node.InnerText -notmatch '\{[^}]*\}|<[^>]+>') "Review parameters/rich text: $($node.Name)"
            $languageKeys[$node.Name] = $node.InnerText
        }
    }
    foreach ($key in $usedKeys) { Assert ($languageKeys.ContainsKey($key)) "Missing $language UI key: $key" }
    Assert ($languageKeys.Count -eq $usedKeys.Count) "Unused $language UI keys"
}
$button = $defs.SelectSingleNode('/Defs/MainButtonDef[defName="AA_CK_Settings"]')
Assert ($button.buttonVisible -ceq 'false') 'Shortcut is hidden by default'
Assert ($button.validWithoutMap -ceq 'true') 'Shortcut supports world view'
Assert ($button.workerClass -eq 'AnimalApparelCollarsAndKit.MainButtonWorker_ApparelSettings') 'Shortcut worker'
Assert ($paths.Contains('Mods/VEF/Defs/MainButtonDefs/ApparelSettings.xml')) 'Shortcut gated with VEF'
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
# VAE omits its gorilla when Odyssey is active. Check actual Def presence,
# including an already-filtered tag and a legacy provider alongside Odyssey.
$gorillaPatch = Read-Xml (Join-Path $root 'Patches/Diaper_OptionalGorilla.xml')
foreach ($present in @($true,$false)) {
    foreach ($tagPresent in @($true,$false)) {
        $animal = if ($present) { '<ThingDef><defName>AEXP_Gorilla</defName></ThingDef>' } else { '<ThingDef><defName>Gorilla</defName></ThingDef>' }
        $tag = if ($tagPresent) { '<li>defNameAEXP_Gorilla</li>' } else { '' }
        $fixture = [xml]"<Defs>$animal<ThingDef><defName>diaper</defName><apparel><tags><li>AnimalApparel</li><li>defNameBear_Grizzly</li>$tag</tags></apparel></ThingDef></Defs>"
        Apply-Operations $fixture $gorillaPatch.SelectNodes('/Patch/Operation')
        Assert ($fixture.SelectNodes('//tags/li[text()="defNameAEXP_Gorilla"]').Count -eq [int]($present -and $tagPresent)) "Gorilla tag: def=$present tag=$tagPresent"
        Assert ($fixture.SelectNodes('//tags/li[text()="AnimalApparel" or text()="defNameBear_Grizzly"]').Count -eq 2) 'Other diaper restrictions preserved'
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
Assert ($toggle.SelectNodes('//Operation[@Class="VEF.PatchOperationToggableSequence"] | //label | //enabled').Count -eq 0) 'No duplicate VEF controls or hardcoded UI labels'
Assert ($toggle.SelectNodes('/Patch/Operation[@Class="AnimalApparelCollarsAndKit.PatchOperation_ApparelSetting"]').Count -eq 2) 'Both settings use the localized adapter'
Assert ($toggle.SelectSingleNode('/Patch/Operation[option="ExcludeRelics"]/mods/li').InnerText -eq 'Vanilla Ideology Expanded - Relics and Artifacts') 'Relic integration gate'
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
