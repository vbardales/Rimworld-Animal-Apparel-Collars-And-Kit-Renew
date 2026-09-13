# Changelog

## Unreleased — 2026-09-13

- Remove the diaper's legacy VAE gorilla restriction when that animal Def is absent,
  including VAE with Odyssey; preserve it when a legacy provider supplies the animal.
- Add a localized settings page under this mod's name when VEF is active, with a hidden,
  revealable MainButtons shortcut opening the same native dialog.
- Preserve both historical VEF setting keys and stored values. Changes apply after restart;
  reset affects only this mod's two options. Show the relic integration requirement.
- Replace the two English-only VEF toggle controls with English/French labels and help.
- Add settings behavior and real VEF/Scribe persistence tests; extend XML localization checks.
- Align the About/README notice and the About source link with the publication convention.

## 1.0.0 — 2026-09-07

First release. Six abandoned Animal Gear add-ons, plus the unfinished half of Animal Equipment,
migrated to Animal Apparel: Framework for RimWorld 1.6.

### Content

- **Dog Collars** by Shenanigans: neck bow, leather collar, studded collar, shield collar, for 78
  canines across 21 animal mods, with all 24 per-mod compatibility folders.
- **Patch Collar Malinois** by Annabelesca, folded into Dog Collars as one more compatibility
  folder. It was a verbatim copy of Dog Collars carrying a single extra animal, and shipped the same
  `defName`s — installing both silently overwrote one with the other.
- **Animal Diapers** by Dipsy.
- **Animal Turret Packs** by flangopink and ogam, gated on Vanilla Expanded Framework.
- **Medieval Horse Plate Armour** by Riful: barding, chanfron, saddle, Giddy-Up tack.
- **[CSM]RealisticAwesomeGoat** by CSM: the goat mail only. That mod's goat rebalance
  (`baseBodySize` 7, `baseHealthScale` 10, `combatPower` 500) is a joke unrelated to apparel and
  would overwrite other goat balancing, so it is not included.
- **Animal Equipment** by Owlchemist, after jptrrs (MIT): clothing, headwear, riding gear, power
  armour, the universal "placeholder" pieces, and the research chain. Its flak and plate tiers are
  deliberately absent — Animal Apparel: Basic Armor provides them.

### Migration

- `<li>Animal</li>` → `AnimalApparel` + `AnimalOnly`; bare animal names → `defNameXxx`;
  `AnimalALL` → no `defName` tags; `AnimalCUTOUTCOMPLEX` dropped, the framework detects masks itself.
- Body part groups `Torso`/`Neck`/`Legs`/`UpperHead`/`FullHead` → `AnimalBody`/`AnimalNeck`/
  `AnimalLegs`/`AnimalHead`.
- 1385 sprites restructured from flat `base_Animal_rot.png` into the per-animal folders the new
  framework resolves, each verified byte-for-byte against its source.
- Every modded animal tag gated with `MayRequire`. The framework resolves those tags through
  `DefDatabase<ThingDef>.GetNamed(name, errorOnFail: true)` on every apparel check, so ungated names
  would spam the log for anyone not running all 21 source mods.
- All 83 modded animal names located by scanning the installed Workshop collection for their
  `<defName>`, and the gates written from what actually declares them rather than from the ids the
  source mods named in 2022. Six mods have been republished under new packageIds since — Spidercamp's
  Dog Pack is now `Qux.stray.dogs`, the Dachshunds, Dire Wolves and Forsakens are now `zal.*`, Rim
  Effect has a Renegade edition, Bun Dog split — and fifteen `AEXP_` animals are also in the merged
  Vanilla Animals Expanded. Copying the old ids would have left a third of the animals silently
  unequippable and their art folders unloaded. Both ids are kept in each case.
- `AnimalFallbackInvisible` added where a mod allows more animals than it drew art for — 53 of the
  diaper's 57, and one collar wearer (`SCCaucasianshepherd`).

### New

- **`AnimalNeck`**, a fourth body part group, so collars stop sharing a slot with body armour. It is
  patched onto the neck of every non-human body, and onto the head of the bodies that have none
  (insects, snakes, turtles) — those could never wear a collar under the old framework at all.
- Collars draw at layer 71 and harnesses at 72 via `drawData`, instead of every piece of animal
  apparel stacking at the framework's single `baseLayer` of 70 in whatever order the animal wore
  them.
- French translation.

### Fixed, from the sources

- Dog Collars listed `SCNewfoundland`; Spidercamp's dog is `SCNewFoundland`, so the Newfoundland has
  never been able to wear a collar.
- Dog Collars' Endangered patch aimed three operations at abstract defs using `defName=` instead of
  `@Name`, so the thylacine and African wild dog never got their hyperlinks.
- Dog Collars' `LoadFolders.xml` gated the Arid Shrubland folder on the Boreal Forest packageId.
- Medieval Horse Plate Armour's Giddy-Up patch used `GiddyUpCore.CompProperties_Overlay`; Giddy-Up 2
  moved it to the `GiddyUp` namespace. It also gated on the display name "Giddy-Up! Core", which no
  longer exists, and passed a four-component value to a `Vector3`.
- Medieval Horse Plate Armour stripped the `Shell` layer off Owlchemist's shared
  `AnimalPlateArmorBase` so a saddle could go over the barding — reaching every plate armour in the
  game to fix one horse. The barding declares `Middle` and the saddle `Shell` here instead.
- Animal Equipment's toggle patch used `VFECore.PatchOperationToggableSequence`; VEF 1.6 renamed the
  namespace to `VEF`.
- Owlchemist shipped horse riding-gear sprites without ever adding `Horse` to the bridle's tags, so
  nothing could wear them. Added.
- The turret packs pointed `wornGraphicPath` at `Things/Pawn/Animal/Apparel/emptyGear`, a texture
  from Dylan's Animal Gear that no installed mod provides. They now carry `AnimalInvisible`, which
  is what they always meant: the turret is drawn by MVCF, not by the apparel renderer.

### Renamed

- `Apparel_Saddle` → `Apparel_MedievalHorseSaddle`. Two other dead Animal Gear add-ons declare
  `Apparel_Saddle`, and RimWorld says nothing when two mods claim one `defName`.
- The horse barding and chanfron are new defs (`Apparel_MedievalHorsePlate`,
  `Apparel_MedievalHorseHelmet`) rather than patches, because the defs they used to patch —
  Owlchemist's `Apparel_LargeAnimalPlateArmor` and `Apparel_LargeAnimalPlateHelmet` — no longer
  exist under the new framework.
