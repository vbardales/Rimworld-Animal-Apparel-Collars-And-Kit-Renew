---
settings_audit: complete
rights_audit: complete
modicon_audit: partial
preview_audit: partial
automated_tests: complete
xml_tests: complete
localization: complete
translation_en: complete
translation_fr: complete
mod:          Animal Apparel: Collars and Kit Renew (unofficial)
packageId:    nelim.animalapparelcollarsandkit
repo:         Rimworld-Animal-Apparel-Collars-And-Kit-Renew
remote:       https://github.com/vbardales/Rimworld-Animal-Apparel-Collars-And-Kit-Renew.git
visibility:   public
detached:     yes
workflow_stage: playTests[1.0.0]
social_preview_sha256: 07bf3e5a8a0333c0c2bf823e920ddf02b1b140a6ae9b9cd404ec3e3e170dbb7d
licence:      silent
licence_at:   MIT limited to own contributions and Animal Equipment; six other sources classified silent from documented inactive maintenance; no reuse permission inferred; see ATTRIBUTION visibility decision 2026-09-13
upstream_mod_remotes:
  - Dog Collars, Shenanigans: N/A (no <url> in the installed About.xml, checked 2026-09-28)
  - Patch Collar Malinois, Annabelesca: N/A (no <url> in the installed About.xml, checked 2026-09-28)
  - Animal Diapers, Dipsy: N/A (no repository named in ATTRIBUTION.md; package no longer installed to recheck About.xml)
  - Animal Turret Packs, flangopink and ogam: https://github.com/flangopink/AnimalTurretPacks (per ATTRIBUTION.md, not archived, no licence detected, last commit c1c9852 2023-10-18; pull request sent 2026-10-02)
  - Medieval Horse Plate Armour, Riful: N/A (no <url> in the installed About.xml, checked 2026-09-28)
  - RealisticAwesomeGoat, CSM: N/A (no <url> in the installed About.xml, checked 2026-09-28)
  - Animal Equipment, Owlchemist (after jptrrs): https://github.com/Owlchemist/animal-equipment (MIT; pull request sent 2026-10-02)
dependencies: declared
upstream_synced: 2026-11-12 AnimalTurretPacks@c1c9852; animal-equipment@532e91a
showcase:     partial
tested_on:    2026-10-29 (tickets b86c settings French and f655 load audit French green on 1257b7e; EN and earlier runs in Tests/Pickle/Evidence)
workshop:     3806765840 (private 0.1.0 prepublication, 2026-09-23, from the game's upload button)
code_review_sha: 257f13e193592cb108c03c3c9dbfdb9e902b3683
  - "2026-10-12: unverified: Preview re-rendered with Art/echo-source.png (preSized, panelWidth 34, panelTop 8): the echo no longer crosses the title block, it touches the end of the word turret in the copy; Mod/About/Preview.png and Art/Gallery/0-preview.png identical; Preview 268 px reading and echo_review_sha stay for mountPreview"
remaining:
  - "2026-11-12: done: Virginie validated the translation review (chat, \"je valide la review\"), revision 3c9f8d3, TRANSLATION_REVIEW.md as committed; translation_fr complete. Upstream PR go still pending per PR"
  - "2026-11-12: done: upstream sync via gh (no clone): flangopink/AnimalTurretPacks head c1c9852 (2023-10-18) and Owlchemist/animal-equipment head 532e91a (2023-03-01), both older than the port, nothing new to integrate; the five other sources have no git repository (Workshop only, per upstream_mod_remotes): not compared, packages not installed. 1.6 and 1.7 upstream PRs each need her go, via fork branch, listed in BACKLOG TODO"
  - "2026-11-12: done: ChatGPT translation review (4 passes, last one clean at 4e308f8, TRANSLATION_REVIEW.md frozen): English wording fixes (high-tech, laid-back, riding designs, large turret packs, that controls, Settings help strings), Thanks list explicit, PUBLICATION wording; three refusals in Docs/review-refusals.md; translation_fr pending_review until Virginie validates. Upstream PRs (Animal Turret Packs: turret pack wording; Animal Equipment: riding, high-tech, laid-back): prepare fork branches only, open nothing until her go per PR (missions 21b, 21c). Check-Translations FAIL 67 findings (French keys for defs the load state does not load, VEF folder defs): not touched, to look at with Audit. replay-audit not run yet"
  - "2026-11-12: read: ticket 9a0d green 5 of 5 (15b66cb, Inbox review-close-15b66cb, 7 captures opened): fox red collar and blue helmet, horse purple barding gold chanfron green saddle, cow red scarf, husky collars (bow pink, shield brown, studded blue, reload blue) all readable, animal framed close, no tooltip, no HUD; verdict accept for 8.d (colonist in frame is Jet, test colony, not a gallery shot). Muffalo ticket ffe0: Inbox review-muffalo-052d081 holds 0 scenarios, no capture: state to check with the TM (check-tickets), refile on the new DLL if gone. Folders stay until ffe0 is settled, then Prune-Evidence. Next: 8.i, 8.k, Mod options settings check, 8.n; nsb-sync warn 2026-11-12 (run sync-nsb-npt before shootGallery); social_preview_sha256 stale (upload at publish)"
  - "2026-11-09 22:47: waiting: f014 RED exit 8, 0 played: the filter split on a comma inside the horse title (barding, chanfron) and pieces without :: were read as suite names, nothing matched; refiled as ticket 9a0d on 15b66cb with five ::title pieces (no comma), wsl-deps.review.map, Inbox review-close-15b66cb; ffe0 (muffalo) still queued. Tree frozen for features 01, 02, 03, 10."
  - "2026-11-09 18:55: note: PiT (via TM) found the cause of the undefined step: stale 1.7 ScreenshotStudio DLL (no CameraOrthoSteps), rebuilt and deployed (22a3bc1); f014 and ffe0 already queued, they use the new DLL; no refile of 036f, 15f5, 647d needed. Older: 2026-11-09 18:44: waiting: 15f5 and 647d RED (undefined step held at {float}/{int}); causes: int literals 3 and 5 (now 3.0, 5.0) and no ScreenshotStudio in the DepMap (new wsl-deps.review.map, avec-vef.map completed); refiled on 052d081: f014 (five review scenarios, wsl-deps.review.map, Inbox review-close-052d081) and ffe0 (muffalo, wsl-deps.avec-vef.map, Inbox review-muffalo-052d081). Tree frozen for features 01, 02, 03, 10. Older: 2026-11-09 17:38: 036f RED (undefined step: hold step must be Given, not When or And; also its filter @review ran the 7 gallery scenarios, skipped); 1588 cancelled; refiled on effc47d with Given and exact scenario titles: 15f5 (five review scenarios, Inbox review-close-effc47d) and 647d (muffalo, avec-vef, Inbox review-muffalo-effc47d). Tree frozen for features 01, 02, 03, 10. If the step is still undefined: send PiT (local_03a66e9e) the exact line. Older: 2026-11-09 17:30: read: ticket 142e green 1 of 1 but capture refused: HUD and tooltip visible (interface not hidden), camera at max zoom, muffalo is a pale blob. 03 scenario fixed (interface hidden, PiT hold 5) at HEAD; ticket 1588 filed (Inbox review-muffalo-<sha>, avec-vef). Folders review-captures-dbce8a6 and review-muffalo-dbce8a6 stay until 036f and 1588 are read. Older: 2026-11-09 17:20: waiting: ticket 036f filed on 762dd62 (4 @review scenarios of 455b re-played with PiT camera hold at 2.5 to 3, no map, Inbox review-close-762dd62); tree frozen for features 01, 02, 10 until RUN_DONE; at RUN_DONE open each image, verdict first. Older: 2026-11-09 17:00: read: ticket 455b green 5 of 5 (dbce8a6); 7 captures read, no tooltip, no HUD, no map clutter; verdict: pieces drawn but animals too small (about 1 to 3 percent of frame): cow red scarf readable, fox blue collar visible and helmet barely, horse dark barding hard to read, husky collar a few pixels (camera at root size limit). Not kept as review proof until framed tighter; asked NPT via TM for a closer zoom. Folder stays in Inbox review-captures-dbce8a6 until 142e is read and the retake decided. Previous line: 2026-11-09 16:23: waiting: 8.d review captures, two tickets on dbce8a6: 455b (01 fox, 01 every dog collar, 02 horse, 02 cow, 10 reload; no map; Tests/Pickle/Inbox/review-captures-dbce8a6) and 142e (03 muffalo turret pack, wsl-deps.avec-vef.map; Inbox/review-muffalo-dbce8a6). At RUN_DONE: open each image, verdict first (animal framed close, no tooltip, no HUD, piece readable); muffalo scenario has no interface-hidden step yet, ask NPT if HUD or tooltip shows"
  - "2026-11-09: done: ticket db22 (removal chain, 5447f6c, local lane) green: seq1 save with worn gear 1/1, seq2 save loads and runs without the mod 1/1 (232 ticks); minified in Tests/Pickle/Evidence/removal-chain-5447f6c (RELEASE.md), Inbox emptied. Both SaveSteps chains (restart 7cee, removal db22) green. Next at playTests: 8.d review captures ticket, 8.i, 8.k, Mod options settings check read, then 8.n; NSB sync due before shootGallery (nsb-sync warn 2026-11-09); STATUS.md 43 KB over lint threshold: fold journal to docs/runs/"
  - "2026-11-08: done: ticket 7cee (restart chain, local lane, 11c4751) green: seq1 worn and saved 1/1, seq2 still worn 1/1, exit 0; minified in Tests/Pickle/Evidence/restart-gear-11c4751 (RELEASE.md), Inbox and Parked emptied (ea2f, a6b2, stalled-* deleted). Removal chain filed 2026-11-08 16:43 as ticket 20261108-164353-801-db22 on 5447f6c (-DepMap wsl-deps.removal.map, -Filter 11-removal-write -Then removal-check -ThenWithout both packageIds, -NoBatch, EvidenceDir Tests/Pickle/Inbox/savesteps-removal-5447f6c), waiting, never played. PatchEngine.ps1 re-synced by Audit (d6fbe0c) committed with it"
  - "2026-11-07 22:20: failed: ticket ea2f (restart launch, 8f55c98, local lane) exit 1, 1 scenario 0 passed: 'Accessing map pawns off main thread' at step 'a tame Fox_Arctic named RestFox exists near the colony' (AnimalSteps.cs TameAnimalExistsNearColony, sync step reading map.mapPawns; code unchanged since the same step passed in earlier runs, only 23 save lines removed in 86e49ba); log stack holds only the Pickle SuiteRunner continuation, throw site not shown; suspected framework (Pickle or SaveSteps thread context after load), TM asked to forward to NPT; run parked in Tests/Pickle/Parked/savesteps-restart-8f55c98 (RELEASE.md). Nothing refiled until NPT answers. Then removal chain (11-removal-write then removal-check -ThenWithout)."
  - "2026-11-07: failed: ticket a6b2 (restart launch, 332cdcd) ended exit 3 guard stop, total 0: pickle watchdog after 300s in 'pieces are worn and saved for the restart', last step 'a tame Muffalo named RestMuffalo exists near the colony' (evidence kept in Tests/Pickle/Inbox/savesteps-restart-332cdcd); TM asked whether it is the lane hang or a step problem for NPT, nothing refiled until it answers; older folders 65694c8 and 169d1bf-r2 deleted (restart green at 65694c8 and removal-write green at 169d1bf-r2 are gone, redo on the fixed build)"
  - "2026-11-07: done: Mod/About/OptionalCompat.xml written (32 targets, kind texture, Check-OptionalCompat OK; workshopId found for 6 of 8 empty ones by Steam search on title; sarg.magicalmenagerie and VanillaExpanded.VAED left empty with an XML comment, not found); file excluded from the code_review_sha staleness by Check-Status (Audit 31e4f12), no 8.m reopen, no replay. Scenario D (addition feature): none in Tests/Pickle, AUDIT 8.i non applicable. NSB changed 2026-11-07 after Tribe read: sync-nsb to rerun at shootGallery entry (Check-Status nsb-sync warn)"
  - "2026-11-06 16:23: waiting: ticket 20261106-162258-574-a6b2 filed on 332cdcd (16-restart-gear restart launch, wsl-deps.restart.map, -NoBatch, EvidenceDir Tests/Pickle/Inbox/savesteps-restart-332cdcd); TM GO after Cloud fixed the 143 cause (remote lane watch loop read the LOCAL WSL game pid and killed it between -Then launches; live since about 15:45; per-lane ports 27750, 27751, 27752). Green: file removal chain (11-removal-write then removal-check -ThenWithout), then 0257 if still needed. 143 again while a remote lane runs: tell TM (log pair to Cloud). Older line below."
  - "2026-11-06: waiting: SaveSteps tickets all exit 143 (bdde, ee84, 49bb, 0257; 6 launches, 2 passed, 4 killed at Mono boot right after the Fallback handler lines, no scenario reached; 49bb launch 1 and ee84 launch 1 green). TM hypothesis: every remote tunnel binds local port 27750 (shared with the local lane); per-lane fix (27750, 27751, 27752) being pushed by Cloud. Order from TM: wait until the running remote tickets end (TM says when), then refile ONE restart launch (-Filter 16-restart-gear::are worn and saved -Then 16-restart-gear::are still worn, -DepMap wsl-deps.restart.map, new -EvidenceDir); if it dies at Mono boot again, TM looks at WSL state and worker timing; refile the removal chain (11-removal-write then removal-check -ThenWithout) only after that one passes. Evidence to delete after a verdict: Tests/Pickle/Inbox/savesteps-*-65694c8, savesteps-*-169d1bf-r2. At a verdict: read summary.json, junit.xml, triage (green: Prune-Evidence -Apply, RELEASE.md), send NPT summary.json; GitHub run of xml-tests.yml (windows, Test-Mod.ps1) on 65694c8 not read yet; next at playTests: 8.d review captures ticket to file, settings_audit passed after the FR and EN replay is read, 8.i, 8.k; no question open for Virginie"
  - "2026-11-05: note (owner 2026-11-05: no answer needed before shootGallery): gallery plans proposed with what is validated today (cloister, terrace, infirmary-pawns; Nelim; goat and arctic fox): 1 infirmary-pawns, arctic fox on a hospital bed with Apparel_leatherdogcollar + Apparel_SmallAnimalPowerArmorHelmet, Nelim in LTS_Tunika + Apparel_PAESmallEarrings (variant: LisaWork scrubs); 2 terrace, goat with Apparel_GoatMail, Nelim same outfit; 3 cloister, fox and goat together, same outfit; Nelim face as the roster (MouthLipsSmirk, Roo_HD_Hair_Highpony), no smile per scene, no sweat. Waiting for her ok or changes; shotlist is written at shootGallery (write-shotlist), not before. Unverified: fox lying on a hospital bed, mod pieces on the fox in that pose. Queue: tickets bdde and ee84 (SaveSteps) pending, 60 requests ahead"
  - "2026-11-05: done: 8.m code review sha moved to 257f13e: revue du diff 2d452b6..HEAD : images et texte seuls (only Mod/About/Preview.png changed under Mod/ and Source/); 8.l greens b86c and f655 minified into Tests/Pickle/Evidence (settings-fr-1257b7e, loadaudit-fr-1257b7e, RELEASE.md written), superseded settings-fr-43e6f48 removed by Prune-Evidence; tested_on set; queue holds bdde and ee84 (SaveSteps, 60 requests pending ahead, tests=42 is the suite size, filters 11-removal-write + removal-check, 16-restart-gear pair)"
  - "2026-11-05: done: Preview with panel bottom-left validated by Virginie (chat, 2026-11-05), renderer 091c3f8 (Audit fixed the suffix split and the echo overlap found on this mod), title 35 px, suffix inline; supersedes the validation at 1b35af1; social_preview_sha256 stale until the Steam upload"
  - "2026-11-05: owner withdrew her validation of a per-scene expression for Nelim (chat): the smiles of the gallery scenes (shotlist column d, 12-gallery.feature mouths and lids, owner call of 2026-10-25) are unvalidated again; no capture of those scenes goes to her as validated, expression of Nelim to settle with her before the next gallery ticket (scenes 4 and 5 refile)"
  - "2026-11-05: done: save steps moved to the shared SaveSteps tool (86e49ba: features 11 and 16, maps removal and restart, local pair retired, Check-Steps clean, not played); tests converted to the new shape: Tests/Rule-OwnValues.ps1 (patch fixtures, MVCF pairing, Keyed keys from the source, hidden shortcut, load-folder facts; mutation proof: one expected count changed fails it), Tests/test-xml.ps1 deleted, Tests/lib/PatchEngine.ps1 kept as the runner fallback; waits for CI/CD --regenerate (Test-Mod.ps1 and a fresh .github, xml-tests.yml still calls test-xml.ps1) before push, then Audit validates the LOCAL_SCRIPTS row"
  - "2026-10-17: unverified: French strings changed after four ChatGPT reviews and the owner's call (impersonal address): Keyed/Settings.xml (AA_CK_UniversalHelp, AA_CK_RelicsUnavailable), three shotgun labels (a pompe), GoatMail and horse saddle descriptions; FRENCH_REVIEW.md regenerated, XML suite PASS 1326; owner's French review of 2026-10-01 to redo on these strings; not committed. Open for writeDocs: Thanks section (the six authors above is ambiguous), CHANGELOG 1.0.0 date against the private 0.1.0."
  - "2026-10-18: unverified: gallery series recomposed on the owner request (7 images: fox, horse, cub in a diaper, goat, cow turret pack firing at a wolf, parade, settings page; plan in 12-gallery.feature, three new local steps in AnimalSteps.cs, VEF added to wsl-deps.sanctuary.map), committed d760478, played in tickets f09d to 8ac6 (see the shotlist section) (ticket 45dd, exit 125, no report, folder deleted); to subtitle (Art/Gallery-clean, Add-Subtitle.ps1, lines in PUBLICATION.md); unknowns: standable cells (goat bank, cub, parade, Nelim at 161,216), turret frame timing (40 ticks), diaper art on a cub; version stays 1.0.0 (owner, 2026-10-17); AACaK session code"
  - "2026-10-10: unverified: new Art/Preview-source.png (owner, 1672x941) passes the AUDIT 2.e measures: Measure-Palette.sh 2 hue families, dominant 84%, Vmean 0.480; no readable colonist face, quadrupeds in side profile, nothing upright (read at full size). 268 px reading and panel/badge placement to check at mountPreview, Preview chain not re-rendered yet."
  - "2026-10-10: unverified: new Art/ModIcon-source.png from the owner (1341x1173 RGBA, full resolution); derivatives regenerated by Render-Preview.cjs (key modIconSource added to Preview.config.json): Mod/About/ModIcon.png 128x128 26878 bytes, Art/ModIcon.ico, Preview chain. The 32 px legibility test left the workflow on 2026-10-11. 268 px reading of the Preview done."
  - "2026-10-10: defect: em dashes (U+2014) remain in ATTRIBUTION.md (17, root and Mod/ copies must stay identical) and CHANGELOG.md (12, append-only); removed from README, TESTING, DEPENDENCIES, TEST_SCENARIOS, FRENCH_REVIEW."
  - "2026-10-10: defect: STATUS.md was 71 KB; folded into docs/runs/ and this file today (lint threshold 40 KB)."
  - "unverified: English and French runtime text, generated bills, MVCF commands and tooltips, optional integrations, Steam Deck layout"
  - "2026-10-10: unverified: review captures are present but unreadable as images (camera bound at root size 11, a muffalo one with HUD and tooltip); proof rests on the passing render-tree assertions."
  - "2026-10-13: defect: Check-CiTemplate.ps1 shows drift in .github (steam-page.mjs, steam-publish.mjs, steam-page.test.mjs +1): regenerate at the CI/CD template stamp before publish."
updated:      2026-10-29, replay-audit (writeTests 7.g), earlier: 2026-10-10, full re-audit against the protocols of 2026-10-10 (3266bf3), see "Audit 2026-10-10"
protocols_read_sha: a3dfbe618acfc614236006fa6b5584271f687b9d
---
# Animal Apparel: Collars and Kit Renew: status

File tracked in Git, kept outside shipped Mod/ folder. Current state only: dated
journal 2026-09-13 to 2026-10-05 folded into `docs/runs/README.md` (one line per section; full
text stays in git history before commit of 2026-10-10).

- **`workflow_stage`**: state of chain in AUDIT.md (fifteen states, camelCase). Old `stage` field
  retired.
- **`tested_on`**: date of last run in game. Empty = never.
- **`dependencies`**: `declared` when every mod this one needs named in About's `modDependencies`.
  Undeclared dependency not cosmetic: on 2026-09-11 another mod took 47 vanilla animals down with it
  because injected class belonged to undeclared mod.
- **`remaining`**: `feature` something missing, `defect` known fault, `unverified` what could not be checked.
- **`licence`**: `silent` = internal status, not licence for whole mod. Own contributions and Animal
  Equipment (Owlchemist, after jptrrs) are MIT within scope of `LICENSE`; no licence or permission
  established for six other sources (Dipsy offered to update Animal Diapers on 2025-06-14). See ATTRIBUTION.md.

Journal of 2026-10-10 to 2026-10-29 (audit, protocol reads, settings restart, shotlist v6 notes) folded into `docs/runs/2026-11-09-status-fold.md`.


## NSB

Sync 2026-11-05 (skill sync-nsb, stage playTests: nothing in the shotlist or scenarios changed, only what would change is noted). Owner rules of 2026-11-05: NSB places, colonists and domestic animals are free; a colonist or domestic animal outside NSB needs her express validation; any change to a colonist's properties needs it too; every outfit is free.

What changed in NSB since the last note: the barn grew (interior x 188-204, z 230-244) and its east extension (x 199-204) is now furnished (12 beds, 4 braziers); Nelim's wardrobe was reviewed on 2026-11-04/05 (daily outfit LTS_Tunika emerald, others validated). `git log` of the NSB Docs returned nothing, so no other date is known. Opened: SANCTUAIRE-LIEUX (lines of the six places only), CATALOGUE-ANIMAUX, NELIM-PROFIL, GALERIE-COLONS. Not opened: SANCTUAIRE-CASES, EMBELLISSEMENT-LIEUX, NSB-ROSTER, APPARENCES-CANON, LOOKS-VALIDATION, the animal sheets.

Places read: 2026-11-05 (partial). Tribe read: 2026-11-05 (partial).

| Place | Shots | Changes for the gallery | Last read |
| --- | --- | --- | --- |
| barn (193,237) | 1 | tall grass (201,238) (202,238) now falls in the furnished east extension (x 199-204): check at refile, scene 1 was played before | 2026-11-05 |
| statue-garden (155,97) | 2 | daylilies x3 | 2026-11-05 |
| sofa-corner (187,123) | 3 | two lit torches | 2026-11-05 |
| bare-clearing (195,152) | 4 | daylilies, tall grass, x 190 flower border (as NSB describes it) | 2026-11-05 |
| enclosure-south (149,214) | 5, 6 | dandelions, daylilies | 2026-11-05 |

| Colonist | Shots | Outfit per shot | Last read | Exceptions |
| --- | --- | --- | --- | --- |
| Nelim | 1 to 6 | one outfit all day, mustard shirt, brown trousers, olive jacket (a market morning she dressed at dawn; NSB daily is LTS_Tunika emerald, outfits are free) | 2026-11-05 | PENDING (rule 3): hairstyle "Ponytails" and colour rgb (90,58,32) in 12-gallery.feature, the roster says Roo_HD_Hair_Highpony and Hair_DarkSaturatedReddish #382412; no quoted validation. Mouths: smile on default scenes, owner 2026-10-25 (quoted above); each scene's smile variant is the session's call within it |

| Animal | Shots | Outfit | Last read | Exceptions |
| --- | --- | --- | --- | --- |
| arctic fox (GalleryFox) | 1 | red collar, blue helmet | 2026-11-05 (not in the catalogue) | outside NSB, tamed wildlife: not covered by rule 2 (session call); NSB has Pecan, a FoxSquirrel, only if its mod is loaded |
| horse | 2 | purple barding, gold chanfron, green saddle | 2026-11-05 (not in the catalogue) | outside NSB, domestic: PENDING |
| grizzly bear | 3 | pale blue diaper | 2026-11-05 (not in the catalogue) | outside NSB, tamed wildlife: session call |
| goat | 4 | goat mail | 2026-11-05 (not in the catalogue) | outside NSB, domestic: PENDING |
| husky (GalleryHusky, ParadeHusky) | 5, 6 | Apparel_SmallAnimalPowerArmor, Apparel_shielddogcollar | 2026-11-05 (CATALOGUE-ANIMAUX) | outside NSB, domestic: PENDING. Yuki is the NSB husky and wears only Apparel_leatherdogcollar by default (another garment allowed when the story says so, owner 2026-10-25), so an armoured husky stays a non-Yuki one unless she says otherwise |
| cow | 6 | per feature 12 | 2026-11-05 (not in the catalogue) | outside NSB, domestic: PENDING |

Would change at shootGallery if she says no: Nelim back to the roster hair; horse, goat, cow dropped or replaced by Shogun and Yuki (NSB) in garments the story justifies; scene 1 grass cells moved out of the extension.

## Shotlist v6, 2026-10-23 (skill write-shotlist, GALLERY.md a to k as of 2026-10-23, feature `12-gallery`, pass `wsl-deps.sanctuary.map` with VEF)

Why reworked: GALLERY.md of 2026-10-23 (d outfit continuity in a story day; e game paused mid-play, instant and how the gesture is obtained; k series: opening, closing, shot variety; h and i retired). The 2026-10-18 plan (new outfit, hairstyle and hat per scene, Nelim standing still) no longer fits. Ticket e578 (old plan, scenes 2 to 5) to cancel. Opus director pass done (one call); remarks below.

Story: one clear market morning at the Sanctuary. Nelim keeps ONE outfit (she dressed at dawn): mustard shirt (214,168,64), brown trousers (96,72,48), olive jacket (92,110,70), Ponytails dark brown (90,58,32), no hat (no hat-hair mod risk, ponytail allowed without a hat). Only her expression and what she holds change. Start hour 8, cumulative waits 60, 268, 477, 685, 833, 1042 ticks, Clear, day animals. Sizes: 1 wide (opening, rectangle), 2 medium, 3 tight, 4 tight, 5 medium, 6 wide (closing). Fronts: fox (1), husky (5).

| # | place, time | b decor | c living | d expression, held | e instant and how obtained | f | g says | j | est. |
|---|---|---|---|---|---|---|---|---|---|
| 1 fox | barn 08:00 | Plant_YellowTallGrass (201,238) (202,238) | arctic fox South, red collar, blue helmet | MouthSmile LidCheerful, the next collar (Apparel_leatherdogcollar) | just before she kneels to buckle it: Nelim west of the fox, haul step takes the collar next to the fox, let 40 to 80 ticks pass, pause (tick read with the movement log) | rectangle, barn and yard visible | collars and a helmet fit the smallest | collar, helmet | 4 |
| 2 horse | statue-garden 08:05 | Plant_Daylily x3, statues | pale horse East, purple barding, gold chanfron, green saddle | MouthLipsSmallSmile LidNormal, the bridle if the mod has one (else Leather_Camel) | she has just raised a hand to put the bridle on, next she leads it out; job Train, 30 ticks, pause | zoom 5, horse left third, Nelim right facing it, statues behind, daylilies foreground, low east sun | a full set for the biggest | barding, chanfron, saddle | 5 (j: horse about 20 % of the frame height at zoom 5, to confirm on the capture) |
| 3 grizzly | sofa-corner 08:10 | two lit TorchLamp | adult grizzly asleep by the sofa, pale blue diaper | MouthLittleGrin LidNormal (sleep goes to the bear), a spare diaper | she hauls the diaper to the bear's side, pause mid-step | zoom 4, Nelim behind the bear | a diaper for the big ones too | diaper | 3: missing step (animal lies down or sleeps) |
| 4 goat | bare-clearing 08:15 | Plant_Daylily x2, Plant_YellowTallGrass | goat East, goat mail | MouthSmirkSmile BrowRaised, Steel | forced into the job Milk on the goat, pause after ~30 ticks | zoom 3, Nelim right, flowers foreground | mail for the toughest climber | goat mail | 4 (job name and gesture unverified) |
| 5 husky | enclosure-south 08:20 | Plant_Dandelion x2 | husky trotting toward the camera, power armour, helmet, shield collar | MouthLipsSmirk LidHardened, Plasteel | husky mid-trot South (front view without a stiff pose) | zoom 4, Nelim left | collars have their own slot | AnimalNeck slot, armour | 3: missing step (animal goto) |
| 6 parade | enclosure-south 08:25 | Plant_Daylily x2 | fox, husky (same armour as 5), cow, horse, goat, bear if room, heading East | MouthClassicSmile LidCheerful, 20 Silver hauled | Nelim hauls the silver east, animals follow (FollowClose on Nelim) | rectangle wide, closing | the whole troop heads out, every piece seen before | every piece together | 3: missing step (animal follows) |
| 7 settings | window-backdrop-for-height | | | | | | | | interface, set aside |

Opus remarks, kept: no step moves an animal (goto, follow, lie down): asked of NPT; use existing PickleTools steps `is forced to haul N of the item to (x, z)`, `is forced into the job "J" on "X"`, `I let N ticks pass`, `time is paused for the capture`, `the movement of the colonist is logged for N seconds`; husky of 6 wears its scene-5 set, scenes 2 to 5 vary Nelim's side (right, behind) and foreground; held items are the garment being fitted. Not kept: its d remark on ponytails (the hat rule only applies with a hat, and there is none). Unverified by the reviewer: Pickle's own catalogue, forced job accepting an animal, JobDef validity, ticks of a haul pickup.

Self-check: series score 3 (scenes 3, 5, 6 below 4 until the animal steps exist). Below 4: no capture ticket filed (GALLERY.md). Scenarios of `12-gallery.feature` still carry the 2026-10-18 outfits: rewritten with the steps. Accepted captures from older runs: 1 fox (Art/Gallery candidate), 6 parade, 7 settings; 1 and 6 are re-shot under the new plan (outfit continuity).

2026-10-23: NPT wrote the three animal steps (walk to, follows, lies down; compiled, not played). Feature rewritten and committed at 2f858fd (one outfit, an instant per scene); scenes 3, 5, 6 now 4/5 (steps exist), series 4. Tickets filed: 52f8 (scenes 1 to 3, Tests/Pickle/Inbox/gallery-v6a) and b7f7 (scenes 4 to 6, gallery-v6b), pass wsl-deps.sanctuary.map. Unverified: haul of a carried item, Train gesture, LayDown held by forceSleep, FollowClose on tame animals. At RUN_DONE read each capture against its line (instant, outfit continuity); scene 7 stays Art/Gallery candidate; stale old files Art/Gallery/1-fox.png, 2-horse.png, 3-husky.png to delete at reindex.

2026-10-25: NPT answered via TM: fix in ColonistRace/Source/LookSteps.cs (compiled, not played, not deployed): `the animal "X" stands at (x, z) facing D` now forces a Wait job, the animal holds its cell during `I let N ticks pass`; `X faces D` holds rotation. Use once per animal, no re-apply (fox of scene 1: `the animal "GalleryFox" stands at (x, z) facing South`). Needs the new DLL deployed: ef32 must wait for it. No recipe for an animal mid-stride facing the camera. `is forced to walk to`, `follows ... within N cells`, `lies down`: never played (compiled 2026-10-23), no proof; scenes 3, 5, 6 rest on them.

## NSB

Sync 2026-11-05 (skill sync-nsb, owner request: redo the shotlist with NSB). Stage is `playTests`, so nothing is rewritten yet: the shotlist, `12-gallery.feature` and the sanctuary map change at `shootGallery` (`write-shotlist`). Rules of the owner (2026-11-05): everything in NSB is free (places, colonists, domestic animals); a colonist or domestic animal outside NSB needs her express validation; a colonist's properties change only with it; every outfit is free.

Reads: Places read: 2026-11-05 (partial: SANCTUAIRE-LIEUX.md sections "Qui vit", "La faune", "Les cadres nommés", "Animaux mis en scène"; CASES, EMBELLISSEMENT not opened). Tribe read: 2026-11-05 (partial: NELIM-PROFIL, CATALOGUE-ANIMAUX, HUMAINS-PROFILS, GALERIE-COLONS, LOOKS-VALIDATION; ROSTER, APPARENCES-CANON, animal sheets not opened).

What the v6 shotlist (2026-10-23) gets wrong against NSB:
- Nelim: it invents an outfit (mustard shirt, brown trousers, olive jacket), hair "Ponytails dark brown" and a smile per scene. NSB canon: hair `Roo_HD_Hair_Highpony` (a hair change needs the owner), mouth `MouthLipsSmirk`, `LidCheerful`, `BrowNormal`; validated daily outfit robe `LTS_Tunika` emerald (#1F7A5C) + `Apparel_PAESmallEarrings`, validated 2026-11-04. The per-scene smiles were withdrawn by the owner on 2026-11-05 (chat). Outfit is free, so the daily outfit (or another validated one per story) can be chosen; the face stays as the roster says.
- Animals: fox (`Fox_Arctic`, scene 1) and goat (scene 4) are not in the NSB fauna (list: cat, labrador, thrumbo, panda, otter, swan, duck, sparrow, squirrel, ... horse 13, donkey 8, sheep 8, pig 5, cow 4, husky 3, yorkshire 4, boomalope 4, grizzly 1, lynx 1, ibex 1, alpaca 3, bison 4, mastodon 3). Horse, cow, husky, grizzly are in the save. The husky "GalleryHusky" is a non-Yuki husky (Yuki wears only `Apparel_leatherdogcollar`, canon): Yuki itself is NSB.
- Canon animals with a role: Rain (thrumbo) wears `Apparel_LargeAnimalScarf` blue-green as canon (a piece of this mod); Atticus never wears gear; Shogun and Yuki wear `Apparel_leatherdogcollar`, another garment allowed if the shotlist says why; Tama and Kuru: no compatible apparel; `Apparel_dogbow` excluded.

Proposal for `shootGallery` (not applied):

| Scene | Today | With NSB |
| --- | --- | --- |
| 1 collar and helmet on the smallest | arctic fox | PENDING owner: keep the fox (outside NSB) or use a small NSB animal that wears the pieces (Pécan the FoxSquirrel, Labrador Shogun with collar) |
| 2 full set for the biggest | horse | NSB horse of the save (statue-garden) or Rain with her scarf as the canon big animal |
| 3 diaper on the big ones | grizzly | the NSB grizzly (1 in the save), sofa-corner |
| 4 goat mail | goat | goat kept, outside NSB, validated by the owner 2026-11-05 ("je valide pour la chèvre", chat) |
| 5 armour and shield collar | non-Yuki husky | Yuki (NSB) with armour only if the owner agrees (canon: collar only), else an NSB save husky |
| 6 parade | fox, husky, cow, horse, goat, bear | NSB animals only |

| Place | Shots that use it | Changes made for the gallery | Last read |
| --- | --- | --- | --- |
| barn (193, 237) | 1 | none (poker table, billiard, animal beds in NSB) | 2026-11-05 |
| statue-garden (155, 97) | 2 | none | 2026-11-05 |
| sofa-corner (187, 123) | 3 | none | 2026-11-05 |
| bare-clearing (195, 152) | 4 | none (bare earth, flower border x 190) | 2026-11-05 |
| enclosure-south (149, 214) | 5, 6 | none | 2026-11-05 |

| Colonist | Shots | Outfit per shot | Last read of its profile | Exceptions |
| --- | --- | --- | --- | --- |
| Nelim | 1 to 6 | today invented (mustard, brown, olive); to replace by the validated daily `LTS_Tunika` + `Apparel_PAESmallEarrings` (or another validated one the story justifies) | 2026-11-05 (NELIM-PROFIL) | today: hair `Ponytails` and smile per scene, both outside the roster and not validated (smile withdrawn 2026-11-05); to drop |

| Animal | Shots | Outfit chosen | Last read of its sheet | Exceptions |
| --- | --- | --- | --- | --- |
| arctic fox "GalleryFox" | 1, 6 | collar, small helmet | not in NSB | outside NSB, validated by the owner 2026-11-05 ("je valide le renard arctique", chat), this mod, the arctic fox only |
| horse | 2, 6 | barding, chanfron, saddle | species in the save (CATALOGUE not a sheet) | none |
| grizzly | 3 | diaper | species in the save | none |
| goat | 4, 6 | goat mail | not in NSB | outside NSB, validated by the owner 2026-11-05 ("je valide pour la chèvre", chat), this mod, the goat only |
| husky "GalleryHusky" | 5, 6 | armour, helmet, shield collar | Yuki sheet not opened | non-Yuki husky: species is in the save (3); Yuki armour not canon |
| cow | 6 | scarf | species in the save | none |

Update 2026-11-05 after NSB re-documented itself (SANCTUAIRE-LIEUX.md "Qui une galerie peut utiliser", dated 2026-11-05; CATALOGUE-ANIMAUX and NELIM-PROFIL got dated headers; read: that section, Places read and Tribe read dates above stay):
- Colonists: only Nelim is in the save (I wrongly read this as NSB's whole cast, owner correction 2026-11-05). Every other NSB colonist is created by step (`a colonist "X" of kind "Y" exists`, templates `sanctuary-daily*.feature`): kind `Colonist` = Miel, Soren, Ryu, Daichi, Emi, Haru, Celeste, Iori, Quill, Quo, Quaren; kind `OL_SerenColonist` = Ada, Jiro, Lyra, Dalia, Vesper. All free to use. Which colonists the gallery uses: PENDING owner.
- Named animals in the save: Atticus, Rain (thrumbos, in the house), Shogun (labrador), Yuki (husky). Tama, Kuru, Ottawa, Onigiri, Pecan, Wren, Wrille, Ulysse, Ursule, Xylo are NOT in the save (NSB gives the steps on request). Other save fauna is anonymous decor, free as a plain animal of its species, no NSB name or role.
- No goat, no arctic fox, no FoxSquirrel in the save; Erin's FoxSquirrel mod is in no NSB pass map. Goat: validated by the owner (above). Arctic fox / FoxSquirrel for scene 1: replace by a species of the save (Shogun with his leather collar, or an anonymous small animal of the save such as a Yorkshire) unless the owner validates the fox.

Owner rule 2026-11-05 (chat, quoted): "je suis en train de redécorer NSB. Donc je valide la redécoration lieu par lieu. Je viens de valider ces lieux, tu peux donc commencer tes prises de vues là-bas. De la même manière, Nelim et certaines de ses tenues sont validées, tu peux les travailler sans risque que je les change. Mais les autres lieux aussi (et les autres colons/animaux et les autres tenues aussi) seront validés, mais pas encore là maintenant, donc il faut attendre pour les utiliser". Validated now: places `cloister` (179, 130), `terrace` (197, 123), `infirmary-pawns` (202, 52) (via NPT too); Nelim and the outfits marked validated in NELIM-PROFIL (daily LTS_Tunika, underwear, ceremony FCA2_OrangeScarfDress, party LTS_LacedDress, sleep Apparel_PonpecoPajamaB, soignante LisaWork scrubs, formal LTS_RegalCloth, date LTS_SummerSundress, combat). NOT yet: every other place (barn, statue-garden, sofa-corner, bare-clearing, enclosure-south are on hold), other colonists (Soren), other animals, other outfits: wait, do not shoot with them. Consequence: the six-scene plan above is on hold except what fits the three places and Nelim; animals to use now: PENDING owner.
Animals usable now (2026-11-05): goat and arctic fox, both outside NSB and validated by the owner (quotes above and in the animals table). Other animals wait for her validation. Places usable now: cloister, terrace, infirmary-pawns; colonist: Nelim.
