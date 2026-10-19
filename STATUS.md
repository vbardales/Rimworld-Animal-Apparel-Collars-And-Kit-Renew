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
workflow_stage: shootGallery[1.0.0]
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
code_review_sha: c3bbe10ba7a90f7b3522b727f7ee92b63b739475
  - "2026-10-12: unverified: Preview re-rendered with Art/echo-source.png (preSized, panelWidth 34, panelTop 8): the echo no longer crosses the title block, it touches the end of the word turret in the copy; Mod/About/Preview.png and Art/Gallery/0-preview.png identical; Preview 268 px reading and echo_review_sha stay for mountPreview"
remaining:
  - "2026-10-19: unverified: evidence migrated to the Inbox model (13 minified greens in Tests/Pickle/Evidence, each with RELEASE.md); replay tickets filed at 43e6f48 to refresh likely-stale proofs: 49a1 idle colony, 939d load audit + with Odyssey (avec-animaux), ff6b settings French (avec-vef); at RUN_DONE read summary.json then junit.xml, Prune-Evidence -Apply replaces the old folders idle-7cd2067, with-odyssey-7cd2067, loadaudit-c3bbe10, settings-fr-ac6b7e6; french-review stale (Make-FrenchReview.ps1)"
  - "2026-10-17: unverified: French strings changed after four ChatGPT reviews and the owner's call (impersonal address): Keyed/Settings.xml (AA_CK_UniversalHelp, AA_CK_RelicsUnavailable), three shotgun labels (a pompe), GoatMail and horse saddle descriptions; FRENCH_REVIEW.md regenerated, XML suite PASS 1326; owner's French review of 2026-10-01 to redo on these strings; not committed. Open for writeDocs: Thanks section (the six authors above is ambiguous), CHANGELOG 1.0.0 date against the private 0.1.0."
  - "2026-10-18: unverified: gallery series recomposed on the owner request (7 images: fox, horse, cub in a diaper, goat, cow turret pack firing at a wolf, parade, settings page; plan in 12-gallery.feature, three new local steps in AnimalSteps.cs, VEF added to wsl-deps.sanctuary.map), committed d760478, played in tickets f09d to 8ac6 (see the shotlist section) (evidence Tests/Pickle/Inbox/gallery-v4 (ticket 45dd)); to open, judge, keep under 2 MB, then subtitle (Art/Gallery-clean, Add-Subtitle.ps1, lines in PUBLICATION.md); unknowns: standable cells (goat bank, cub, parade, Nelim at 161,216), turret frame timing (40 ticks), diaper art on a cub; version stays 1.0.0 (owner, 2026-10-17); AACaK session code"
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
updated:      2026-10-10, full re-audit against the protocols of 2026-10-10 (3266bf3), see "Audit 2026-10-10"
protocols_read_sha: 7d3b1f5a26a32c297c2c12758979e0a909f674a1
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
## Shotlist, 2026-10-18 (skill write-shotlist, criteria a to j of GALLERY.md, feature `12-gallery`, pass `wsl-deps.sanctuary.map` with VEF)

Story: market morning at the Sanctuary, Nelim gets her troop ready for the parade (fox 08:00, horse 08:05, grizzly 08:10, goat 08:15), a wolf comes and the cow's turret pack answers (08:20), the troop parades out (08:25). Every scene gives Nelim her own outfit, hairstyle, hair colour, expression and a held piece (colours and defNames are written scene by scene in the header of the feature file); decor is named, placed for one image and removed after it (\); no prop is reused. Scene 7 (settings window at the centre of the screen) is an interface scene, set aside from the estimate. Audit relay of 2026-10-18 read (GALLERY-SHOTLIST-AUDIT.md: same outfit everywhere, no decor removal, catalogue plate for the horse, no action for 4 and 6, turret pack invisible): each point answered above.

Criteria a to k of GALLERY.md, scene by scene (shotlist skill display, 2026-10-19). Scene 5 reworked: dandelions instead of the grass of scene 1, Pigtails instead of the Ponytails of scene 1.

| # | a time frame | b decor (removed after) | c living | d Nelim (outfit, hair, face) | e action | f composition | g says | h risk -> plan | i plate? | j mod | k episode | Est. |
|---|---|---|---|---|---|---|---|---|---|---|---|---|
| 1 fox | barn, 08:00, clear, +0 | grass x2 (202, 238), (201, 238) | arctic fox, front (South) | mustard shirt, brown trousers, Ponytails brown, smile, cheerful lids | holds leather, picks the next collar | zoom 3 then 4, fox off-centre, Nelim left | collars and helmet fit the smallest | held item unreadable -> two frames | no | collar, helmet | she starts with the smallest | 4 |
| 2 horse | statue-garden, 08:05, +5 min | daylily x3 | horse in profile (East) | rust duster, white shirt, tan trousers, brown hat, Flowy brown loose, small smile, squinting | holds camel leather (the bridle's stuff) at the horse's head | zoom 6 then 8, statues behind, Nelim right | a full set for the biggest | crowded cells, hair under the hat unverified -> next-to step, nearest-cell fallback, read the hair on the first capture | no | barding, chanfron, saddle | harnessing | 4 |
| 3 grizzly | sofa-corner, 08:10, +10 | two lit torches | adult grizzly in profile (East) | lavender robe, cream trousers, Curly black, little grin, sleepy lids | holds cloth, eyes the bear | zoom 4 on the bear, Nelim left, lamplight | diaper for the big ones | bear too big for the cells, diaper hidden -> profile, nearest-cell fallback, render-tree check | no | diaper | morning care | 4 |
| 4 goat | bare-clearing, 08:15, +15 | daylily x2, grass | goat in profile (East) | sage shirt, charcoal trousers, FancyBun auburn, smirk, raised brows | holds steel, checks the mail | zoom 3 on the goat, goat right, flowers in the corners | armour for the toughest climber | mail small or hidden -> profile, zoom 3 | no | goat mail | fitting the mail | 4 |
| 5 husky | enclosure-south, 08:20, +20 | dandelion x2 | husky, front (South) | olive jacket, orange shirt, dark trousers, Pigtails black, smirk, hardened lids, raised brows | holds plasteel, checks the armour fit | zoom 4 on the husky, Nelim left, early light | collars sit on top of the armour | collar hidden under the armour -> render-tree checks on the three pieces | no | AnimalNeck slot, armour, helmet, shield collar | armouring | 4 |
| 6 parade | enclosure-south, 08:25, +25 | daylily x2 | fox, husky, cow, horse in profile, staggered | crimson shirt, cream trousers, navy beret, Long black loose, wide smile, raised brows | holds twenty silver, leads to the market | rectangle 19 x 8, Nelim foreground facing the camera | the whole troop heads out | cells flatten into a row -> widen the offsets (read on the run: it reads as a procession) | no (staggered, profile) | every piece together | the parade | 4 |
| 7 settings | window-backdrop-for-height | | | | | | | | | | | interface window, set aside |

Hat rule (GALLERY.md d, 2026-10-18): the sanctuary pass now mounts Show Hair Under Stuff (RaccoonCuddler.ShowHair, 3255379190, found with Search-Workshop, About.xml lists 1.6 and 1.7); hats only in scenes 2 (cowboy hat, Flowy dark brown) and 6 (beret, Long black), both long loose hair; scene 3 is Curly black, scenes 1 and 5 keep ponytails (no hat). Risk: the mod may not hide hair on a hat it does not know; plan: read the hair under the hat on the first capture of 2 and 6, switch to Hat Hair Control (lordfelix.HatHairControl, 3760821540) if it shows none.

Run 2eac (6b605ec, exit 1, evidence gallery-v2): 4 of 7 passed. Verdicts read on the captures: 4 goat REFUSED (goat and Nelim about 50 px, the mail unreadable: rectangle tightened to 8 x 6); 5 turret REFUSED (the camera ended away from the cow, Nelim had walked off and dropped the bow once the game ran: now three scenarios 5a/5b/5c, paused after 12, 24, 36 ticks, Nelim put back and the camera framed again after the run); 6 parade REFUSED as framed (animals too small at 24 cells, staggering and the beret read fine: rectangle tightened to 19 x 8); 7 settings ACCEPTED (readable, to crop around the window). Failed: 1 (second grass at (205, 237) is a Wall: moved to (201, 238)), 2 and 3 (a carried stuffed apparel logs MakeThing stuff=null: held pieces are now Leather_Plain, Leather_Camel, Cloth). Replayed in a new ticket.

Run 8ac6 (2aa89e8, gallery-v3 run, 7 of 8 passed, folder deleted after reading) read on the captures: 1 fox ACCEPTED (readable collar and helmet, Nelim, straw, braziers); 6 parade ACCEPTED (procession reads, beret and daylilies, collars and helmet visible; the horse is dark so the purple barding hardly shows); 3 grizzly REFUSED (seen from the front the diaper is not visible: bear and goat now in profile, zoom on the animal); 4 goat REFUSED (still about 60 px, mail hidden from the front: profile, frame the animal at zoom 3); 5a/5b/5c turret REFUSED and the scene DROPPED: the pack is invisible and no shot or impact reads (the cow, a wolf and Nelim in a field), replaced by the husky in armour with a shield collar, which shows the AnimalNeck slot; 2 failed (Pickle Tools stands-next-to takes a colonist, not an animal: new local step, the colonist stands next to the animal). Rerun of 2, 3, 4, 5 filed. Evidence now follows the Inbox model (AGENTS.md): runs in Tests/Pickle/Inbox/, greens minified into Evidence/ by Prune-Evidence, old reds still in Inbox to study then delete.

Lowest estimate 4. Tickets f09d, fb09 and 5345 cancelled (tree changed); a new ticket is filed after the commit.
