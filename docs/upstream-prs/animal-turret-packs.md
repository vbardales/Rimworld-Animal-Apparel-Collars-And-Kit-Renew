# PR draft: flangopink/AnimalTurretPacks (not sent)

Target: `https://github.com/flangopink/AnimalTurretPacks`, branch `main` (last commit `c1c9852`, 2023-10-18).
Prepared branch: `add-rimworld-1.6`, commit on top of `c1c9852`, local clone `C:\t\atp` (outside this repo, 12 files).
Send with: `gh repo fork flangopink/AnimalTurretPacks --clone=false`, push the branch to the fork, `gh pr create`.

**Title:** Add a RimWorld 1.6 load folder on Animal Apparel: Framework

**Body:**

Hi, and thank you for these packs. I ported them to 1.6 inside a larger add-on collection and it seemed fairer to offer the port back to you than to keep a private variant.

Animal Gear has no 1.6 version; its replacement, Animal Apparel: Framework (`Ingendum.AnimalApparelFramework`), refuses to run next to it. So this adds a `1.6/` folder and leaves everything for 1.4 exactly as it is:

- `LoadFolders.xml` (new): `/` for 1.4 and 1.5, `1.6` for 1.6.
- `About/About.xml`: adds 1.6 to `supportedVersions`; the dependency, `loadAfter` and `incompatibleWith` lists move under per-version tags (1.4 values unchanged; 1.6 needs VEF and Animal Apparel: Framework and is incompatible with Animal Gear).
- `1.6/Defs/ThingDefs_AnimalGear/ThingDefs_AnimalTurretPacks.xml`: the eight packs, rewritten for the new framework: `Torso` -> `AnimalBody`, tags `AnimalApparel`/`AnimalOnly`/`AnimalInvisible` (the framework has no `AnimalALL`; no defName tag means any animal), no worn graphic (the turret is drawn by MVCF's `VerbComp_Turret`, and `emptyGear` came from Animal Gear), and `separateToggle` on the toggleable verbs so MVCF stops logging "a verb marked for an integrated toggle while that feature is not enabled" on every pack.
- `1.6/Defs/ResearchDefs/ResearchProjects_ATP.xml`: unchanged copy.
- `1.6/Textures/`: the same eight textures, byte for byte.

Testing, honestly: the XML is well-formed and the defs are the ones my collection ships. In that collection, with Animal Apparel: Framework and VEF on a headless 1.6 game, scenarios load the mod without errors, a muffalo wears a pack, and a pack deals damage to a hostile target. I have not run this exact folder layout as a standalone mod; if you would rather not carry a 1.6 branch I understand, and the same port is MIT-compatible for you to take from my repository: https://github.com/vbardales/Rimworld-Animal-Apparel-Collars-And-Kit-Renew

The repository has no licence file; I am asking by this PR, not assuming.
