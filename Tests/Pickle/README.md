# Pickle suite: Animal Apparel: Collars and Kit Renew

Written, **never run**. Nothing here is a pass until a report says so (`exitReason` first).
Companion `nelim.animalapparelcollarsandkit.pickletests`. Launch only by filing a request
(`Rimworld-Ticket-Dispatcher/scripts/Submit-PickleRun.ps1`); never start RimWorld directly.
Put the tested SHA in `-Label`, and give a fresh `-EvidenceDir` under `Tests/Pickle/Evidence/`.

## Scope: only what a running game shows

| Feature | Why a game is needed |
| --- | --- |
| 01 bare dog collar | AnimalNeck slot accepts collar + body piece; render path (`Failed to find graphic for` appears at draw time only); `@review` capture of layer order |
| 02 horse set | Three pieces at once, Giddy-Up-free render path, cow scarf art from the released Animal Equipment |
| 03 turret packs (VEF) | Pack def loads and is wearable with VEF present |
| 04 settings shortcut | Hidden by default, revealed by RIMMSQOL, opens the settings; a clean bar never draws it |

Offline, not in Gherkin: XML patches and their branches, translation paths, settings values and
persistence (`_tools/test-xml.ps1`, `Tests/Program.cs`), the neckless-body fallback (patch applied to
bodies in the XML suite; a Pickle version would need a test-only collar def).

## Passes

| Pass | Command options | Runs |
| --- | --- | --- |
| minimal, English | none | 01, 02 (03, 04 skip by requirement) |
| minimal, French | `-Language French` | 01, 02, `@review` captures read in French |
| avec-vef | `-DepMap wsl-deps.avec-vef.map` | 01-03 |
| avec-rimmsqol | `-DepMap wsl-deps.avec-rimmsqol.map` | 04 |
| incompatible | not written | `incompatibleWith` (Dylan.AnimalGear and the seven sources): one pass each, asserting the symptom, still to write |

## Not yet written or not automatable, all `unverified`

- A pack actually firing, and the armour reducing a real hit (scenarios E and J of TESTING.md): needs
  hostile/combat steps that do not exist yet.
- Restart with gear worn (G) and removal of the mod from a save (H): needs a save handed between
  launches (`-Then`, `-ThenWithout`), not designed yet.
- Combat Extended, Giddy-Up 2, Basic Armor, and the 21 animal mods: Workshop ids not yet resolved in
  a map. Nothing is invented; add them to `wsl-deps.*.map` once read from the installed About files.
- The Odyssey gorilla regression (F): pass without `!ludeon.rimworld.odyssey`, not written.

## Assumptions to confirm on the first run

`I dress` / `is wearing` / `apparel covers` are documented for pawns by name; that they resolve an
animal spawned with `I spawn a "<kind>" pawn` under the name `Husky` is **not established**. The
first run decides; a failure there is a suite defect, not a mod defect.

## Passes added 2026-09-26 (all unrun, maps in this folder)

| Pass (`-DepMap wsl-deps.<name>.map`) | Mounts | Notes |
| --- | --- | --- |
| avec-animaux | VEF, Basic Armor, Giddy-Up 2, merged VAE and 16 animal mods, LoadAudit | dependencies of the animal mods not resolved: read the staged list |
| avec-animaux-vae-separes | same with the four separate VAE packs | exclusive with the merged pack |
| avec-ce | VEF, Combat Extended, LoadAudit | armour values would be CE's |
| avec-rimeffect, avec-rimeffect-renegade | Rim-Effect Core / Renegade | exclusive; packageIds unverified |
| avec-sos2, avec-androidtiers, avec-bunrace-core | one mod each | packageIds unverified, dependencies not resolved |
| incompat-\<name\> (8) | one declared-incompatible mod each | feature 05, symptom strings unverified |

Feature 06 (LoadAudit) plays in every pass whose map stages the tool. Run each pass in English and in French.
Skipped by requirement is not passed: check the counts.
Not written: the Odyssey gorilla pass (`!ludeon.rimworld.odyssey` vs with).

## Added later on 2026-09-26

- Feature 07: bodies without a Neck part, with a test-only collar (`Mod/Defs/ThingDefs/Pickle_TestNeckCollar.xml`).
- Feature 08 and the pass `avec-animaux-sans-odyssey`: the VAE gorilla with and without Odyssey. Play
  `avec-animaux` with the filter `'Animal Apparel: Collars and Kit Renew - Pickle tests,!@sans-odyssey'`.

## First run, 2026-09-26 (0dc8f18): red, and why

One scenario (husky collar), English, no pass map: `exitReason: failed`, 1 of 1 played. Message: "no pawn
nicknamed 'Husky'. player pawns present: Jet, Larson, Morrison". Pickle's `I dress` and `is wearing` resolve
player colonists by nickname; a spawned animal is neither a colonist nor named. This is a suite defect, not a mod
defect. Fix: `Source/AnimalSteps.cs` (built to `Mod/Pickle/Assemblies/AnimalApparelCollars.PickleSteps.dll`) adds
`Animal Apparel Collars: a tame "<kind>" named "<name>" exists at (x, z)`, `... "<name>" is dressed in "<def>"`,
`... "<name>" is wearing "<def>"` and `... "<name>" apparel covers "<group>"`, which find the animal on the map;
the features use them. Not yet run: whether the framework gives an animal an apparel tracker (the spawn step
fails saying so if not), and whether `Wear` accepts the pieces.

Later on 2026-09-26: `EnsureTrackers` now calls the framework's own `AnimalGearHelper.EnsureInitApparelTrackers`
(read in the decompiled `AnimalGear.dll`: the trackers are created for a player animal, and lazily), and feature 09
compares the damage two identical huskies take from repeated cuts (`ArmorUtility.GetPostArmorDamage`), one in
`Apparel_SmallAnimalPowerArmor`. Whether the core body part carries the `AnimalBody` group the armour covers is not
established; if the numbers are equal the scenario says so and the armour is not counted for that part.

## Second finding while waiting, 2026-09-27 (before 3d91's report): the three-collar scenario proved nothing

The dogbow/studded/shield scenario dressed all three in a row without checking or stripping between them.
All three declare `AnimalNeck` on the `OnSkin` layer, the same slot: each `Dress` silently replaced the
previous one, so only the last collar (shield) was ever worn, and its screenshot was the only real graphic
check. The other two were dressed, immediately dropped, and never verified. Not caught by any prior run.
Fixed: a new local step, `Animal Apparel Collars: "<name>" is stripped of its apparel` (Pickle's own "I strip"
resolves a player colonist only, the same lookup that failed on an animal before this file existed), used
between each dress so all three are actually worn and screenshotted in turn.
