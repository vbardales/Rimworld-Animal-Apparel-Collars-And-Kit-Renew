# Test scenarios

This mod has never been loaded by RimWorld. Everything below is what the first run has to settle.

**Why this is a matrix and not a checklist.** Almost nothing here is unconditional. The mod ships
**138 `MayRequire` guards**, **27 per-mod art folders** and **29 `LoadFolders` entries** gated on
other people's `packageId`s, and each of those is a branch that either fires or does not depending
on the modlist. A run with everything enabled exercises the art and hides the guards; a run with
nothing enabled exercises the guards and hides the art. Neither run alone says much. The two ends
plus four narrow cases in between cover it.

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
| `Could not find type named` | `DirectXmlToObject.ClassTypeOf` | A `Class="..."` that does not exist: the three renamed namespaces are `VEF.PatchOperationToggableSequence`, `GiddyUp.CompProperties_Overlay`, and MVCF's two. |
| `Failed to find any textures at` | `Graphic_Multi.Init` | A `texPath` with nothing behind it — the item's own icon, as opposed to its worn graphic. |

A clean run means **none of those naming an `Apparel_`, `diaper`, `AnimalNeck` or `AnimalGear`
identifier**. Lines naming other mods are not ours to fix, and are worth leaving in the paste.

---

## The six scenarios

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

- Tame or spawn a megaspider, a tortoise and a snake, and equip a collar on each.
- Each must accept it. Under the old framework this silently could not happen at all.
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

---

## Known and accepted

- **No flak or plate tier.** Basic Armor provides those. Their absence is the design, not a gap.
- **The goat rebalance from `[CSM]RealisticAwesomeGoat` was not taken** — only its mail. That mod
  set `baseBodySize` 7 and `combatPower` 500, which is a joke unrelated to equipment.
- **Three living mods were on the old framework.** Demigryphs Continued has since migrated; the two
  ArmoredAmpharos rat mods have not, and will stop working the day the switch is made. That is
  theirs to move, and `ATTRIBUTION.md` carries the recipe.
- **`Apparel_Saddle` is gone by that name**, renamed `Apparel_MedievalHorseSaddle`. A save that
  carried the old def from a source mod will lose the item, like any content mod removal.
