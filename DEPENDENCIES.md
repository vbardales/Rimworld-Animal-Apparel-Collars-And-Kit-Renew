# Dependency verification — 2026-09-13

Audited payload: commit `7060c628a586c55551a8c9130ab9feb1a80ad657`, then the
local `Diaper_OptionalGorilla.xml` correction and its regression tests.
This is a source/assembly and XML audit, not a successful game session.

## Required and conditional providers

- `Ingendum.AnimalApparelFramework` (Workshop 3513825850) is the sole direct
  mandatory dependency and precedes this mod. Its About supports 1.6; its actual
  `1.6/Assemblies/AnimalGear.dll` defines `AnimalGear.AnimalApparelDefExtension`
  with the used `BodyDef showCoverageForBodyType` field. Harmony is declared by
  the framework itself; this mod does not directly use Harmony.
- `Ingendum.AnimalArmorBasic` is optional. No assembly reference requires it;
  the local texture checks establish the shipped apparel paths. Its loadAfter
  entry is ordering, not a missing mandatory dependency.
- `OskarPotocki.VanillaFactionsExpanded.Core` (2023507013, supports 1.6) gates
  the entire VEF folder, including settings DLL, MainButtonDef, operations and
  turrets. About orders it first. The installed MVCF assembly supplies
  `CompProperties_VerbGiver`, inherited `verbProps`, `VerbCompProperties_Turret`,
  inherited `graphic`/`drawScale`, and `VerbComp_Turret`. The settings build and
  30 assertions use the installed game and VEF assemblies.
- `MemeGoddess.GiddyUp` (3674332861, supports 1.6) gates its patch and precedes
  this mod. Its actual `1.6/Assemblies/GiddyUpCore.dll` supplies
  `GiddyUp.CompProperties_Overlay`, `overlayFront`, `graphicDataDefault`,
  `List<GraphicData> allVariants` and `Vector3 offsetDefault` as authored.
- `CETeam.CombatExtended` is optional and precedes the saddle patch. The
  [upstream About](https://github.com/CombatExtended-Continued/CombatExtended/blob/e2c8081c1a3e83a78415fa6b67d14daf13ebcc08/About/About.xml)
  declares that exact packageId and 1.6. At the same revision,
  `Defs/Stats/Stats_Apparel.xml`, `Stats_Basics_Inventory.xml` and
  `Stats_Pawns_Inventory.xml` define `WornBulk`, `Bulk` and `CarryBulk`.
  LoadFolders loads root Defs in 1.6. The actual saddle operations pass the XML
  fixture tests. This does not certify CE balance or turret behavior in combat.
- `VanillaExpanded.Ideo.RelicsAndArtifacts` (2564895018, supports 1.6) has the
  exact display name used by the relic gate. It declares Ideology and VEF itself.
  The operation modifies only this mod's apparel bases, after all Def XML is
  loaded; no additional ordering dependency on the relic mod is necessary.

SHA-256 of inspected third-party binaries (not redistributed):

| Assembly | SHA-256 |
| --- | --- |
| AnimalGear.dll | C4782E6C617E79D7997608330F92CB05AC05EB08C10E7754CC3DA3F6490E11CB |
| VEF.dll | 7F9011A739B6CFB69F6F87D3B8E861261802A53BF7DA9F905A830D32F335079E |
| MVCF.dll | D56B08B397EE9D628823DF0B2D4790BEE751008AB044183B4275CD5DC34F40E5 |
| GiddyUpCore.dll | E54C416CA81A1542A42577E9B13C36A79D054B28F5EB0B3B47AAEBD13C3CAB19 |

## Animal references and version selection

About metadata was indexed separately from scoped XML inspection. For each
installed matching animal provider, the selected version's Def XML was parsed
and compared with authored hyperlink values and applicable `defName` tags.
All 61 unconditional animal tags resolve in the installed Core ThingDefs.
The installed-provider comparison covers 27 folder/provider combinations, each
with and without Odyssey. It is not a simulation of every third-party patch or
animal-removal setting.

Version fallback was checked in the installed `Verse.ModContentPack.InitLoadFolders`:
an exact LoadFolders version wins, otherwise an earlier declared version can be
selected; without LoadFolders, version folders, Common and root are considered.
Old providers without declared 1.6 support are not represented as 1.6-certified.
Their presence does not create an unconditional dependency for this mod.

The one detected missing reference was `AEXP_Gorilla`: merged VAE supplies it in
`1.6NotOdyssey`, which is excluded with Odyssey. Odyssey's own Def is `Gorilla`.
The new patch removes only the unresolved legacy diaper tag when its ThingDef
is absent. It retains the tag when a standalone legacy provider supplies it.
Four fixtures cover Def present/absent and tag present/already filtered; unrelated
restrictions remain intact. This adds no new species or graphical support.

Rim-Effect is not installed locally. Its
[1.6 source snapshot](https://github.com/Rim-Effect-Renegade/RimEffect-Renegade-Core/tree/5fbb0b75f18e6f91e8278b4df5551420bade9bc2)
declares `RimEffectRenegade.Core`, supports 1.6, loads Common and 1.6, and defines
`RE_Varren` in the selected animal XML. The repository's main branch is older;
it was not used as evidence for 1.6 support.

LoadFolders aliases and MayRequire/MayRequireAnyOf are covered by the XML suite.
Not every obsolete alias is installed: the living replacement or merged provider
was checked where available. No full runtime compatibility claim is made for
old package variants, simultaneous conflicting providers, or third-party settings
that remove animals. These remain final integration scenarios, not additional
mandatory dependencies to add to About.

## Installed animal provider snapshots

The table lists metadata actually read, not recommended combinations. Version
ranges retain upstream declarations. Matching references were present except for
the Odyssey gorilla case corrected above.

| PackageId | Workshop ID | Declared versions |
| --- | --- | --- |
| Annabelesca.Malinois | 3058371446 | 1.2, 1.3, 1.4, 1.5, 1.6 |
| Atlas.AndroidTiers | 3270639973 | 1.0, 1.1, 1.2, 1.3, 1.5 |
| Erin.LizzardDoggo | 2527471245 | 1.2, 1.3, 1.4, 1.5, 1.6 |
| Erin.MountainDog | 2761001056 | 1.3, 1.4, 1.5, 1.6 |
| Erin.Palamutes | 2485624026 | 1.2, 1.3, 1.4, 1.5, 1.6 |
| kagypoo.YorkshireTerrors | 2275850226 | 1.0, 1.1, 1.2, 1.3, 1.4, 1.5 |
| kentington.saveourship2 | 1909914131 | 1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6 |
| OskarPotocki.VFE.Vikings | 2231295285 | 1.2, 1.3, 1.4 |
| Poetik.JapaneseDogs | 2192937058 | 1.0, 1.1, 1.2 |
| Qux.stray.dogs | 3549460027 | 1.6 |
| rtp.bordercollies | 2261957667 | 1.1, 1.2, 1.3, 1.4, 1.5, 1.6 |
| rtp.rhodesianridgebacks | 2076237940 | 1.1, 1.2, 1.3, 1.4, 1.5, 1.6 |
| sarg.alphaanimals | 1541721856 | 1.5, 1.6 |
| sarg.magicalmenagerie | 1821617793 | 1.4, 1.5 |
| SpankyH.BunRace.bundogs | 3784817124 | 1.5, 1.6 |
| SpankyH.BunRace.core | 2108324996 | 1.2, 1.3, 1.4, 1.5, 1.6 |
| VanillaExpanded.VAEAS | 1836900626 | 1.0, 1.1, 1.2, 1.3 |
| VanillaExpanded.VAEBF | 1895364938 | 1.0, 1.1, 1.2, 1.3 |
| VanillaExpanded.VAECD | 1823540489 | 1.0, 1.1, 1.2, 1.3 |
| VanillaExpanded.VAEEndAndExt | 2366589898 | 1.6, 1.4, 1.5 |
| VanillaExpanded.VanillaAnimalsExpanded | 2871933948 | 1.4, 1.5, 1.6 |
| zal.dumbsdachshunds | 3646509270 | 1.5, 1.6 |
| zal.forsakens | 3263003456 | 1.5, 1.6 |
| zal.wolvesden | 3379367192 | 1.5, 1.6 |
