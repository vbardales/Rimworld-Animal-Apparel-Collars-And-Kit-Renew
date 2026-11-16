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
workflow_stage: declareDependencies[1.0.0]
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
workshop_required_items: n/a, not released yet (private prepublication 0.1.0 only; owner 2026-11-10: decided at 1.0.0; set by hand on the Steam page at the end of writeReleaseDocs or at publish)
upstream_synced: 2026-11-12 AnimalTurretPacks@c1c9852; animal-equipment@532e91a
showcase:     partial
tested_on:    2026-10-29 (tickets b86c settings French and f655 load audit French green on 1257b7e; EN and earlier runs in Tests/Pickle/Evidence)
workshop:     3806765840 (private 0.1.0 prepublication, 2026-09-23, from the game's upload button)
code_review_sha: 257f13e193592cb108c03c3c9dbfdb9e902b3683
  - "2026-10-12: unverified: Preview re-rendered with Art/echo-source.png (preSized, panelWidth 34, panelTop 8): the echo no longer crosses the title block, it touches the end of the word turret in the copy; Mod/About/Preview.png and Art/Gallery/0-preview.png identical; Preview 268 px reading and echo_review_sha stay for mountPreview"
remaining:
  - "2026-11-16: open: replay-audit moved the mod back to declareDependencies at 4.g: STATUS.md carries no dated dependency record (Docs/DEPENDENCIES.md is dated 2026-09-13 at 7060c62, 333 commits behind: CE patch, MVCF ModDef, Horse Plate incompatibility, Japanese and Chinese packs) and no workshop_required_items field (n/a, not released yet: private prepublication 0.1.0). Redo 4.g, then replay up to playTests; 8.h settings_audit passed after the FR and EN rerun, 8.i, 8.k, 8.m (code_review_sha stale, 32 files) stay open there. Ledger .replays/AnimalApparelCollarsAndKitRenew-20261116.tsv"
  - "2026-11-14: done: owner said yes (chat) to integrating the Japanese and then the Chinese pack 1998940296 (Mod/Languages/ChineseSimplified: 4 labels copied and marked, 107 fields written with Claude; Open item on the Chinese pack closed). Japanese translation without the author's agreement (no licence stated): Mod/Languages/Japanese (35 fields of Lucifel 2644824504 copied unchanged and marked, 76 fields + settings written with Claude, not native-reviewed); ATTRIBUTION.md section Japanese translation, PUBLICATION.md and About.xml AI sentence and thanks, CHANGELOG. Open: Chinese pack 1998940296 shares 5 defs (2020, no licence), not integrated, owner to decide; no Japanese Pickle scenario yet; Check-Translations is French-only (67 old findings unchanged); tell PiI the 5 study items are free; remove the Japanese on the author's first request"
  - "2026-11-14: done: ticket adc2 GREEN (muffalo review, 4806a1b, passed 1 failed 0): MVCF draws the turret on the muffalo after the AACK_MVCF ModDef; capture Tests/Pickle/Inbox/review-muffalo-4806a1b/screenshots/manual--muffalo-turret-pack--step0.png read (animal framed, turret pack readable, no tooltip, no HUD). Keep the folder as proof, move to Evidence per TEST-EVIDENCE at the non-regression pass"
  - "2026-11-13 23:04: waiting: ticket f324 (muffalo turret drawVerbs diagnostic, 01831b1, -Filter '03-turret-packs-vef::a muffalo carries a turret pack', wsl-deps.avec-vef.map, Inbox review-muffalo-01831b1). New step 'MVCF draws the turret of' reads MVCF VerbManager.drawVerbs: red message says whether the verb is not registered for drawing (NeedsDrawing false) or registered but never drawn (render path PawnRenderUtility.DrawEquipmentAndApparelExtras not called for animals, MVCF Feature_Drawing off). Tree frozen for feature 03 until RUN_DONE. Then fix, recapture. Hypotheses: H1 verb not in drawVerbs (red, empty list); H2 registered but vanilla never calls DrawEquipmentAndApparelExtras for animals or MVCF Feature_Drawing off; H3 drawn under the body (same altitude) or bad texture; H4 ShouldDraw false. If the step is green: add a Harmony diagnostic counting VerbManager.DrawVerbs calls"
  - "2026-11-13 22:20: read: ticket a76f green 1 of 1 (db62ed2, 11 s) but capture refused (verdict, owner confirmed in chat: no turret pack visible at all): muffalo pale blue, no tooltip, no HUD, no pack or turret drawn. Known cause: packs are AnimalInvisible, the turret is drawn only by MVCF VerbComp_Turret (VEF/ThingDefs_AnimalTurretPacks.xml), and it did not show on the capture. Evidence folder review-muffalo-db62ed2 is gone from Inbox (not pruned by this session). Next: find why VerbComp_Turret draws nothing in the capture (render-tree assertion exists in scenario E and passes), or drop the muffalo from the 8.d review proof as on 2026-10-18; then 8.i, 8.k, settings check, 8.m, 8.n"
  - "2026-11-13 21:43: waiting: ticket a76f (muffalo turret pack review, db62ed2, -Filter '03-turret-packs-vef::a muffalo carries a turret pack', wsl-deps.avec-vef.map, Inbox review-muffalo-db62ed2) filed, WAITING 20/20; replaces ffe0 (gone). Tree frozen for features 03 and the CE patch until RUN_DONE. At RUN_DONE open the capture, verdict first (animal framed close, no tooltip, no HUD, pack readable); then 8.i, 8.k, settings check, 8.m (code_review_sha stale after the CE patch), 8.n"
  - "2026-11-13: done: Combat Extended patch (owner, chat: ok pour le patch): Mod/Mods/CETeam.CombatExtended/Patches/AnimalEquipment_CE.xml carries the CE ModPatches/Animal Equipment values for our bases and defNames (scarf, clothes, bridle, power armour and helmet, VEF reins, universal power armour and helmet); flak and plate patches left out (no such bases here); Rule-OwnValues applies it with RequireMatch and reads one value per family back (mutation: a wrong xpath fails, then restored), PASS; Check-ModBasics PASS, unit tests PASS. Not played in game (CE not run in a Pickle ticket); description unchanged. PiI findings closed: 4 live rows = CE only (Framework declares Dylan incompatible, Giddy-Up 2 and Grimstone are load order only); AAF ships AnimalGear.dll with AnimalApparelDefExtension; Rimhammer, Universal Basic Armor, Heraldry 0 shared defNames, PiI unsubscribed them; Basic Armor and Vac Belt 0 shared. Still open: other Dylan-id mods are dead or false rows, nothing to port"
  - "2026-11-13: open: (1) PiI second Steam pass around Animal Gear (Dylan 1541438907) requested, answer pending, copy into Ecosystem; first study recorded 307c7fb (overlaps are the source mods, already incompatibleWith). (2) Translation: complete, all names decided (Vanilla Expanded Framework, Relics and Artifacts French forms, own mod title long form in AA_CK_Settings.description, TITLE sent to Audit; RimWorld and Nelim whitelisted); owner decisions in chat after validation at 3c9f8d3 cover edits up to 3b9eef6; grenade belts pour petit/grand animal. Optional: rerun /review-translation on HEAD. (3) Refile muffalo ticket ffe0 (DONE red exit 8, filter prefix fault; runner auto, never azure), Inbox already emptied. (4) CE coverage check: our Mods/CETeam.CombatExtended vs CE ModPatches/Animal Equipment families (Apparel_Flak, Plate, Spacer, Riding, VEF, Clothing, Accessories; AnimalNeck not found). (5) replay-audit not run (asked TM); Check-Translations 67 findings to review with Audit; 8.i, 8.k, Mod options settings check, 8.n; 8.m reopen (code_review_sha stale); nsb-sync warn; social_preview_sha256 stale; 1.6 and 1.7 upstream update PRs need her go (BACKLOG TODO)"
  - "2026-11-12: done: Horse_Plate_Armour declared incompatible again (owner, chat: go c; its plate, helmet and saddle are already in this mod, ecosystem study in BACKLOG): About incompatibleWith, texts say seven source mods, feature 13 and map incompat-horse-plate removed; Check-ModBasics PASS, unit tests PASS; description changed: translation review rerun on the new text, no Pickle scenario asserts this entry (no shared defName, ticket 0e84)"
  - "2026-11-12: done: Virginie said go for both upstream PRs (chat): Owlchemist/animal-equipment#1 and flangopink/AnimalTurretPacks#1 reopened, bodies updated, wording commits a2349b0 and 81e22ed on the fork branches add-rimworld-1.6; the 1.6 and 1.7 update PRs stay in BACKLOG TODO"
  - "2026-11-12: done: Virginie validated the translation review (chat, \"je valide la review\"), revision 3c9f8d3, TRANSLATION_REVIEW.md as committed; translation_fr complete. Upstream PR go still pending per PR"
  - "2026-11-12: done: upstream sync via gh (no clone): flangopink/AnimalTurretPacks head c1c9852 (2023-10-18) and Owlchemist/animal-equipment head 532e91a (2023-03-01), both older than the port, nothing new to integrate; the five other sources have no git repository (Workshop only, per upstream_mod_remotes): not compared, packages not installed. 1.6 and 1.7 upstream PRs each need her go, via fork branch, listed in BACKLOG TODO"
  - "2026-11-12: done: turret pack variants worded tourelle fusil à pompe embarquée pour petit/grand animal and tourelle à charge embarquée pour petit/grand animal (owner proposal). Previous: turret pack French word changed to tourelle embarquée (owner: the animals act as vehicles), labels now tourelle embarquée (à fusil à pompe / à charge) pour petit/grand animal; grenade belt labels not decided. Earlier line: Virginie agreed with ChatGPT that small/large qualifies the animal, not the pack: six French labels now read sac-tourelle (à fusil à pompe / à charge) pour petit/grand animal (0111d90 follows); word sac-tourelle kept; in-game width of the long labels not checked"
  - "2026-11-12: done: ChatGPT translation review (4 passes, last one clean at 4e308f8, TRANSLATION_REVIEW.md frozen): English wording fixes (high-tech, laid-back, riding designs, large turret packs, that controls, Settings help strings), Thanks list explicit, PUBLICATION wording; three refusals in Docs/review-refusals.md; translation_fr pending_review until Virginie validates. Upstream PRs (Animal Turret Packs: turret pack wording; Animal Equipment: riding, high-tech, laid-back): prepare fork branches only, open nothing until her go per PR (missions 21b, 21c). Check-Translations FAIL 67 findings (French keys for defs the load state does not load, VEF folder defs): not touched, to look at with Audit. replay-audit not run yet"
  - "2026-11-12: read: ticket 9a0d green 5 of 5 (15b66cb, Inbox review-close-15b66cb, 7 captures opened): fox red collar and blue helmet, horse purple barding gold chanfron green saddle, cow red scarf, husky collars (bow pink, shield brown, studded blue, reload blue) all readable, animal framed close, no tooltip, no HUD; verdict accept for 8.d (colonist in frame is Jet, test colony, not a gallery shot). Muffalo ticket ffe0: Inbox review-muffalo-052d081 holds 0 scenarios, no capture: state to check with the TM (check-tickets), refile on the new DLL if gone. Folders stay until ffe0 is settled, then Prune-Evidence. Next: 8.i, 8.k, Mod options settings check, 8.n; nsb-sync warn 2026-11-12 (run sync-nsb-npt before shootGallery); social_preview_sha256 stale (upload at publish)"
  - "2026-11-05: owner withdrew her validation of a per-scene expression for Nelim (chat): the smiles of the gallery scenes (shotlist column d, 12-gallery.feature mouths and lids, owner call of 2026-10-25) are unvalidated again; no capture of those scenes goes to her as validated, expression of Nelim to settle with her before the next gallery ticket (scenes 4 and 5 refile)"
  - "2026-10-17: unverified: French strings changed after four ChatGPT reviews and the owner's call (impersonal address): Keyed/Settings.xml (AA_CK_UniversalHelp, AA_CK_RelicsUnavailable), three shotgun labels (a pompe), GoatMail and horse saddle descriptions; FRENCH_REVIEW.md regenerated, XML suite PASS 1326; owner's French review of 2026-10-01 to redo on these strings; not committed. Open for writeDocs: Thanks section (the six authors above is ambiguous), CHANGELOG 1.0.0 date against the private 0.1.0."
  - "2026-10-18: unverified: gallery series recomposed on the owner request (7 images: fox, horse, cub in a diaper, goat, cow turret pack firing at a wolf, parade, settings page; plan in 12-gallery.feature, three new local steps in AnimalSteps.cs, VEF added to wsl-deps.sanctuary.map), committed d760478, played in tickets f09d to 8ac6 (see the shotlist section) (ticket 45dd, exit 125, no report, folder deleted); to subtitle (Art/Gallery-clean, Add-Subtitle.ps1, lines in PUBLICATION.md); unknowns: standable cells (goat bank, cub, parade, Nelim at 161,216), turret frame timing (40 ticks), diaper art on a cub; version stays 1.0.0 (owner, 2026-10-17); AACaK session code"
  - "2026-10-10: unverified: new Art/Preview-source.png (owner, 1672x941) passes the AUDIT 2.e measures: Measure-Palette.sh 2 hue families, dominant 84%, Vmean 0.480; no readable colonist face, quadrupeds in side profile, nothing upright (read at full size). 268 px reading and panel/badge placement to check at mountPreview, Preview chain not re-rendered yet."
  - "2026-10-10: unverified: new Art/ModIcon-source.png from the owner (1341x1173 RGBA, full resolution); derivatives regenerated by Render-Preview.cjs (key modIconSource added to Preview.config.json): Mod/About/ModIcon.png 128x128 26878 bytes, Art/ModIcon.ico, Preview chain. The 32 px legibility test left the workflow on 2026-10-11. 268 px reading of the Preview done."
  - "2026-10-10: defect: em dashes (U+2014) remain in ATTRIBUTION.md (17, root and Mod/ copies must stay identical) and CHANGELOG.md (12, append-only); removed from README, TESTING, DEPENDENCIES, TEST_SCENARIOS, FRENCH_REVIEW."
  - "2026-10-10: defect: STATUS.md was 71 KB; folded into docs/runs/ and this file today (lint threshold 40 KB)."
  - "unverified: English and French runtime text, generated bills, MVCF commands and tooltips, optional integrations, Steam Deck layout"
  - "2026-10-10: unverified: review captures are present but unreadable as images (camera bound at root size 11, a muffalo one with HUD and tooltip); proof rests on the passing render-tree assertions."
  - "2026-10-13: defect: Check-CiTemplate.ps1 shows drift in .github (steam-page.mjs, steam-publish.mjs, steam-page.test.mjs +1): regenerate at the CI/CD template stamp before publish."
updated:      2026-11-16, replay-audit (declareDependencies 4.g), earlier: 2026-10-29 replay-audit (writeTests 7.g)
protocols_read_sha: 03c85f871290381d597a7e2cd5abc2a314d80098
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
Remaining entries of 2026-11-05 to 2026-11-09 (tickets, SaveSteps chains, review captures) folded into `Docs/runs/2026-11-16-status-fold.md`.


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

## Dependencies

Checked 2026-11-16 at commit b2839b0 against About.xml, LoadFolders.xml, OptionalCompat.xml (detail and assembly hashes: Docs/DEPENDENCIES.md, revised the same day).
- Mandatory (`modDependencies`): Ingendum.AnimalApparelFramework, Workshop 3513825850.
- Ordering only (`loadAfter`): Ingendum.AnimalArmorBasic, OskarPotocki.VanillaFactionsExpanded.Core, MemeGoddess.GiddyUp, CETeam.CombatExtended.
- Optional integrations: the 32 targets of Mod/About/OptionalCompat.xml (Check-OptionalCompat OK, 32 declared); folders IfModActive in LoadFolders.xml (VEF with MVCF ModDef, Combat Extended, Giddy-Up, animal mods).
- Incompatible (`incompatibleWith`): Dylan.AnimalGear, Shenanigans.DogCollars, Annabelesca.PatchCollarMalinois, Dipsy.Diapers, flangopink.animalturretpacks, CSM.RealisticAwesomeGoat, Owlchemist.AnimalGear.Equipment, Horse_Plate_Armour.
- DLC: none required; Odyssey and non-Odyssey folders both load (supportedVersions 1.6).

## Ecosystem

Pass 2026-11-12 (missions item 24, docs/inventory/ecosystem-worklist.tsv, seven rows starting with "their"). Nothing sent outward.

- Combat Extended 2890901044: its ModPatches/Animal Equipment is gated on Owlchemist.AnimalGear.Equipment and patches the same defNames as ours (Apparel_Flak, Plate, Spacer, Riding, VEF, Clothing, Accessories), so it does not fire with our package id. Matters. Proposal (b): check that our Mods/CETeam.CombatExtended covers the same families, fill the gaps.
- Horse Plate Armour 2586212684: depends on and loads after Dylan.AnimalGear, not our id; one of our sources. Owner call: (a) ask the author or (c) declare incompatible (removed from incompatibleWith on 2026-10-10).
- Dropped as false: Armor for Dragons 1762734538 (1.0 and 1.1 only), Animal Apparel Framework 3513825850 (declares the original incompatible, our dependency), Giddy-Up 2 3674332861 and Grimstone Beasts 3535302121 (load order only), Red Wolves 2014889466 (name only).

Steam study by PiI 2026-11-13 (docs/inventory/ecosystem-steam/AnimalApparelCollarsAndKitRenew.md, pushed e4ad269): the real overlaps are Animal Equipment 2568865984 (13 shared defNames), Dog Collars 2644644983 and Animal Turret Packs 3053702877. All three are source mods of this merge and already in incompatibleWith (Owlchemist.AnimalGear.Equipment, Shenanigans.DogCollars, flangopink.animalturretpacks): overlap by design, nothing to add. Neighbours kept by pickle maps: Animal Apparel Framework, Basic Armor, Vac Belt (Ingendum), Animal Gear (Dylan), Simple Animal Gear (Aelanna). Weak: diapers, Goat Mail. Open from the pass above: CE coverage check of Mods/CETeam.CombatExtended.

Second Steam pass by PiI 2026-11-13 around Animal Gear (e8e42b5, section "Second pass" of docs/inventory/ecosystem-steam/AnimalApparelCollarsAndKitRenew.md; 840 hits, 454 pages read). Correction of the first study: Animal Equipment 2568865984 (versions 1.3 1.4), Dog Collars 2644644983 (1.3 1.4) and Turret Packs 3053702877 (1.4) are NOT alive on 1.6. Animal Gear add-ons: Basic 1541439112 (1.0-1.6), Horse 1541439350 (1.0, dead), Sub-Mod Pack 2644930961 (1.4-1.7), Third-Party Patches 2956961272 (1.4-1.7), 5 translations (ja, ru-zh, es x2, zh). Rewrites: Animal Equipment (dead), Simple Animal Gear (1.6 1.7), Animal Apparel Framework (1.6 1.7). 12 mods name the Dylan id (Combat Extended, Giddy-Up 2 x2, Grimstone Beasts, Medieval Horse Plate, Red Wolves, Bun Race, Armor for Dragons, 2 pphhyy retextures, Milking Machine, No Version Warning): all target the original id, none fires with our packageId unless we add their patches. Defname overlap: Animal Equipment 13, Dog Collars 4, Turret Packs 2, one each Goat Mail and four diaper mods. Limit: only mods in PiI's corpus or with a matching title. To judge with her: which of these patches we port (CE already pending).
