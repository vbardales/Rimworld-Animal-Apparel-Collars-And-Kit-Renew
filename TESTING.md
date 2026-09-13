# Test scenarios

This mod has never been loaded by RimWorld. The manual scenarios below remain unexecuted.

## Automated offline checks

Run from the repository root with PowerShell 7 (no game installation or extra modules needed):

```powershell
pwsh -NoProfile -File _tools/test-xml.ps1
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
& ./.build/tests/Settings.Tests.exe
```

Override RimWorldManaged/VefAssembly for the mod build and RimWorldManaged/VefDir
for the test build when installations differ. The executable accepts the game Managed
directory and VEF Assemblies directory as its first and second arguments.

The 30 assertions exercise defaults, all four existing Boolean combinations, exact
legacy keys, shared dictionary updates, reset without touching unrelated settings,
partial legacy data, the actual VEF adapter, native visibility inheritance, real
PatchOperation dispatch/removal/failure, and VEF's actual ExposeData/Scribe save/load
round-trip. They write a disposable file under .build/tests, never the user's Config.
DeepProfiler is disabled only in the test process because no game preferences exist.

The real MainButtonWorker.Visible/ModLister paths require Unity's ModsConfig startup;
attempting them in the console produced an engine ECall initialization error. No shim
is used to claim those interactions passed. The XML suite checks their flags/gates;
scenario K below covers actual game behavior. Remote CI currently runs XML checks only.

## Manual scenarios

**Why this is a matrix and not a checklist.** Almost nothing here is unconditional. The mod ships
**138 `MayRequire` guards**, **27 per-mod art folders** and **29 `LoadFolders` entries** gated on
other people's `packageId`s, and each of those is a branch that either fires or does not depending
on the modlist. A run with everything enabled exercises the art and hides the guards; a run with
nothing enabled exercises the guards and hides the art. Neither run alone says much. The two ends
plus four narrow cases in between cover that axis, as A to F.

**The other four are not about the modlist at all.** G to J test what a player does with the mod
rather than what loads: a restart with the gear on, adding and removing the mod on a live save,
the French text, and whether the armour numbers mean anything when something actually gets hit. A
to F are largely a smoke pass read out of the log; G to J are the functional half, and the only
place the mod is judged on what it does rather than on what it fails to break.

The one fault class that cannot be reasoned about offline is the render path. `wornGraphicPath` is
a **folder** under this framework, not a file, and every one of the ~1400 sprites was restructured
into the new per-animal layout. A wrong path is not a load error: it is a `Log.Error` at the moment
an animal is *drawn wearing the thing*. Only the game finds those.

---

## Load order

```
Ingendum.AnimalApparelFramework    Animal Apparel: Framework    3513825850   hard dependency
Ingendum.AnimalArmorBasic          Animal Apparel: Basic Armor               (scenarios A, F)
OskarPotocki.VanillaFactionsExpanded.Core   Vanilla Expanded Framework       (scenario E)
MemeGoddess.GiddyUp                Giddy-Up 2                               (scenario D)
CETeam.CombatExtended              Combat Extended                          (scenario F)
nelim.animalapparelcollarsandkitrenew       this mod                        always last
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
| `Adding duplicate` | `DefDatabase.Add` | A `defName` collision — with Basic Armor, or with one of the seven source mods left enabled. Must never appear. |
| `Patch operation` … `failed` | `PatchOperation.Complete` | The `AnimalNeck` body patch matched nothing. Expected count from this mod: **zero**. Both of its operations carry `<success>Always</success>`, so a genuine failure here means the framework changed shape. |
| `Could not resolve cross-reference` | `DirectXmlCrossRefLoader` | A `defName` pointing at nothing — a research prerequisite, a stuff category, or a tag naming a modded animal that a `MayRequire` failed to guard. |
| `Could not find type named` | `DirectXmlToObject.ClassTypeOf` | An unresolved type, including `AnimalApparelCollarsAndKit.PatchOperation_ApparelSetting`, `GiddyUp.CompProperties_Overlay`, or MVCF's comps. |
| `Failed to find any textures at` | `Graphic_Multi.Init` | A `texPath` with nothing behind it — the item's own icon, as opposed to its worn graphic. |

A clean run means **none of those naming an `Apparel_`, `diaper`, `AnimalNeck` or `AnimalGear`
identifier**. Lines naming other mods are not ours to fix, and are worth leaving in the paste.

---

## The ten scenarios

### A — the bare run: framework + this mod, nothing else

The most valuable single run, because it is what most subscribers will have, and because it is the
only one that tests the guards.

The framework resolves a tag like `defNameHusky` through
`DefDatabase<ThingDef>.GetNamed(defName, errorOnFail: true)`, from inside `CanEquipApparel`, which
the apparel optimisation pass calls **continuously, for every pawn**. An unguarded modded name in
that position is not one error: it is a stream. The 138 `MayRequire` attributes exist for exactly
this run.

- Start a colony, let it run a few in-game days with animals around, then read the log.
- **Zero `Could not resolve cross-reference`** naming an animal from a mod that is not loaded.
- No repeating error that grows while the game sits idle. That is the signature of the guard hole.
- The four research projects appear: `AnimalGear`, `AnimalRidingGear`, `ComplexAnimalClothing`,
  `PoweredAnimalArmor`.
- **No turret packs anywhere.** They are gated on Vanilla Expanded Framework, which is off here.
  Their absence is the pass condition, not a fault.
- With Basic Armor also enabled: no `Adding duplicate`. This mod deliberately declares the defs
  Basic Armor ships art for but never wrote, and deliberately does not declare its flak and plate.

### B — a dog: the slot, the layer, and the diaper

This is what `AnimalNeck` was added for. The framework gives animals three groups, and its own
patch puts the neck into `AnimalBody`, so a collar would otherwise compete with body armour for
one slot.

- Tame a husky. Equip `Apparel_leatherdogcollar` **and** a body piece at the same time. Both must
  stay on. If the game refuses the second, the `AnimalNeck` patch did not take.
- The collar must draw **above** the body piece, not under it. The four collars set
  `<drawData><defaultData><layer>` to 71 against the framework's single hard-coded 70; the bridle
  uses 72. If they stack in equip order instead, the override is not being read.
- Try a helmet and a collar together on the same dog: both must fit.
- `diaper` on any animal: filth output must drop. Check a stable's floor over a few days.
- Look at the animal on screen at each step. A missing worn graphic shows as
  `Failed to find graphic for` in the log and as nothing drawn on the dog.

### C — the neckless bodies

`BeetleLike`, `Snake` and `TurtleLike` have no Neck part, and vanilla refuses apparel whose body
part group the wearer's body does not carry. The patch's second half puts `AnimalNeck` on the
**head** for those.

- On a disposable development setup, use a test-only collar def that permits the chosen
  megaspider, tortoise and snake. The shipped dog collars restrict species and are not a valid
  way to test this body-group fallback. Do not ship the test def.
- Each must accept the test collar. Verify that shipped dog collars still reject these species.
- Then equip a helmet on the same animal: it must **also** fit. The fallback deliberately avoids
  `AnimalHead` so that a collar and a helmet do not exclude each other.
- Watch for `ANG_WrongBodyType` in the message log, the framework's own refusal string.

### D — the horse set, with Giddy-Up 2

- `Apparel_MedievalHorsePlate`, `Apparel_MedievalHorseHelmet` and `Apparel_MedievalHorseSaddle` on
  a horse, all three at once.
- `Apparel_bridle` with Giddy-Up enabled: mount the horse and ride. The overlay comp moved from
  `GiddyUpCore.CompProperties_Overlay` to `GiddyUp.CompProperties_Overlay` in 1.6 while the
  assembly kept its old name, so a `Could not find type named` here means the rename is wrong.
- The saddle was **renamed** from `Apparel_Saddle` because two other dead Animal Gear add-ons
  declare that name. Nothing should reference the old one.

### E — turret packs, with Vanilla Expanded Framework

Six packs and two grenade belts, strapped to any animal, through MVCF.

- Enable VEF. The packs now exist where scenario A had none.
- Fit one to a muffalo, draft the handler, and get the animal shot at. It must fire on its own.
- `MVCF.Comps.CompProperties_VerbGiver` and `MVCF.VerbComps.VerbCompProperties_Turret` are
  unchanged in 1.6, so a type error here means something else moved.
- The grenade belts on a small animal: check the explosion does not kill the wearer on the first
  throw.

### F — the full modlist: 21 animal mods, Basic Armor, Combat Extended

The run that exercises the 27 art folders and the ~1400 restructured sprites.

- Enable every animal mod this ships art for, and let a colony run with several of those species
  tamed and dressed.
- **`Failed to find graphic for` is the whole scenario.** Every occurrence names the def and the
  two paths it tried; each one is a folder that did not come across correctly.
- Spot-check the species whose art came from the *installed* version of Animal Equipment rather
  than its repository: the horse's six harness sprites and the redrawn cow scarf.
- With Combat Extended: the armour values on the animal's gear tab should be CE's, not vanilla's.
- For the gorilla regression, use merged VAE 1.6, the framework and this mod. First run
  without Odyssey: spawn AEXP_Gorilla and verify the diaper remains eligible. Repeat
  with Odyssey: let animals evaluate apparel and inspect the log; there must be no
  missing AEXP_Gorilla reference. This patch does not add eligibility for Odyssey's
  separate Gorilla Def. Repeat with a legacy provider supplying AEXP_Gorilla, if used,
  to verify that its existing eligibility is preserved.

---

### G — save, quit, reload, with the gear still on

Nothing in A to F survives a restart, because none of them does one. This mod has no per-save
data of its own, so the question is not whether it saves state but whether what the *game*
saved about its things comes back intact.

- Dress several animals across several def files at once: a collar and a body piece on a dog, the
  full horse set, a turret pack on something large, a scarf on a cow.
- Note the **material and the quality** of each piece before saving. Eight of the ten def files use
  `stuffCategories`, so every one of those is a stuffed item whose identity is base def plus stuff.
- Save, quit **to the desktop**, relaunch, load. Quitting to the main menu is not the same test:
  the def database is not rebuilt.
- Every piece must still be worn, by the same animal, in the same material and quality. Nothing
  dropped to the floor.
- The turret pack must still fire after the reload. Verbs are rebuilt from the comp on load, and
  that is where a verb quietly goes missing.
- The collar must still draw above the body piece. The `drawData` override is read at render time,
  so this re-tests it against a freshly built render tree.
- In the log, on load: no `Could not resolve cross-reference` naming one of this mod's defs. That
  is the shape a renamed def makes, and this mod renamed one — `Apparel_Saddle` became
  `Apparel_MedievalHorseSaddle`.

### H — adding and removing the mod on an existing save

The `About.xml` makes two claims to a subscriber. Both are testable and neither has been tested.

*Adding.* Take a colony saved without this mod, enable it, load.

- The save must load. The mod is content-only, so there is nothing to migrate.
- The four research projects appear, unresearched, in the right tab.
- Existing animals are unaffected until something is crafted and put on them.

*Removing.* From the G save, with gear worn and more of it in a stockpile, disable **only this
mod** and load.

- RimWorld's missing-def dialog must list this mod's defs and let the save open anyway.
- The worn and stored pieces are gone. That is the documented behaviour of any content mod, and
  the description says so.
- What matters is what comes **after** the dialog: the colony runs, the animals are fine, and the
  log does not fill with errors about the vanished items. A content mod that leaves a wound on
  removal is a content mod that should not be removed, and the description would then be wrong.

### I — English and French, including French on the Steam Deck

Seven French `DefInjected` files, 95 keys, and seven settings keys per language.
Run B, D and E in English, then repeat in French,
with VEF absent and present, and with the universal-apparel toggle in both states.

- The five research projects (including two optional VEF projects) and the research tab read in French.
- The apparel labels and descriptions read in French, on the item, in the gear tab and in the bill
  list at the workbench.
- The `AnimalNeck` group shows as **cou** in the coverage tooltip, not as `neck` and not as
  `AnimalNeck`.
- The turret packs, their eight MVCF command labels and tooltips read in French. Exercise
  both charge packs to verify the corrected `Blaster` identifier pairing.
- Check generated crafting bills, combat text, shield and equipment commands for English
  fallback, raw keys, formatting errors and clipping in both languages.
- Inspect both options under this mod's name, including help and disabled-state text.
  The controls are checkboxes; no English True/False or raw keys should appear. Check
  that VEF's own settings page no longer adds duplicate controls for this mod.
- An untranslated string shows in **English**. A string that shows as a raw key, or as the
  `defName`, means the injection path or the handle is wrong — a different fault, and the one to
  look for.

**Run this one on the Steam Deck, not only on Windows.** The path
`Languages/French/DefInjected/<DefType>/` is matched case-sensitively on Linux and not on NTFS. A
wrong capital is invisible on the desktop and silently drops the whole translation on the Deck.
This has bitten the collection before, and this mod has never run on either machine.

### J — the numbers, and one real hit

A tooltip is not a test. This scenario is in two halves and the second is the one that counts.

*What the tab says.* Craft the same piece in two very different materials — a leather collar and a
plasteel collar — and compare. Eight of the ten def files carry `stuffCategories`, so the
displayed value is the def's `statBases` multiplied by the material, and two identical numbers
mean the stuff is not being applied.

- Seven defs carry `ArmorRating_Sharp`, `_Blunt` and `_Heat`; check one of each tier against the
  def.
- The power armour takes `Insulation_Cold` 34 and `Insulation_Heat` 10 from its abstract base, the
  helmet 4 and 2 from its own. Those are the only insulating pieces; a scarf carries `Mass` alone
  and no insulation, which is deliberate and worth confirming rather than rediscovering.
- All 24 pieces carry a `Mass` and a `WorkToMake`. None should read zero.

*What actually happens.* Put armour on one animal and nothing on an identical one, and let both
take a hit from the same source.

- The armoured one must take measurably less. If the numbers show in the tab but the damage is
  identical, the apparel is not being counted as worn — which is exactly what the `AnimalNeck`
  group and the render tag could get wrong without any error line.
- With Combat Extended loaded, the values shown must be CE's, not vanilla's.

## Known and accepted

- **No flak or plate tier.** Basic Armor provides those. Their absence is the design, not a gap.
- **The goat rebalance from `[CSM]RealisticAwesomeGoat` was not taken** — only its mail. That mod
  set `baseBodySize` 7 and `combatPower` 500, which is a joke unrelated to equipment.
- **Three living mods were on the old framework.** Demigryphs Continued has since migrated; the two
  ArmoredAmpharos rat mods have not, and will stop working the day the switch is made. That is
  theirs to move, and `ATTRIBUTION.md` carries the recipe.
- **`Apparel_Saddle` is gone by that name**, renamed `Apparel_MedievalHorseSaddle`. A save that
  carried the old def from a source mod will lose the item, like any content mod removal.

### K — settings access, legacy persistence and optional shortcut

Status: unexecuted in game. Run on a disposable configuration/save in English and French.
Use the same built DLL as the technical tests and record its SHA-256, active packageIds,
versions, language, save and log path in the result. Keep the existing scenarios' results.

1. With Framework and this mod but **without VEF**, start a new colony. Expect no settings
   page under this mod's name, no shortcut Def, and no missing-assembly or patch errors.
2. Add VEF, with no customization mod. Open Mod options -> this mod's name. Expect the
   universal option off and relic exclusion on for missing saved keys. With legacy VEF
   settings, expect their exact previous values. Do not edit the user's real XML to test:
   prepare the choices using the old VEF UI on a disposable pre-update installation.
3. Toggle universal apparel on; close/reopen settings through the primary route. Expect
   the choice retained and help explicitly requiring restart. Restart the game: the five
   universal pieces should be absent while species-specific gear remains. Switch back and
   restart: the five pieces return. Verify both a new colony and a backed-up existing save;
   missing existing disabled items are expected, not a save-preserving conversion.
4. Without Relics and Artifacts, expect its option disabled with a translated explanation,
   retaining the stored choice. Add that integration and restart: option becomes usable.
   Test both values with a restart and new relic selection. Excluded bases must have
   relicChance zero when on, and their original values when off; existing relics stay intact.
5. Restore defaults; close, restart and reload. Expect off/on, with other VEF settings
   untouched. Repeat once with only one legacy key present in the disposable fixture.
6. Verify neither a visible nor a greyed-out shortcut exists on a clean configuration.
   Enable RIMMSQOL, record its exact version, reveal AA_CK_Settings, and open it. Expect the
   same native dialog, labels and values as Mod options. Edit through either route and
   reopen the other. Hide the shortcut, restart and check the customization choice remains.
   Any other customization mod requires a separate recorded run; none is implied tested.
7. At normal and narrow/Steam Deck resolutions, inspect both languages for clipping,
   scrolling, raw keys, English fallback and disabled-control behavior. Confirm changes
   cannot be made to the disabled relic checkbox. Check VEF's own panel for duplicates.
8. Inspect Player.log throughout startup, access, editing, saving, restart and reload.
   Expect no new exceptions, unresolved types or repeated errors attributable to this mod.

The technical Scribe test verifies serialization outside Unity. It does not certify
steps 1-8 or RIMMSQOL UI compatibility; record actual expected/observed outcomes here.
