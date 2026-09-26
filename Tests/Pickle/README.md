# Pickle suite: Animal Apparel: Collars and Kit Renew

Written, **never run**. Nothing here is a pass until a report says so (`exitReason` first).
Companion `nelim.animalapparelcollarsandkitrenew.pickletests`. Launch only by filing a request
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
