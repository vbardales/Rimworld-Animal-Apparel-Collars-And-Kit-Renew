# Testing

This mod has never been loaded by RimWorld. The manual scenarios below remain unexecuted.

## Automated offline checks

Run from the repository root with PowerShell 7 (no game installation or extra modules needed):

```powershell
pwsh -NoProfile -File Tests/test-xml.ps1
```

The same command runs on Linux in `.github/workflows/xml-tests.yml` for pushes and pull requests.
Failures return a nonzero exit code. The suite checks all XML parses and roots, metadata,
case-sensitive load folder paths, conditional package aliases, duplicate definitions,
French translation targets and duplicate keys, XPath syntax, and local apparel texture paths.
It also checks coverage of 95 authored Def text fields, the matching MVCF verb
identifiers, seven English/French settings keys and the VEF-gated hidden shortcut.
It applies the actual neck patch to bodies with/without a neck and existing groups, preserving
human and unmatched bodies; tests CE saddle edits; tests Giddy-Up with/without an existing overlay;
and exercises universal-apparel removal, relic exclusions, and compatibility hyperlink patches.
It also checks the legacy gorilla diaper tag with the animal Def and tag independently
present/absent, preserving unrelated restrictions.
Only the inherited `descriptionHyperlinks` field is materialized for the hyperlink checks.

These XML tests do not run RimWorld's loader, full inheritance, VEF settings, or rendering.
Texture existence does not establish per-species coverage, direction completeness, or appearance.
External reference and assembly inspection is recorded in DEPENDENCIES.md. Real
modlist loading and integration behavior remain game checks.

### Settings tests with installed assemblies

On Windows with RimWorld 1.6, VEF and .NET SDK installed:

```powershell
dotnet build Tests/Settings.Tests.csproj -c Release
& ./build/tests/Settings.Tests.exe
```

Override RimWorldManaged/VefAssembly for the mod build and RimWorldManaged/VefDir
for the test build when installations differ. The executable accepts the game Managed
directory and VEF Assemblies directory as its first and second arguments.

The 30 assertions exercise defaults, all four existing Boolean combinations, exact
legacy keys, shared dictionary updates, reset without touching unrelated settings,
partial legacy data, the actual VEF adapter, native visibility inheritance, real
PatchOperation dispatch/removal/failure, and VEF's actual ExposeData/Scribe save/load
round-trip. They write a disposable file under build/tests, never the user's Config.
DeepProfiler is disabled only in the test process because no game preferences exist.

The real MainButtonWorker.Visible/ModLister paths require Unity's ModsConfig startup;
attempting them in the console produced an engine ECall initialization error. No shim
is used to claim those interactions passed. The XML suite checks their flags/gates;
scenario K below covers actual game behavior. Remote CI currently runs XML checks only.

## Functional scenarios

The manual scenarios A to K, with preconditions, actions and expected results, are in [TEST_SCENARIOS.md](TEST_SCENARIOS.md).

## Load order

```
Ingendum.AnimalApparelFramework    Animal Apparel: Framework    3513825850   hard dependency
Ingendum.AnimalArmorBasic          Animal Apparel: Basic Armor               (scenarios A, F)
OskarPotocki.VanillaFactionsExpanded.Core   Vanilla Expanded Framework       (scenario E)
MemeGoddess.GiddyUp                Giddy-Up 2                               (scenario D)
CETeam.CombatExtended              Combat Extended                          (scenario F)
nelim.animalapparelcollarsandkit       this mod                        always last
```

**Dylan's Animal Gear must be OFF in every scenario.** The framework itself declares
`<incompatibleWith>Dylan.AnimalGear</incompatibleWith>`; this mod is what the switch costs. So must
the seven source mods, which declare the same `defName`s and are listed in this mod's own
`incompatibleWith`.

## What to search the log for

`Player.log` sits in
`%USERPROFILE%\AppData\LocalLow\Ludeon Studios\RimWorld by Ludeon Studios\Player.log`.

| String in the log | Written by | What it would mean for this mod |
|---|---|---|
| `Failed to find graphic for` | the framework's `RenderHelpers.TryGetGraphicApparelForAnimal` | **The fault this mod is most exposed to.** Read out of `AnimalGear.dll`; the full line ends `at either <A> or <B> and AnimalFallbackInvisible was not set!`. Means a restructured texture folder is wrong, or an animal has no art and no fallback tag. |
| `Adding duplicate` | `DefDatabase.Add` | A `defName` collision: with Basic Armor, or with one of the seven source mods left enabled. Must never appear. |
| `Patch operation` … `failed` | `PatchOperation.Complete` | The `AnimalNeck` body patch matched nothing. Expected count from this mod: **zero**. Both of its operations carry `<success>Always</success>`, so a genuine failure here means the framework changed shape. |
| `Could not resolve cross-reference` | `DirectXmlCrossRefLoader` | A `defName` pointing at nothing: a research prerequisite, a stuff category, or a tag naming a modded animal that a `MayRequire` failed to guard. |
| `Could not find type named` | `DirectXmlToObject.ClassTypeOf` | An unresolved type, including `AnimalApparelCollarsAndKit.PatchOperation_ApparelSetting`, `GiddyUp.CompProperties_Overlay`, or MVCF's comps. |
| `Failed to find any textures at` | `Graphic_Multi.Init` | A `texPath` with nothing behind it: the item's own icon, as opposed to its worn graphic. |

A clean run means **none of those naming an `Apparel_`, `diaper`, `AnimalNeck` or `AnimalGear`
identifier**. Lines naming other mods are not ours to fix, and are worth leaving in the paste.

---

## Criteria for `tested` (AUDIT.md, 2026-09-26)

- No scenario left `@wip`: repaired and replayed, or deleted with its reason.
- Every conditional scenario (`@requires:<packageId>`) has run, with a pass map that mounts that mod;
  a skipped scenario is not a passed one.
- No manual test left to validate: each of A-K is automated and green, or listed as not applicable with its reason.
- Pickle suites run and green, `@review` captures opened, `exitReason` read before the numbers.

## Evidence to keep

Evidence lives on disk (`Tests/Pickle/Evidence/`, `evidence/`), ignored by git. Per scenario, keep the
newest run for the revision now in the repository, plus an older run only when it is the sole proof of a
check the newest did not repeat (2026-10-01: `avec-rimmsqol-245178a` for the shortcut scenario,
`removal-24dc240` for the removal write). A kept run keeps `summary.md`, `summary.json`, a `junit.xml`
under 1 MB, `Player.log` when it proves a check, and the `@review` screenshots that prove a claim.
`report.html` and `messages.ndjson` are deleted once `exitReason` and the counts are read (same data,
up to 80 MB). A red run replaced by a newer one is deleted whole. Never delete a run a `STATUS.md`
field points at: repoint it first. One text line per run goes in `docs/runs/`.

## Pickle suite (2026-09-26)

Written in `Tests/Pickle/` (see its README): four features, passes minimal EN/FR, avec-vef,
avec-rimmsqol. Never run. It covers the render path, the AnimalNeck slot, the horse set, a turret pack
worn, and the hidden shortcut. Scenarios E (firing), G (restart), H (removal) and J (a real hit) are
not automated yet and remain `unverified`; A-K therefore still count as manual tests to close before `tested`.
