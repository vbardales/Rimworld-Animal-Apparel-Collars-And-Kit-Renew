# Functional test scenarios

One scenario per promised behaviour, with preconditions, actions, expected result (AUDIT.md 7.a). Setup, load order, log search, offline checks, Pickle passes, evidence live in [TESTING.md](TESTING.md). Scenarios not executed in game stay unverified.

## Manual scenarios

**Why matrix, not checklist.** Almost nothing unconditional. Mod ships
**138 `MayRequire` guards**, **27 per-mod art folders**, **29 `LoadFolders` entries** gated on
other people's `packageId`s. Each one a branch that fires or not depending on modlist. Run with everything enabled exercises art, hides guards. Run with
nothing enabled exercises guards, hides art. Neither alone says much. Two ends
plus four narrow cases between cover that axis, as A to F.

**Other four not about modlist at all.** G to J test what player does with mod,
not what loads: restart with gear on, adding/removing mod on live save,
French text, whether armour numbers mean anything when something actually gets hit. A
to F mostly smoke pass read from log; G to J functional half, only
place mod judged on what it does, not on what it fails to break.

One fault class cannot be reasoned about offline: render path. `wornGraphicPath` is
a **folder** under this framework, not a file, and every one of ~1400 sprites restructured
into new per-animal layout. Wrong path not a load error: it is a `Log.Error` at moment
animal *drawn wearing the thing*. Only game finds those.

---


## The ten scenarios

### A: the bare run: framework + this mod, nothing else

Most valuable single run: most subscribers will have it, and
only one that tests guards.

Framework resolves tag like `defNameHusky` through
`DefDatabase<ThingDef>.GetNamed(defName, errorOnFail: true)`, from inside `CanEquipApparel`, which
apparel optimisation pass calls **continuously, for every pawn**. Unguarded modded name in
that position not one error: a stream. The 138 `MayRequire` attributes exist for exactly
this run.

- Start colony, run few in-game days with animals around, then read log.
- **Zero `Could not resolve cross-reference`** naming animal from mod not loaded.
- No repeating error growing while game sits idle. Signature of guard hole.
- Four research projects appear: `AnimalGear`, `AnimalRidingGear`, `ComplexAnimalClothing`,
  `PoweredAnimalArmor`.
- **No turret packs anywhere.** Gated on Vanilla Expanded Framework, off here.
  Absence is pass condition, not fault.
- With Basic Armor also enabled: no `Adding duplicate`. Mod deliberately declares defs
  Basic Armor ships art for but never wrote, deliberately does not declare its flak and plate.

### B: a dog: the slot, the layer, and the diaper

Why `AnimalNeck` added. Framework gives animals three groups, its own
patch puts neck into `AnimalBody`, so collar would otherwise compete with body armour for
one slot.

- Tame husky. Equip `Apparel_leatherdogcollar` **and** body piece at same time. Both must
  stay on. If game refuses second, `AnimalNeck` patch did not take.
- Collar must draw **above** body piece, not under. Four collars set
  `<drawData><defaultData><layer>` to 71 against framework's single hard-coded 70; bridle
  uses 72. If they stack in equip order instead, override not read.
- Try helmet and collar together on same dog: both must fit.
- `diaper` on any animal: filth output must drop. Check stable floor over few days.
- Look at animal on screen each step. Missing worn graphic shows as
  `Failed to find graphic for` in log and as nothing drawn on dog.

### C: the neckless bodies

`BeetleLike`, `Snake`, `TurtleLike` have no Neck part, vanilla refuses apparel whose body
part group wearer's body does not carry. Patch's second half puts `AnimalNeck` on
**head** for those.

- On disposable development setup, use test-only collar def permitting chosen
  megaspider, tortoise, snake. Shipped dog collars restrict species, not valid
  way to test this body-group fallback. Do not ship test def.
- Each must accept test collar. Verify shipped dog collars still reject these species.
- Then equip helmet on same animal: must **also** fit. Fallback deliberately avoids
  `AnimalHead` so collar and helmet do not exclude each other.
- Watch for `ANG_WrongBodyType` in message log, framework's own refusal string.

### D: the horse set, with Giddy-Up 2

- `Apparel_MedievalHorsePlate`, `Apparel_MedievalHorseHelmet`, `Apparel_MedievalHorseSaddle` on
  horse, all three at once.
- `Apparel_bridle` with Giddy-Up enabled: mount horse and ride. Overlay comp moved
  from `GiddyUpCore.CompProperties_Overlay` to `GiddyUp.CompProperties_Overlay` in 1.6 while
  assembly kept old name, so `Could not find type named` here means rename wrong.
- Saddle **renamed** from `Apparel_Saddle` because two other dead Animal Gear add-ons
  declare that name. Nothing should reference old one.

### E: turret packs, with Vanilla Expanded Framework

Six packs and two grenade belts, strapped to any animal, through MVCF.

- Enable VEF. Packs now exist where scenario A had none.
- Fit one to muffalo, draft handler, get animal shot at. Must fire on its own.
- `MVCF.Comps.CompProperties_VerbGiver` and `MVCF.VerbComps.VerbCompProperties_Turret` are
  unchanged in 1.6, so type error here means something else moved.
- Grenade belts on small animal: check explosion does not kill wearer on first
  throw.

### F: the full modlist: 21 animal mods, Basic Armor, Combat Extended

Run exercising 27 art folders and ~1400 restructured sprites.

- Enable every animal mod this ships art for, let colony run with several of those species
  tamed and dressed.
- **`Failed to find graphic for` is the whole scenario.** Every occurrence names def and
  two paths tried; each one a folder that did not come across correctly.
- Spot-check species whose art came from *installed* version of Animal Equipment rather
  than its repository: horse's six harness sprites and redrawn cow scarf.
- With Combat Extended: armour values on animal's gear tab should be CE's, not vanilla's.
- For gorilla regression, use merged VAE 1.6, framework, this mod. First run
  without Odyssey: spawn AEXP_Gorilla, verify diaper remains eligible. Repeat
  with Odyssey: let animals evaluate apparel, inspect log; must be no
  missing AEXP_Gorilla reference. Patch does not add eligibility for Odyssey's
  separate Gorilla Def. Repeat with legacy provider supplying AEXP_Gorilla, if used,
  to verify its existing eligibility preserved.

---

### G: save, quit, reload, with the gear still on

Nothing in A to F survives restart, none does one. Mod has no per-save
data of its own, so question not whether it saves state but whether what *game*
saved about its things comes back intact.

- Dress several animals across several def files at once: collar and body piece on dog,
  full horse set, turret pack on something large, scarf on cow.
- Note **material and quality** of each piece before saving. Eight of ten def files use
  `stuffCategories`, so each is stuffed item whose identity is base def plus stuff.
- Save, quit **to desktop**, relaunch, load. Quitting to main menu not same test:
  def database not rebuilt.
- Every piece must still be worn, by same animal, same material and quality. Nothing
  dropped to floor.
- Turret pack must still fire after reload. Verbs rebuilt from comp on load, and
  that is where verb quietly goes missing.
- Collar must still draw above body piece. `drawData` override read at render time,
  so this re-tests it against freshly built render tree.
- In log, on load: no `Could not resolve cross-reference` naming one of this mod's defs. That
  is shape a renamed def makes, and this mod renamed one, `Apparel_Saddle` became
  `Apparel_MedievalHorseSaddle`.

### H: adding and removing the mod on an existing save

`About.xml` makes two claims to subscriber. Both testable, neither tested.

*Adding.* Take colony saved without this mod, enable it, load.

- Save must load. Mod content-only, nothing to migrate.
- Four research projects appear, unresearched, in right tab.
- Existing animals unaffected until something crafted and put on them.

*Removing.* From G save, with gear worn and more in stockpile, disable **only this
mod** and load.

- RimWorld's missing-def dialog must list this mod's defs and let save open anyway.
- Worn and stored pieces gone. Documented behaviour of any content mod, description says so.
- What matters is what comes **after** dialog: colony runs, animals fine, log
  does not fill with errors about vanished items. Content mod that leaves wound on
  removal should not be removed, and description would then be wrong.

### I: English and French, including French on the Steam Deck

Seven French `DefInjected` files, 95 keys, seven settings keys per language.
Run B, D, E in English, then repeat in French,
with VEF absent and present, and with universal-apparel toggle in both states.

- Five research projects (including two optional VEF projects) and research tab read in French.
- Apparel labels and descriptions read in French, on item, in gear tab, in bill
  list at workbench.
- `AnimalNeck` group shows as **cou** in coverage tooltip, not `neck`, not
  `AnimalNeck`.
- Turret packs, their eight MVCF command labels and tooltips read in French. Exercise
  both charge packs to verify corrected `Blaster` identifier pairing.
- Check generated crafting bills, combat text, shield and equipment commands for English
  fallback, raw keys, formatting errors, clipping in both languages.
- Inspect both options under this mod's name, including help and disabled-state text.
  Controls are checkboxes; no English True/False or raw keys should appear. Check
  VEF's own settings page no longer adds duplicate controls for this mod.
- Untranslated string shows in **English**. String showing as raw key, or as
  `defName`, means injection path or handle wrong, a different fault, the one to
  look for.

**Run this one on Steam Deck, not only Windows.** Path
`Languages/French/DefInjected/<DefType>/` matched case-sensitively on Linux, not on NTFS. Wrong capital invisible on desktop, silently drops whole translation on Deck.
Bitten the collection before, and this mod never ran on either machine.

### J: the numbers, and one real hit

Tooltip not a test. Scenario in two halves, second is the one that counts.

*What the tab says.* Craft same piece in two very different materials (leather collar and
plasteel collar) and compare. Eight of ten def files carry `stuffCategories`, so
displayed value is def's `statBases` multiplied by material, and two identical numbers
mean stuff not applied.

- Seven defs carry `ArmorRating_Sharp`, `_Blunt`, `_Heat`; check one of each tier against
  def.
- Power armour takes `Insulation_Cold` 34 and `Insulation_Heat` 10 from abstract base,
  helmet 4 and 2 from its own. Only insulating pieces; scarf carries `Mass` alone
  and no insulation, deliberate, worth confirming rather than rediscovering.
- All 24 pieces carry `Mass` and `WorkToMake`. None should read zero.

*What actually happens.* Put armour on one animal, nothing on identical one, let both
take hit from same source.

- Armoured one must take measurably less. If numbers show in tab but damage identical, apparel not counted as worn, exactly what `AnimalNeck`
  group and render tag could get wrong without any error line.
- With Combat Extended loaded, values shown must be CE's, not vanilla's.

## Known and accepted

- **No flak or plate tier.** Basic Armor provides those. Absence is design, not gap.
- **Goat rebalance from `[CSM]RealisticAwesomeGoat` not taken**, only its mail. That mod
  set `baseBodySize` 7 and `combatPower` 500, a joke unrelated to equipment.
- **Three living mods were on old framework.** Demigryphs Continued since migrated; two
  ArmoredAmpharos rat mods have not, will stop working day switch made. Theirs to move, and `ATTRIBUTION.md` carries recipe.
- **`Apparel_Saddle` gone by that name**, renamed `Apparel_MedievalHorseSaddle`. Save that
  carried old def from source mod loses item, like any content mod removal.

### K: settings access, legacy persistence and optional shortcut

Status: unexecuted in game. Run on disposable configuration/save in English and French.
Use same built DLL as technical tests, record its SHA-256, active packageIds,
versions, language, save, log path in result. Keep existing scenarios' results.

1. With Framework and this mod but **without VEF**, start new colony. Expect no settings
   page under this mod's name, no shortcut Def, no missing-assembly or patch errors.
2. Add VEF, no customization mod. Open Mod options -> this mod's name. Expect
   universal option off and relic exclusion on for missing saved keys. With legacy VEF
   settings, expect exact previous values. Do not edit user's real XML to test:
   prepare choices using old VEF UI on disposable pre-update installation.
3. Toggle universal apparel on; close/reopen settings through primary route. Expect
   choice retained and help explicitly requiring restart. Restart game: five
   universal pieces should be absent while species-specific gear remains. Switch back and
   restart: five pieces return. Verify both new colony and backed-up existing save;
   missing existing disabled items expected, not save-preserving conversion.
4. Without Relics and Artifacts, expect option disabled with translated explanation,
   retaining stored choice. Add that integration and restart: option becomes usable.
   Test both values with restart and new relic selection. Excluded bases must have
   relicChance zero when on, original values when off; existing relics stay intact.
5. Restore defaults; close, restart, reload. Expect off/on, other VEF settings
   untouched. Repeat once with only one legacy key present in disposable fixture.
6. Verify neither visible nor greyed-out shortcut exists on clean configuration.
   Enable RIMMSQOL, record exact version, reveal AA_CK_Settings, open it. Expect
   same native dialog, labels, values as Mod options. Edit through either route and
   reopen other. Hide shortcut, restart, check customization choice remains.
   Any other customization mod requires separate recorded run; none implied tested.
7. At normal and narrow/Steam Deck resolutions, inspect both languages for clipping,
   scrolling, raw keys, English fallback, disabled-control behavior. Confirm changes
   cannot be made to disabled relic checkbox. Check VEF's own panel for duplicates.
8. Inspect Player.log throughout startup, access, editing, saving, restart, reload.
   Expect no new exceptions, unresolved types, repeated errors attributable to this mod.

Technical Scribe test verifies serialization outside Unity. Does not certify
steps 1-8 or RIMMSQOL UI compatibility; record actual expected/observed outcomes here.