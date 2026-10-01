# PR draft: Owlchemist/animal-equipment (not sent)

Target: `https://github.com/Owlchemist/animal-equipment`, branch `master` (last commit `532e91a`, 2023-03-01).
Issues are disabled on that repository, so a PR is the only channel. Prepared branch: `add-rimworld-1.6`, one commit on top of
`532e91a`, local clone `C:\t\ae` (outside this repo, 278 files, 2.8 MB of textures).
Send with: `gh repo fork Owlchemist/animal-equipment --clone=false`, push the branch, `gh pr create`.

**Title:** Add a RimWorld 1.6 load folder on Animal Apparel: Framework

**Body:**

Hi Owlchemist, and thank you for Animal Equipment (and the MIT licence, which made this possible). Animal Gear has no 1.6 version; Animal Apparel: Framework (`Ingendum.AnimalApparelFramework`) replaced it and cannot run next to it. I ported the part of your mod that Animal Apparel: Basic Armor does not cover, and I would like to offer it back.

The 1.3/1.4 content is untouched. `LoadFolders.xml` gains a `v1.6` entry; `About.xml` adds 1.6 and moves its dependency and `loadAfter` lists under per-version tags (old values unchanged; 1.6 needs Animal Apparel: Framework, loads after Basic Armor, and is incompatible with Animal Gear).

`1.6/` contains:
- Clothing, headwear (scarf) and riding gear, and the spacer power armour, with their research projects (same defNames, so saves keep their research). Flak and plate are left to Basic Armor, which already ports them; `PoweredAnimalArmor` hangs off vanilla `PoweredArmor` plus `ComplexAnimalClothing` instead of the removed `FlakAnimalArmor`.
- An `AnimalNeck` body part group (and its patch onto animal bodies) so collars, clothes and riding gear can coexist.
- The textures (276 files), restructured from `clothes_<Animal>_<rot>.png` into the per-animal folders the new framework resolves. The six horse riding-gear sprites and the redrawn cow scarf come from the released Workshop item; they never reached this repository.

Not included: the per-mod sprite folders under `Mods/` (Dinosauria, Spider Camps' dogs, VAE Dinosauria, Alpha Animals, VFE Vikings). They are a follow-up if you want this folder.

Testing, honestly: all XML is well-formed. The same defs run in my collection on a headless 1.6 game (framework, VEF, Basic Armor present): the mod loads with no error attributed to it and the clothing, scarf, armour and riding pieces are worn and drawn on test animals. I have not run this exact folder layout as a standalone Animal Equipment. My collection: https://github.com/vbardales/Rimworld-Animal-Apparel-Collars-And-Kit-Renew
