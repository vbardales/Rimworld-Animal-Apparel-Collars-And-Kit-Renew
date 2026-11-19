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
workshop_required_items: n/a, not released yet (private prepublication 0.1.0 only; owner 2026-11-10: decided at 1.0.0; set by hand on the Steam page at the end of writeReleaseDocs or at publish)
upstream_synced: 2026-11-12 AnimalTurretPacks@c1c9852; animal-equipment@532e91a
showcase:     partial
ecosystem_line: 1.0
tested_on:    2026-11-17 pickle 488a4a0 (tickets 54d5 settings restart, ca83 Odyssey and Giddy-Up 2, 8931 without Odyssey green on 488a4a0; earlier 2026-11-16/17 greens on e9e40b6 and 5cebdca; runs in Tests/Pickle/Evidence, one line per run in Docs/runs/README.md)
workshop:     3806765840 (private 0.1.0 prepublication, 2026-09-23, from the game's upload button)
code_review_sha: dc152c1e47984a1db531a4e21e55eb7ca3319cfc
echo_review_sha: e3efdd3ca41cc0c5b88e4fe45e47a6e22058a9db
  - "2026-10-12: unverified: Preview re-rendered with Art/echo-source.png (preSized, panelWidth 34, panelTop 8): the echo no longer crosses the title block, it touches the end of the word turret in the copy; Mod/About/Preview.png and Art/Gallery/0-preview.png identical; Preview 268 px reading and echo_review_sha stay for mountPreview"
remaining:
  - "2026-11-19: read: ticket 5f6a green 3 of 3 (c26894e, exit 0, skipped 0, set sanctuary), three captures opened (west, south, north; 2 bare goats bottom row, 2 mailed goats top row): the mail now covers head, neck, shoulders and torso on white and grey goats, helmet on the head, rump bare (accepted, plates sit on the body outline). Proof: Tests/Pickle/Evidence/goat-fit-c26894e (summary, junit, 3 jpg at 1000 px); Inbox and Parked/goat-fit-58510b8 deleted. Replay 2026-11-19 (ledger .replays/AnimalApparelCollarsAndKitRenew-20261119.tsv): sections 1 to 7 done, first open 8.a: Mod/ changed after the tested sha 488a4a0 (c26894e, five goat mail PNG), so 8.c, 8.l, 8.m reopen (8.d, 8.f to 8.k to re-prove by small tickets on HEAD). NO gallery capture now (none before shootGallery). Next at playTests: small Pickle tickets on HEAD for the suites the goat sprites touch (ticket 5f6a 19-goat-fit already green on c26894e), 8.m review of the diff cbefc26..HEAD (five PNG, then code_review_sha), tested_on, 8.n; then at writeShotlist and shootGallery: gallery 4 (goat) and 6 (parade) redo on the new sprites, score-gallery, rate-gallery by the session, then the Preview prompt (lighter, no icon corner) and the new Art/Preview-source.png (1555b49, not rendered, not checked for the goat mail). Owed: sync-nsb-npt NPT part (WARN 2026-11-19), code_review_sha stale (only the goat sprites changed)"
  - "2026-11-18: note: goat mail sprites rebuilt offline (scale and shift per view, masks eastm and southm transformed the same way, no Goat_northm exists): Goat_east x1.25 mirrored, Goat_south and Goat_north x1.5, commit c26894e"
  - "2026-11-18: note: gallery 1 to 7 captured and subtitled (Art/Gallery-clean originals, Art/Gallery subtitled, 7-settings no subtitle, owner accepted 2026-11-18); 4 and 6 to redo for the goat mail only; workflow_stage stays code[1.0.0] while the sprite defect is fixed"
  - "2026-11-17: done: 8.m code review CLEAN (cbefc26); 8.j, 8.k, 8.l settled (tickets 54d5, ca83, 8931 green on 488a4a0, tested_on set)"
  - "2026-11-16: unverified: Japanese, Chinese and the four new translations (ChineseTraditional, Russian, Spanish, SpanishLatin) not native-reviewed; Check-Translations is French-only"
  - "2026-11-13: defect: Check-CiTemplate.ps1 drift in .github before publish (regenerate at the CI/CD template stamp)"
  - "2026-10-13: unverified: English and French runtime text, generated bills, MVCF commands and tooltips, optional integrations, Steam Deck layout"
  - "social_preview_sha256 stale: upload Mod/About/Preview.png again at publish, then record the sha256"
updated:      2026-11-19, replay-audit (playTests 8.a)
protocols_read_sha: 3791816069262e8ccd25932d115531ab5abc9350
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

Sync 2026-11-17 (skill sync-nsb-npt, stage writeShotlist: only noted here, the shotlist and `12-gallery.feature` are rewritten by write-shotlist). Replaces the two NSB sections of 2026-11-05. Owner rules (2026-11-05, 2026-11-07): everything in NSB is free (places, colonists, domestic animals); a colonist or domestic animal outside NSB needs her express validation, except an animal the mod adds or whose items address it (authorized by default, 2026-11-07); a colonist's properties change only with her validation; every outfit is free; every animal the mod includes must be in the gallery.

What changed in NSB since 2026-11-05 (VALIDE.md, `git log` of Docs): the hold of 2026-11-05 is lifted. Every place is validated (barn 2026-11-06 and 2026-11-09, statue-garden 2026-11-06 and 2026-11-07, sofa-corner 2026-11-07, bare-clearing 2026-11-07 among the free zones, enclosure-south 2026-11-08: "Nelim" flower logo, zones 3 to 15, nothing standing on it, a few flowers missing, accepted). Nelim validated (appearance incl. hair `Roo_HD_Hair_Highpony`, outfits). Colonists validated since: Soren, Blue (date to redo after VTW), Jiro, Emi, Quill, Celeste, Quo, Quaren, Ada, Lyra. The 2026-11-17 commits are body, sex and VTW work: nothing touches the gallery places or animals.

Nelim per-scene smile: VALIDATED 2026-11-17 (chat, owner: "Nelim peut sourire"), covers Nelim and the written scene mouths of the gallery. NSB VALIDE.md ("Liberté de scène", owner quote 2026-11-06) says a scene expression is free, but her chat message of 2026-11-05 here withdrew it and no later chat quote reached this session: answered, see the validation above.

Reads: Places read: 2026-11-17 (partial: VALIDE.md places table and the "Pas encore validés" section; SANCTUAIRE-LIEUX.md "Qui une galerie peut utiliser" and "La faune de la sauvegarde"; CASES and EMBELLISSEMENT not opened). Tribe read: 2026-11-17 (partial: VALIDE.md characters and animals sections, CATALOGUE-ANIMAUX; NELIM-PROFIL, ROSTER, APPARENCES-CANON, animal sheets not reopened, no Nelim change in the Docs log since 2026-11-05). Steps read: 2026-11-19 (NPT log since 2026-11-17 read: only face-parts.md vanilla face section and FACIAL-ANIMATIONS.md; nothing renamed or removed that 12-gallery.feature calls. Usable for the goat 4 and parade 6 redo: step `facial expression is "normal"` after a face kit plus map temperature 20 at the start removes the heat face (red cheeks, pale forehead) on Nelim; not in 12-gallery.feature today, add at the redo if the capture shows the heat face) (earlier read 2026-11-17, partial: PickleTools commit list since 2026-11-05, the entry "the main bar, the speed controls and the mouse-over readout are hidden" of Docs/steps.md; other new steps (decor, floors, filth, work givers, sex, vanilla face) serve no shot). Re-read 2026-11-18 (sync-nsb-npt, NPT part): PickleTools commits since 2026-11-17 touch only ColonistRace/docs/catalogues/face-parts.md (vanilla face section, 287e7293 and ace6816b), no step and no animal, apparel or look entry: nothing serves or breaks a gallery scene. NSB since 2026-11-17: Iori, BiB gene renames, Miel, Daichi and Dalia validations (no gallery place, animal or Nelim change) and a plan only, not built, to rebuild the save as Nelims-tribe-v2 (Docs/RECONSTRUCTION-SAUVEGARDE.md, gates open): the gallery keeps the current fixture and the same site names, centres and zooms; watch it before the next refile.

NPT: new step for the review captures: `Nelim's Pickle Tools: the main bar, the speed controls and the mouse-over readout are hidden` (Given, ScreenshotStudio), no description yet in steps.md: use it for the gallery (no HUD, no tooltip), played status unknown, ask PiT before relying on it.

| Place | Shots | Changes for the gallery | Last read |
| --- | --- | --- | --- |
| barn (196, 237) | 1 | tall grass (201,238) (202,238) falls in the furnished east extension (x 199-204): check at refile | 2026-11-17 |
| statue-garden (155, 99) | 2 | daylilies x3 | 2026-11-17 |
| sofa-corner | 3 | two lit torches | 2026-11-17 |
| bare-clearing | 4 | daylilies, tall grass | 2026-11-17 |
| enclosure-south | 5, 6 | dandelions, daylilies; nothing on the flower logo cells | 2026-11-17 |

| Colonist | Shots | Outfit per shot | Last read | Exceptions |
| --- | --- | --- | --- | --- |
| Nelim | 1 to 6 | one outfit all day (a free outfit, the story says which; the daily `LTS_Tunika` emerald and earrings are validated) | 2026-11-17 (VALIDE.md) | hair: roster `Roo_HD_Hair_Highpony` validated, the shotlist v6 `Ponytails` (90,58,32) is outside the roster: drop it at write-shotlist. Smile per scene: validated 2026-11-17 ("Nelim peut sourire", chat) |

| Animal | Shots | Outfit | Last read | Exceptions |
| --- | --- | --- | --- | --- |
| arctic fox "GalleryFox" | 1, 6 | red collar, blue helmet | 2026-11-17 (not in NSB) | outside NSB; owner 2026-11-05 "je valide le renard arctique" (chat) and authorized by default (mod items address it) |
| horse | 2, 6 | purple barding, gold chanfron, green saddle | 2026-11-17 (save fauna, anonymous) | none: 13 horses in the save, free as a species |
| grizzly | 3 | pale blue diaper | 2026-11-17 (save fauna, 1) | none |
| goat | 4, 6 | goat mail | 2026-11-17 (not in NSB) | outside NSB; owner 2026-11-05 "je valide pour la chèvre" (chat) and authorized by default |
| husky "GalleryHusky" | 5, 6 | armour, helmet, shield collar | 2026-11-17 (save fauna, 3) | not Yuki (Yuki wears only the leather collar, her wardrobe was validated 2026-11-06 for the NSB set) |
| cow | 6 | scarf | 2026-11-17 (save fauna, 4) | none |

Included animals (rule 5): the mod adds no animal (no PawnKindDef, no race def: apparel, collars, turret packs, patches for other mods' animals; the BunRace folder is textures and a patch). No row, no MISSING.

## Shotlist v7, 2026-11-17 (skill write-shotlist after sync-nsb-npt; header and scenarios in `12-gallery.feature`, pass `wsl-deps.sanctuary.map` with VEF)

No capture yet: rating the plan. Same story as v6 (one market morning at the Sanctuary, Nelim keeps one outfit, start hour 8, cumulative waits 60, 268, 477, 685, 833, 1042 ticks, Clear). What changed: NSB lifted its hold (all places validated, Nelim keeps her roster hair `Roo_HD_Hair_Highpony`, the `Ponytails` override is gone); a lit `TorchLamp` and a `Plant_Bush` added to scenes 1, 2, 4, 5, 6 (thin-decor rule of 2026-11-07); Opus director pass (one call), kept: fox arrives without its helmet and Nelim carries it (scene 1), the same fox wears it in scene 6 (before and after); scene 1 frame tightened to (197,233)-(207,239); scene 2 rectangle (150,100)-(162,108) instead of `frame the animal` (horse in the left third), retitled "brings bridle leather"; scene 4 Nelim carries `Hay` (a reason for the goat, was steel); scene 5 mouth `MouthLipsSmirk` (roster mouth, not the same face as scene 4) and a `Pemmican` treat (was plasteel); scene 6 goat in its mail replaces the cow, Nelim ahead of the troop at (156,213), frame (144,211)-(162,219). Not kept: scene 3 rectangle with the sofa (the zoom 4 frame stays, sofa corner is already furnished), scene 4 reversal (goat follows Nelim) and scene 5 move to (146,221) (cell and follow behaviour unverified, new risk), shorter LayDown wait (kept 60).

Smile: validated by the owner 2026-11-17 (chat, "Nelim peut sourire"): per scene mouths written with their reason (GALLERY.md d); scene 5 keeps the roster mouth MouthLipsSmirk on purpose (variety).

| scene | a | b | c | d | e | f | g | j | plan |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 1 fox, barn 08:00 | barn, 08:00, Clear, 60 ticks | grass x2, Plant_Bush, lit TorchLamp, barn wall | arctic fox South (front), red collar | mustard shirt, brown trousers, olive jacket, roster hair, MouthSmile LidCheerful | carries the helmet to the fox, haul 40 ticks, pause | rectangle (197,233)-(207,239), low sun east | Nelim is about to fit the helmet on the fox | weak: fox about 24 px per cell at 268 px | 4.5 |
| 2 horse, statue-garden 08:05 | 08:05, 268 ticks | 3 daylilies, Plant_Bush, lit TorchLamp, statues | horse East | same outfit, MouthLipsSmallSmile | haul of Leather_Camel to the head, 30 ticks | rectangle (150,100)-(162,108), horse left third | a full set for the biggest | horse about a quarter of the frame height | 5 |
| 3 grizzly, sofa-corner 08:10 | 08:10, 477 ticks | two lit TorchLamp, sofa corner furniture | grizzly asleep (LayDown) | same outfit, MouthLittleGrin | tiptoes up with spare Cloth | zoom 4 | a diaper for the big ones | bear fills the frame, diaper pale blue | 5 |
| 4 goat, bare-clearing 08:15 | 08:15, 685 ticks | 2 daylilies, 2 tall grass, Plant_Bush, lit TorchLamp, flower border | goat West | same outfit, MouthSmirkSmile BrowRaised | goat steps off, Nelim hauls Hay behind it | rectangle (190,150)-(196,153) | mail for the toughest climber | weak: goat about 55 px at 268 px | 4.5 |
| 5 husky, enclosure-south 08:20 | 08:20, 833 ticks | 2 dandelions, Plant_Bush, lit TorchLamp, fence | husky South toward the camera (front) | same outfit, MouthLipsSmirk LidNormal | husky trots 40 ticks, Nelim holds Pemmican | frame the animal, zoom 4 | collars have their own slot | weak: husky about a fifth of the frame height | 4.5 |
| 6 parade, enclosure-south 08:25 | 08:25, 1042 ticks | 2 daylilies, Plant_Bush, lit TorchLamp, fence | fox, husky, goat, horse, all in their sets | same outfit, MouthClassicSmile LidCheerful | Nelim hauls 20 Silver, troop follows | rectangle (144,211)-(162,219), Nelim ahead | the whole troop heads out | weak: about 11 px per cell | 4.5 |

k (series): ok. Opening wide (1), closing wide (6), medium (2, 5), tight (3, 4), the thing carried is the thing being fitted or the reward (helmet, bridle leather, cloth, hay, treat, silver). Plan mean 4.67. Gate "no ticket below 5": scenes 1, 4, 5, 6 stay at 4.5, the j malus is assumed (small animals at 268 px, the wide bookends and the follow-up shots carry the mod elsewhere: collars and armour read in 2, 3). Main risks: LayDown in 3, `follows` for animals in 6 (never played), new decor cells (TorchLamp and Plant_Bush cells unchecked), scene 1 barn grass in the furnished east extension, enclosure-south logo cells (nothing may stand on them). Rated from the plan only: no capture opened, no step verified. Old candidates 1, 2, 3, 6 of v6 deleted (scenes rewritten, GALLERY.md rule of 2026-11-06); 7 settings kept.

## Settings audit

Re-read 2026-11-16 at b2839b0 (the C# code last changed 2026-09-13, 7060c62; since then only texts changed). Evidence: Source/*.cs and Mod/Languages/*/Keyed/Settings.xml read now; Run-UnitTests 30 assertions PASS now; Pickle results in Docs/runs/README.md and Tests/Pickle/Evidence/settings-fr-e9e40b6.
- Inventory: two toggles stored in VEF's own `toggablePatch` dictionary (`VFEGlobal.settings`): "Disable universal animal apparel" (default off, removes the five universal pieces) and "Exclude animal apparel from relics" (default on, effective only with Vanilla Ideology Expanded - Relics and Artifacts, grey help text otherwise), plus "Restore defaults". No other setting.
- Decision: both are useful and concrete (placeholder art; relic selection). Settings need VEF, so the assembly, page and shortcut sit in the VEF-gated folder Mods/VEF; without VEF the mod has no setting and shows no empty page.
- Access: Mod options, then the mod name (`SettingsCategory` = mod name), no XML edit, no RIMMSQOL needed. Shortcut: MainButtonDef AA_CK_Settings, hidden by default (feature 04, Rule-OwnValues hidden-shortcut fact, PASS now).
- Timing: global to all saves, applied after restarting RimWorld (help text says so, key AA_CK_SettingsScope); VEF choices preserved.
- Texts: English and French keys AA_CK_*, plus Japanese and Simplified Chinese; scroll and text-height-aware rows for French.
- Tests: Settings.Tests 30 assertions on the real RimWorld and VEF assemblies (PASS 2026-11-16); Pickle feature 14 primary access, English 5190 and French 171c PASSED 2026-10-11; feature 15 restart round trip 3/3 PASSED 2026-10-12; French settings page run settings-fr-e9e40b6 green 2026-10-29. Expected and observed are in Docs/runs/README.md.
- Not verified: layout and clipping as an image (opening only was asserted), RIMMSQOL integration, Steam Deck layout. Listed in `remaining` as unverified. `settings_audit` stays `complete`; `passed` needs the French and English replay at 8.h.

## Translation audit

Written 2026-11-16 at b2839b0.
- Languages: English (source in Defs, plus Mod/Languages/English/Keyed/Settings.xml), French (Mod/Languages/French: Keyed/Settings.xml and DefInjected for BodyPartGroupDef, MainButtonDef, ResearchProjectDef, ResearchTabDef, ThingDef Apparel_CollarsAndKit, Apparel_Universal, ThingDefs_AnimalTurretPacks), Japanese and Simplified Chinese (integrated 2026-11-14, owner yes, AI-completed, not native-reviewed; ATTRIBUTION.md credits Lucifel and Chinese pack authors), plus Traditional Chinese, Russian, Spanish and SpanishLatin (2026-11-16, owner order, one language per Animal Gear translation found: Nevelian ru-zh 2894662683, kaiza es 3022247253 and 3022246963; no def shared, nothing copied, 8 files and 118 fields each, written with Claude, not native-reviewed, no ChatGPT review yet, doubtful terms listed in the reply of 2026-11-16).
- French checks read now: no vous, tu, nous or possessive address in Mod/Languages/French; no text agrees with a pawn (no PAWN_gender), so 6.e not needed; Source holds no hard-coded display text (keys through Translate).
- Review: ChatGPT /review-translation, four passes, last clean at 4e308f8; refusals in Docs/review-refusals.md; Virginie validated the French on 2026-11-12 (chat, "je valide la review") at 3c9f8d3, owner decisions in chat cover French edits up to 3b9eef6 (2026-11-13).
- Second validation: Virginie validated the French again on 2026-11-16 (chat, "je valide la relecture") at revision 1d8af10, covering the edits since 3b9eef6 (631385b, d2e11cc, 4dece61, 48f55c6 and the ChatGPT rounds 1 to 8 of 2026-11-16: page 1 clean at round 8, nothing applied). translation_fr stays complete. The four new languages (Traditional Chinese, Russian, Spanish, Latin American Spanish) and the corrected Japanese and Chinese fields are not native-reviewed.
- Check-Translations PASS since 2026-11-16 (Audit ruling (b)): the DefInjected files of the VEF-only defs (MainButtonDef ApparelSettings, ThingDef Apparel_Universal and ThingDefs_AnimalTurretPacks, and the two ATP research defs split out as ResearchProjects_ATP.xml) moved in all 7 languages to Mod/Mods/VEF/Languages/<Lang>/DefInjected/, under the same IfModActive gate as their defs. Only the file location changed: the 111 key and text pairs per language are identical to HEAD before the move (compared by script), so Virginie's French validation of 2026-11-16 (1d8af10) stands. Mechanical review of 8.m still due on these moved files.

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

Delta by PiI 2026-11-19 (section "Refresh 2026-11-19" of the same report): nothing new since 2026-11-13, no fork, rewrite, replacement, patch, retexture or translation of Animal Gear, Dog Collars, Turret Packs or Animal Equipment; Animal Gear 1541438907 and Sub-Mod Pack 2644930961 updated 2026-11-13 (content not re-read); verdict unchanged, ecosystem_line 1.0.

8.m code review 2026-11-19 (diff cbefc26d..HEAD of Mod and Source, read by the session): five goat mail PNG only (Goat_east, Goat_eastm, Goat_north, Goat_south, Goat_southm, all 512x512, same names, no def, no code, no patch) plus OptionalCompat.xml (exception, workshop ids). Rendered in ticket 5f6a captures (west, south, north opened, mail covers neck, shoulders, torso). CLEAN, no defect; Source unchanged since 7060c62.
