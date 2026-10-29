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
showcase:     partial
tested_on:
workshop:     3806765840 (private 0.1.0 prepublication, 2026-09-23, from the game's upload button)
code_review_sha: 2d452b60f5ce5d90d814b64924eb58be6e5ceb42
  - "2026-10-12: unverified: Preview re-rendered with Art/echo-source.png (preSized, panelWidth 34, panelTop 8): the echo no longer crosses the title block, it touches the end of the word turret in the copy; Mod/About/Preview.png and Art/Gallery/0-preview.png identical; Preview 268 px reading and echo_review_sha stay for mountPreview"
remaining:
  - "2026-10-29: done: 7.g French review by Virginie (chat confirmation, 2026-10-29) of FRENCH_REVIEW.md at revision 651c069, after four ChatGPT rounds (changes e9fc2e2, 88d8f1c, 5022938, 01beeb4 and the round 3 commit); translation_fr complete; stage moved writeTests to playTests (7.i)"
  - "2026-10-29: done: ChatGPT review page 1 applied with Virginie's go: diaper.description and ATP_Charge.description (French), PUBLICATION.md compatibility and gallery wording; Check-Translations PASS, test-xml PASS 1326; FRENCH_REVIEW.md regenerated; her review of the French (7.g) still open on the new revision"
  - "2026-10-29: done: ChatGPT review round 2 with Virginie's go: Apparel_dogbow.label now nœud papillon; shield collar wording left as is (optional); 24 nested turret entries without Original and English columns = generator limit of Make-FrenchReview.ps1, to report to the Audit session; CHANGELOG 1.0.0 against the private 0.1.0 stays open for writeDocs; FRENCH_REVIEW.md regenerated"
  - "2026-10-29: done: 8.m code review c3bbe10..2d452b6 (Mod/ text edits and Preview.png) by an Opus read-only reviewer, 0 blocking, one nit fixed (diaper EN comment); code_review_sha moved to 2d452b6"
  - "2026-10-29: done: stale no-game-run statements fixed (TESTING.md line 3, PUBLICATION.md header, line 12 and the Dependencies line); defect left: Docs/TEST_SCENARIOS.md sits beside TESTING.md (STYLE_RIMWORLD root list: one of the two)"
  - "2026-10-29: done: ChatGPT review round 3 with Virginie's go: diaper English description typo (Mod/Defs/ThingDefs/Apparel_Diaper.xml, reopens 8.m like the French edits), AA_CK_SettingsScope French (scope and timing split); left: turret pack descriptions and universal apparel labels (style, owner call of 2026-10-17); FRENCH_REVIEW.md regenerated"
  - "2026-10-29: done: replay-audit checks green: Check-Status 0 errors (warn social_preview_sha256 stale), Check-ModBasics PASS, Check-Translations PASS, Run-UnitTests PASS 30, Tests/test-xml.ps1 PASS 1326; gallery work (ef32 digested, candidates 1, 2, 3, 6) stays valid, resumes at shootGallery after 7.g and 8.m"
  - "2026-10-23: done: ticket 5a60 (load audit + with Odyssey, avec-animaux, 1b9df68) green 2 of 2, minified into Tests/Pickle/Evidence/load-odyssey-1b9df68 (RELEASE.md); with-odyssey-7cd2067 and loadaudit-c3bbe10 deleted (covered); French review regenerated at 88d8f1c; 939d, idle 49a1, settings French ff6b already green"
  - "2026-10-17: unverified: French strings changed after four ChatGPT reviews and the owner's call (impersonal address): Keyed/Settings.xml (AA_CK_UniversalHelp, AA_CK_RelicsUnavailable), three shotgun labels (a pompe), GoatMail and horse saddle descriptions; FRENCH_REVIEW.md regenerated, XML suite PASS 1326; owner's French review of 2026-10-01 to redo on these strings; not committed. Open for writeDocs: Thanks section (the six authors above is ambiguous), CHANGELOG 1.0.0 date against the private 0.1.0."
  - "2026-10-18: unverified: gallery series recomposed on the owner request (7 images: fox, horse, cub in a diaper, goat, cow turret pack firing at a wolf, parade, settings page; plan in 12-gallery.feature, three new local steps in AnimalSteps.cs, VEF added to wsl-deps.sanctuary.map), committed d760478, played in tickets f09d to 8ac6 (see the shotlist section) (ticket 45dd, exit 125, no report, folder deleted); to subtitle (Art/Gallery-clean, Add-Subtitle.ps1, lines in PUBLICATION.md); unknowns: standable cells (goat bank, cub, parade, Nelim at 161,216), turret frame timing (40 ticks), diaper art on a cub; version stays 1.0.0 (owner, 2026-10-17); AACaK session code"
  - "2026-10-10: done: code review 1800f5e..ac6b7e6 by a read-only reviewer agent, 0 blocking. Risks 1 and 2 fixed in c3bbe10 (relic exclusion now covers AnimalTurretBase, diaper and Apparel_GoatMail; HorseRidingOverlay creates a missing Horse comps node first; XML suite PASS 1278), the diff reviewed by the session; risk 3 (no null check on VFEGlobal.settings in ApparelSettingsMod.Settings) left: VEF initialises it before patches, 30 real-assembly assertions pass, changing it means rebuilding the shipped DLL. Targeted load-audit rerun on the Giddy-Up map queued."
  - "2026-10-10: unverified: new Art/Preview-source.png (owner, 1672x941) passes the AUDIT 2.e measures: Measure-Palette.sh 2 hue families, dominant 84%, Vmean 0.480; no readable colonist face, quadrupeds in side profile, nothing upright (read at full size). 268 px reading and panel/badge placement to check at mountPreview, Preview chain not re-rendered yet."
  - "2026-10-10: unverified: new Art/ModIcon-source.png from the owner (1341x1173 RGBA, full resolution); derivatives regenerated by Render-Preview.cjs (key modIconSource added to Preview.config.json): Mod/About/ModIcon.png 128x128 26878 bytes, Art/ModIcon.ico, Preview chain. The 32 px legibility test left the workflow on 2026-10-11. 268 px reading of the Preview done."
  - "2026-10-10: done: Art/ cleaned (README-preview.md removed, Art/gallery renamed Art/Gallery, publish.config.json galleryDir follows); Art/ModIcon-original.png kept on the owner request, deleted 2026-10-12 (git history keeps it)."
  - "2026-10-10: done: mod root cleaned: `_tools/` removed (test-xml.ps1 moved to Tests/, the three obsolete files deleted); only build (ignored, was .build, renamed 2026-10-10), .git, .gitattributes, .github, .gitignore remain."
  - "2026-10-10: done: FRENCH_REVIEW.md regenerated by scripts/Make-FrenchReview.ps1 (repository type renew, no em dash); the 102 French strings are unchanged since the review of 1d79353."
  - "2026-10-10: done: About.xml author line now ends 1.6 adapted by Nelim (description unchanged)."
  - "2026-10-10: done: TEST_SCENARIOS.md created (manual scenarios A to K, split from TESTING.md)."
  - "2026-10-10: done: PUBLICATION.md gallery section aligned with Art/Gallery (0 to 3); realign after the staged gallery at shootGallery."
  - "2026-10-10: defect: em dashes (U+2014) remain in ATTRIBUTION.md (17, root and Mod/ copies must stay identical) and CHANGELOG.md (12, append-only); removed from README, TESTING, DEPENDENCIES, TEST_SCENARIOS, FRENCH_REVIEW."
  - "2026-10-10: defect: STATUS.md was 71 KB; folded into docs/runs/ and this file today (lint threshold 40 KB)."
  - "2026-10-10: done on 79998ce: six incompatibility checks green (dog-collars, patch-malinois, realistic-goat, animal-equipment, diapers, turret-packs: each still shares a defName), French rerun of idle colony and with-Odyssey green, review scenarios green (render-tree assertions pass, 8 captures opened). Earlier greens: minimal set EN bf865a3 and FR 12e815f, avec-vef EN, avec-animaux, avec-rimmsqol bb0bb9f (hidden shortcut), removal chain 24dc240."
  - "2026-10-11: done: primary settings access in game, EN and FR (feature 14, tickets 5190 and 171c green); hidden shortcut green with RIMMSQOL (bb0bb9f). restart round trip verified 2026-10-12 (feature 15, ticket 696a, three launches green); page layout read from an image stays unverified"
  - "unverified: English and French runtime text, generated bills, MVCF commands and tooltips, optional integrations, Steam Deck layout"
  - "2026-10-10: done: Horse_Plate_Armour removed from About.xml incompatibleWith on the owner decision (ticket 0e84 red: no shared defName; ticket 7800 green: clean load with both mods). Steam description and README now say six of the seven source mods; scenario removed from 05, feature 13 keeps the coexistence check. The description changed: the publication review reopens at writeDocs."
  - "2026-10-10: done: without-Odyssey half of the Odyssey pair: load audit without a save green (ticket 3f1a, b3a96c2); the save-based form cannot load without Odyssey (test-colony needs it)."
  - "2026-10-10: unverified: review captures are present but unreadable as images (camera bound at root size 11, a muffalo one with HUD and tooltip); proof rests on the passing render-tree assertions."
  - "2026-10-15: done: Check-Translations (follows ParentName) flagged 8 nested `label` texts on the ATP_Apparel_* packs; verbs.0.label and the MVCF verbProps.0.label are now translated in pairs (e9fc2e2), checker PASS, XML suite PASS 1326; French turret scenario replay queued (ticket bf49), MVCF pairing by label to confirm there"
  - "2026-10-13: defect: Check-CiTemplate.ps1 shows drift in .github (steam-page.mjs, steam-publish.mjs, steam-page.test.mjs +1): regenerate at the CI/CD template stamp before publish."
  - "2026-10-13: done: scenarios E (feature 03), J (feature 09) and G (feature 16, real restart, ticket e8c4 green on 23d4671) are automated and green; draw order of the collar above the body piece is not asserted"
updated:      2026-10-29, replay-audit (writeTests 7.g), earlier: 2026-10-10, full re-audit against the protocols of 2026-10-10 (3266bf3), see "Audit 2026-10-10"
protocols_read_sha: 05758453139b9bb96a160035e5759e58183113b6
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

## Audit 2026-10-10

Revision audited: `388048f` (HEAD). Protocols: AGENTS.md 962c64f, AUDIT.md 3266bf3, MOD_SETTINGS.md and
TRANSLATIONS.md 06263cb, PUBLISHING.md 9f58f59 (Nommage and Images read in full, rest by section), STYLE_RIMWORLD.md
80ee012 (palette, ModIcon, Preview sections), PICKLE.md 80ee012 (not read: no run launched here),
Rimworld-Ticket-Dispatcher WELCOME.md read in full. Local changes in tree belong to owner, left alone.

**Previous: `stage: done`, `workflow_stage: done` (old vocabulary, maps to `playTests`). Retained: `playTests[1.0.0]`.**
First pass of day retained `makeSources` (2.e palette, 2.a/2.b icon source and derivative, 2.f `Art/`). Owner then delivered new
`Preview-source.png` (Vmean 0.480) and new `ModIcon-source.png`, confirmed override on icon crowding, asked to keep
`Art/ModIcon-original.png`; derivatives, mod root, `Art/`, `FRENCH_REVIEW.md`, About author line and
`TEST_SCENARIOS.md` then done same day, so every exit criterion up to `writeTests` holds on tree committed at end of this entry.
Left for `playTests`: game runs, which never move state backwards.

| Transition | Result |
| --- | --- |
| setupRepo -> makeSources | Established. Own repository, remote, pushed history; `(unofficial)` suffix and paragraph in About, README and `mod`; names coherent (packageId `nelim.animalapparelcollarsandkit`); ATTRIBUTION and LICENSE in root and `Mod/`; `Check-Status.ps1`: 0 errors. About author line fixed. |
| makeSources -> code | Established. Icon source (owner, 1341x1173 RGBA), derivatives regenerated by `Render-Preview.cjs` (`modIconSource` key added); `Preview-source.png` palette 2 families, Vmean 0.480; Preview 896x504, 624668 bytes, `Art/Gallery/0-preview.png` identical; 32 px legibility read (override confirmed by owner); `Art/` at minimal set plus `ModIcon-original.png` kept by owner; mod root clean. |
| code -> declareDependencies | Shipped `AnimalApparelCollarsAndKit.Settings.dll` SHA-256 `E436B4CA9ADD781EB44F47391C40410F96BFDC97046556D9F2ACEEEDC9BAFA2B`, unchanged, equal to committed one; sources unchanged since 2026-09-13. CHANGELOG has `Unreleased` section. |
| declareDependencies -> auditSettings | Cited from DEPENDENCIES.md (2026-09-13, gorilla patch added), unchanged; About `modDependencies` (Framework), `loadAfter` (Framework, Basic Armor, VEF Core, Giddy-Up 2, Combat Extended) and `incompatibleWith` (Dylan, six sources, Animal Equipment) re-read, consistent. Not applicable: four animal integrations (mod adds no race). |
| auditSettings -> localize | `settings_audit: partial` (was `complete`, overclaimed: in-game checks `unverified`). Two Boolean options under Mod options -> mod name, hidden shortcut `AA_CK_Settings`; `Settings.Tests` re-run: 30 assertions passed on installed RimWorld 1.6 and VEF assemblies (build rewrote shipped DLL, restored from git). Hidden shortcut played green with RIMMSQOL (bb0bb9f). |
| localize -> writeTests | 95 Def text fields and 7 Keyed strings in EN and FR; `translation_fr` reviewed by Virginie 2026-10-01 at `1d79353`, French files unchanged since; no French string agrees with pawn (read, not searched). `FRENCH_REVIEW.md` regenerated by script. |
| writeTests -> playTests | XML suite re-run after last Mod/ change: PASS 1273 checks (60 XML files, 95 Def fields). Pickle suites written (`Tests/Pickle/`, features 01 to 11, 20+ pass maps), `TEST_SCENARIOS.md` written. |
| playTests -> shootGallery | Not reached: game gates in `remaining`; no `code_review_sha` yet (8.m). |

### Next work for `playTests -> shootGallery`

Game gates in `remaining` (incompatibility passes, without-Odyssey half, review captures, settings in game, EN/FR checks),
then `code_review_sha`. Small tickets via Ticket Manager, targeted first, no full pass before commit.

### Not done, not blocking this state

- Em dashes remain in ATTRIBUTION.md (root and `Mod/` copy, change together at next `Mod/` commit) and CHANGELOG.md (append-only).
- Intermediates live in `build/` (renamed from `.build/`, owner rule 2026-10-10; `Directory.Build.props`, `Tests/Settings.Tests.csproj`, `.gitignore`, TESTING.md follow; Settings.Tests rebuilt, 30 pass).

### Optional recommendations (not blocks)

- Scenarios E, G, J need new Pickle steps before leaving `unverified`.
- Three source mods not installed locally, so incompatibility passes cannot stage; About entries
  stay on declared defName overlap.

### Protocol update read, 2026-10-10 (3a01556)

Read changes since 8dc7759: AGENTS.md (markers in session name and reply, work meanwhile while ticket waits, stage
change needs new `protocols_read_sha` in same change, which commit 79998ce has), AUDIT.md 11.b and PUBLISHING.md
(IF I GO QUIET only for public mod: this mod public, section stays; `*.dds` and `Art/.render/` in `.gitignore`: present),
USE_THIS_INSTEAD.md (new register: at `publish` this mod adds `drafted` rows with old and new Workshop ids; seven source mods
read on Workshop pages then, nothing filled from memory), WORKSHOP_COMMENTS.md (Covers list). Nothing else moves state.

### Protocol update read, 2026-10-10 (eedd5b0)

Read changes since 951bcc7: `.build/` renamed `build/` (done here, see above); session name cut to 20 characters plus `...`
(`animalapparelcollars...`); 30-minute read-only safety wakeup while tickets filed (session cron f5decfbb on :17 and :47, deleted when
ten tickets have result); questions to Virginie always orange with click-by-click steps; session dispatches publish
(`dispatch-publish.sh`), she approves `steam-production` (publish state, not now); `FRENCH_REVIEW.md` title carries mod name (generator
already writes it). Open for `writeDocs` (11.b/11.h): THANKS must name every integration named, claimed or exercised (Vanilla Expanded Framework,
Giddy-Up 2, Combat Extended, RIMMSQOL, animal mods gating art folders, Basic Armor), each with row in `WORKSHOP_COMMENTS.md`; Steam
description changes then, reopens publication review.

Relay of 2026-10-10 (c3ff76f, 1567815): CHANGELOG `## [Unreleased]` becomes `## [x.y.z] - date` only in commit sent to dry-run (publish state); Use This Instead comment (Mlie's page 3396308787) written in BBCode in PUBLICATION.md at writeDocs, handed to Virginie as orange step, with rows `drafted` then `posted` in USE_THIS_INSTEAD.md. Points 3 and 4 do not concern this mod (public, not private).

### Audit completion check, 2026-10-11 (HEAD at the commit of this entry)

Rechecked what 2026-10-10 entry cited from older audits, against protocols as of 2026-10-11:
- `TESTING.md` now declares passes (three families, map and `@requires` of each, what is not automated; AUDIT "Passes Pickle"); stale "four features" paragraph gone. Suites 01 to 14 written; no `@wip`; each `@requires` has map (table in TESTING.md).
- CHANGELOG `## Unreleased` lists version changes (Horse Plate entry removed, relic exclusion, Horse comps guard, author line, ModIcon and Preview); date set at dry-run (12.e).
- `ATTRIBUTION.md` identical in root and `Mod/`; LICENSE copy checked in earlier audit, unchanged.
- Dependencies: DEPENDENCIES.md of 2026-09-13 stands (dated citation); `IfModActive` ids in `LoadFolders.xml` re-read, unchanged since; mods without 1.6 build (Vikings, JapaneseDogs, YorkshireTerrors) keep guarded folders that load nothing.
- AUDIT 11.b changes of day (CHANGELOG date at dry-run) concern `publish`; read.
Still open in `playTests`: tickets 5190 and 171c (settings through Mod options, EN and FR) and 6fcd (load audit after review fixes); then `settings_audit` can go `complete`, state moves to `shootGallery` (staged gallery on zenNelim studio) once owner confirms.

### Declarations and local scripts, 2026-10-11

Declared to Audit workflow (mod scripts), CI/CD (publication scripts) and PickleTools (local steps of `AnimalSteps.cs`, incl. four Mod options steps); messages delivered or queued behind running turns, no reply yet. AGENTS "Local scripts" (owner rule 2026-10-11): `scripts/Check-CiTemplate.ps1` showed drift in `.github/` (build-check.sh and its test); regenerated with `generate-publish-workflow.sh --replace` same values (templateStamp 7fb8f006c206, CI tests 75 pass, `Check-CiTemplate`: identical). Only local script, `Tests/test-xml.ps1`, has row and justification in `scripts/LOCAL_SCRIPTS.md` (13129ae); `Validated` stays empty until Virginie answers. `Check-ModBasics.ps1` passes on this mod (60 XML files, 42 defs).

CI copy (2026-10-11): my regeneration from working Release-Admin tree (stamp 7fb8f006c206) reverted at CI/CD's request: committed template is 82de20b8aa50, CI/CD changing it (common build.yml). `.github/` back at 82de20b8aa50 (scripts and tests identical; publish-tag.yml still old rules). One regeneration with same arguments, only after CI/CD's message and before publish. `xml-tests.yml` stays (outside template).

### Protocol update read, 2026-10-11 (AGENTS, AUDIT, GALLERY, PICKLE, STYLE, WORKSHOP_COMMENTS)

No cron, ScheduleWakeup, Monitor or watcher on Pickle ticket any more (rule 2026-10-11 supersedes 30-minute safety check of 2026-10-10): cron created for ticket 6a80 deleted at once; after ticket, 🟢 and wait for Ticket Manager's message. 32 px legibility test no longer workflow step (AUDIT 2.c: format and weight only), so that `unverified` entry void. Before handing gallery captures to Virginie, session opens each, gives verdict first, keeps only serious candidates in `Art/Gallery/` under 2 MB (shootGallery). Ticket 6a80 filed on 7a29f86: settings written, read after restart with five universal defs absent, then reset (feature 15, -Then, -NoBatch).

## Settings restart, 2026-10-12

Ticket 6a80 (7a29f86) produced no report: launcher read second -Then filter as language name. Resubmitted as 696a with -Then given as PowerShell array. Result: seq1 (option written), seq2 (read after restart, five universal defs absent), seq3 (reset to defaults) all passed. `settings_audit` now `complete`. Next: shootGallery once owner confirms; regenerate `.github/` at CI/CD template 7a8f3a601751 before publish.
2026-10-24: b7f7 (v6b) scenes 1 and 4 passed; 5 failed (the small power helmet has no husky tag, Apparel_AnimalPowerArmor.xml: husky helmet dropped from scenes 5 and 6), 2 failed (job Train refused, RopeToPen: replaced by a haul of Leather_Camel), 3 failed on a save-load timeout (rerun as is); c629 (v6a) no report (stall guard), folder deleted. Plan re-rated 3.8 (rate-gallery): composition and 268 px lines written for 1, 3 to 6 in bb15150. Ticket ef32 filed on bb15150 (scenes 2, 3, 5, 6, Inbox/gallery-v6c, wsl-deps.sanctuary.map). 2026-10-25 verdicts on b7f7: scene 1 fox kept as candidate (instant and outfit hold, fox small but wide shot, helmet and red collar readable, Nelim holds the collar), not yet in Art/Gallery (2.8 MB PNG, recompress under 2 MB at reindex); scene 4 goat refused (Nelim absent from frame, goat mail unreadable, bare brown ground, no story): scene 4 not in ef32, to recompose and refile with it. Scene 4 reworked the same day (write-shotlist 4): goat walks West ((194,152) to (191,152)), Nelim follows with Steel, fixed frame rectangle (190,150)-(196,153), daylilies (192,150) (195,150) foreground, tall grass (191,153) (193,153) and the x 190 flower border behind; b, f now ok, j weak (goat about a fifth of the width): estimate 3.5 to 4.5, series mean 4.4 to 4.5. Not filed: new ticket after ef32 digest. Scene 5 Nelim now smiles (MouthSmirkSmile, owner 2026-10-25: smile on default scenes; animal outfits and mouths are the session's call, wardrobe suggestions not validated). Pending answer: request to NPT via the TM (NPT archived) for a step holding an animal in place and facing during ticks (fox profile and goat drift in b7f7), plus whether walk to, follows, lies down were played; if NPT declines, tell the owner to arbitrate. Rating 2026-10-25: series mean 4.6 (1 4.5, 2 5, 3 4.5, 4 4.5, 5 4.5, 6 4.5; weak: j on 1, 4, 5, 6; f on 3). NSB canon (CATALOGUE-ANIMAUX): Yuki and Shogun wear only Apparel_leatherdogcollar, so the armoured husky of 5 and 6 stays a non-Yuki husky (GalleryHusky, ParadeHusky). Folders gallery-v6b and gallery-v6b-1 stay in Inbox until ef32 is digested. Open: ef32 result (scenes 2, 3, 5, 6), scene 4 recomposition; stale Art/Gallery/1-fox.png, 2-horse.png, 3-husky.png to delete at reindex.
2026-10-29: ef32 green 4 of 4 (scenes 2, 3, 5, 6; animal steps walk to, lies down, follows played, no proof beyond the captures). Verdicts: 2 horse kept (purple barding, saddle, Nelim holds the item; horse about 12 % of the frame, no statues visible, dim light: j weak, b weak); 3 bear kept (diaper, Z, Nelim beside: story clear); 5 husky refused (small, armour unreadable, Nelim back to camera, bare ground: recompose tighter, zoom in); 6 parade kept (cow, fox, husky, horse, Nelim with silver; animals scattered, wide). Art/Gallery holds 1, 2, 3, 6 as *-candidate-*.jpg (under 2 MB), 7 settings; stale PNGs deleted; Inbox emptied. Open: scene 4 goat refile, scene 5 husky recompose and refile (new ticket, scenes 4 and 5 together, with the DLL of NPT for stands at facing), polish per shot, subtitles, reindex.

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
