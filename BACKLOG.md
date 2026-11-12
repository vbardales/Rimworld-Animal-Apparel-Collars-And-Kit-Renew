# Backlog

## Pull requests to the source repositories

PUBLISHING.md (2026-09-28) makes pull request to every source repository systematic. Forks and PRs public: none sent without Virginie's agreement.

- [x] Animal Equipment (PR sent 2026-10-02): `https://github.com/Owlchemist/animal-equipment` (MIT, last push 2023-03-01, not archived). Propose 1.6 migration of half left unfinished.
- [x] Animal Turret Packs (PR sent 2026-10-02): `https://github.com/flangopink/AnimalTurretPacks` (no licence found, last push 2023-10-18, not archived). Ask authors first, no licence grants reuse; offer `separateToggle` fix for MVCF error.
- No repository found for Dog Collars, Patch Collar Malinois, Animal Diapers, Medieval Horse Plate Armour, RealisticAwesomeGoat (see `upstream_mod_remotes` in `STATUS.md`).

## Game gates left before `tested`

- Done 2026-10-10 (79998ce): six incompatibility checks green, review scenarios green, French idle and Odyssey rerun green.
- Done 2026-10-10: Horse_Plate_Armour removed from incompatibleWith (owner decision, load audit green).
- Open: without-Odyssey half of Odyssey pair, red 4 times: test-colony saved with Odyssey, cannot load without it; scenario rewritten without save, rerun submitted.
- Open: staged gallery on zenNelim studio (ticket 4fac, pass `wsl-deps.studio-gallery.map`), then crop and enlarge into `Art/Gallery/` (shootGallery).

## PR preparation (2026-10-01)

Branches `add-rimworld-1.6` committed locally in `C:\t\ae` (Animal Equipment, 278 files) and `C:\t\atp` (Animal Turret Packs, 12 files), outside this repository. PR text drafts in `docs/upstream-prs/`. Sent 2026-10-02 with Virginie's agreement: flangopink/AnimalTurretPacks#1 and Owlchemist/animal-equipment (see PR list below). Forks: vbardales/AnimalTurretPacks, vbardales/animal-equipment.

## Off-main-thread failures: asked Pickle Tools 2026-10-02, answered

"Accessing map pawns off main thread" at first step reading `map.mapPawns` after save load, Pickle's sim ticking from pool threads (`SimSteps:53`, "Collection was modified", "Exception ticking hediff null for pawn Donkey"). Seen in `Tests/Pickle/Evidence/sans-facultatifs-fr-bf865a3` (French, 16 of 17 failures; English same commit: 0) and 2026-09-28 (run 37ea). Ticket Manager also finds message in Player.log of ColorfulCoatsMegafaunaRenew (2026-09-28-1ed4ab5-minimal-rerun), EponaInstrumentsRenew (2026-09-25-craft-nofilm), GeniusesCraftFastRenew (minimal-en-e4fd722: 7 occurrences, English, run failed 1/8) and ImperialFurnishings (2026-09-28-studio), so not French-specific. Known cause, workaround, or PENDING.md line? Rerun of French pass: ticket 2a0e.

Answer (Pickle Tools, 2026-10-02): known, intermittent, cause not established (`PickleTools/Upstream/PENDING.md` line 36: scenario loading save fails with message 7-13 s after load, Pickle's own steps only; first reported 2026-09-25 by Ebbbs Renew, no game stack). No workaround; no link to language shown (other four logs English). Home-made step reading `Map.mapPawns` after `await` would fail same way, step's fault: here failing step is synchronous spawn step right after load, only async step (`RenderTreeDraws`) runs later, so suite likely not cause. To diagnose, run needs game's own error line with stack.

## Local steps to retire (PickleTools answer, 2026-10-11)

- `Animal Apparel Collars: the camera is centered on X` and `... framed tight on X` replaceable by PickleTools CameraZoom `the camera is centered on {string} at root size {float}` (colonist or animal), tick wait by `I let {int} frames pass`. Needs `nelim.pickletools.camerazoom` in maps of review scenarios (avec-vef at least) and replay of those scenarios: after settings tickets, not before.
- Animal spawn, dress, wear, health steps and Mod options steps stay local until second mod needs them (PickleTools rule: one consumer stays local).
## TODO: upstream pull requests (missions item 22, 2026-11-12)

Each PR needs Virginie's go for that PR, goes through the fork branch, follows the closed-PR process (gh pr list --author "@me" --state all, rebase the fork branch on upstream main, reopen or open linking the old one).

- [x] Animal Equipment: PR Owlchemist/animal-equipment#1 reopened 2026-11-12 (Virginie go, chat) with a wording commit (a2349b0) on vbardales:add-rimworld-1.6; the laid-back fix belongs to our own mod only, not in the PR.
- [x] Animal Turret Packs: PR flangopink/AnimalTurretPacks#1 reopened 2026-11-12 (Virginie go, chat) with a wording commit (81e22ed) on vbardales:add-rimworld-1.6.
- [ ] 1.6 update PR to each upstream after a green playTests on 1.6 (PRs of 2026-10-02 to check: state, closed for inactivity?).
- [ ] 1.7 update PR to each upstream, only after a green 1.7 run (tested_1_7: yes).

## TODO: Medieval Horse Plate Armour (Horse_Plate_Armour, 2586212684), decided 2026-11-12

Owner (chat): ask the author first (a); if he refuses, declare it incompatible (c). Until then nothing changes in Mod/ (coexistence load audit 7800 green, no shared defName, entry removed from incompatibleWith on 2026-10-10).

- [ ] Virginie posts the message below on the Workshop page (nothing sent outward by the session). Fallback (c) if he refuses or does not answer: add `Horse_Plate_Armour` to `incompatibleWith`, fix "six of the seven source mods" in About, PUBLICATION and README, rework feature 13, replay the tests.

Message (English, Workshop comment):

> Hello, and thank you for the horse plate armour. Animal Gear has no 1.6 version; its replacement is Animal Apparel: Framework, which refuses to run next to it. Your mod depends on Dylan.AnimalGear, so it cannot load in a 1.6 game that uses the Framework. I maintain an unofficial port that merges several Animal Gear add-ons, "Animal Apparel: Collars and Kit Renew" (package id nelim.animalapparelcollarsandkit), which already works with the Framework. Could you add that package id next to Dylan.AnimalGear in your dependencies and loadAfter, or tell me if you would rather I do not support your mod? Both mods load together cleanly in my tests (no shared defName).
