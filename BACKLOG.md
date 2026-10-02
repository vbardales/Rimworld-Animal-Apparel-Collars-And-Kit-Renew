# Backlog

## Pull requests to the source repositories

PUBLISHING.md (2026-09-28) makes a pull request to every source repository systematic. Forks and PRs
are public: none is sent without Virginie's agreement.

- [x] Animal Equipment (PR sent 2026-10-02): `https://github.com/Owlchemist/animal-equipment` (MIT, last push 2023-03-01, not
  archived). Propose the 1.6 migration of the half left unfinished.
- [x] Animal Turret Packs (PR sent 2026-10-02): `https://github.com/flangopink/AnimalTurretPacks` (no licence found, last push
  2023-10-18, not archived). Ask the authors first, since no licence grants reuse; offer the `separateToggle`
  fix for the MVCF error.
- No repository found for Dog Collars, Patch Collar Malinois, Animal Diapers, Medieval Horse Plate Armour,
  RealisticAwesomeGoat (see `upstream_mod_remotes` in `STATUS.md`).

## Game gates left before `tested`

- Done 2026-10-02: shortcut (04), save hand-over (11), minimal-set pass (EN and FR), idle colony, with-Odyssey.
- Open: the seven incompatibility checks (05). The first run (8ddb11f) read the game log for "Adding duplicate" and
  found none; the greens of that run proved nothing. The scenarios now compare the defNames of the two mods' Defs
  files (e9ed862); reruns queued (dog-collars, malinois, goat, horse-plate, animal-equipment, diapers, turret-packs).
  If a mod shares no defName with this one any more, its `incompatibleWith` entry in About.xml is to be reviewed.
- Open: without-Odyssey half of the Odyssey pair (ticket f360); review captures redone (ticket 0979); staged gallery
  on the zenNelim studio (ticket 4fac, pass `wsl-deps.studio-gallery.map`), then crop and enlarge into `Art/gallery/`.

## PR preparation (2026-10-01)

Branches `add-rimworld-1.6` are committed locally in `C:\t\ae` (Animal Equipment, 278 files) and `C:\t\atp`
(Animal Turret Packs, 12 files), outside this repository. Drafts of the PR texts are in `docs/upstream-prs/`.
Sent 2026-10-02 with Virginie's agreement: flangopink/AnimalTurretPacks#1 and Owlchemist/animal-equipment (see the PR list below). Forks: vbardales/AnimalTurretPacks, vbardales/animal-equipment.

## Off-main-thread failures: asked Pickle Tools 2026-10-02, answered

"Accessing map pawns off main thread" at the first step that reads `map.mapPawns` after a save load, with Pickle's sim
ticking from pool threads (`SimSteps:53`, "Collection was modified", "Exception ticking hediff null for pawn Donkey").
Seen here in `Tests/Pickle/Evidence/sans-facultatifs-fr-bf865a3` (French, 16 of 17 failures; English of the same commit: 0)
and on 2026-09-28 (run 37ea). Ticket Manager also finds the message in the Player.log of ColorfulCoatsMegafaunaRenew
(2026-09-28-1ed4ab5-minimal-rerun), EponaInstrumentsRenew (2026-09-25-craft-nofilm), GeniusesCraftFastRenew
(minimal-en-e4fd722: 7 occurrences, English, run failed 1/8) and ImperialFurnishings (2026-09-28-studio), so it is not
French-specific. Known cause, workaround, or a PENDING.md line? Rerun of the French pass: ticket 2a0e.

Answer (Pickle Tools, 2026-10-02): known and intermittent, cause not established (`PickleTools/Upstream/PENDING.md` line 36: a scenario that loads
a save fails with this message 7-13 s after the load, Pickle's own steps only; first reported 2026-09-25 by Ebbbs Renew, no game stack).
No workaround; no link to language shown (the other four logs are English). A home-made step reading `Map.mapPawns` after an `await`
would fail the same way and be the step's fault: here the failing step is the synchronous spawn step right after load, and the only
async step (`RenderTreeDraws`) runs later, so the suite is not the likely cause. To diagnose, a run needs the game's own error line with its stack.
