---
settings_audit: partial
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
workflow_stage: makeSources
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
remaining:
  - "2026-10-10: defect: Art/Preview-source.png fails the palette control of AUDIT 2.e (Measure-Palette.sh: 2 hue families, dominant 62%, but Vmean 0.266, floor 0.30; the warm light pool is a radial gradient/vignette). The owner decides: override or new source. Nothing regenerated here."
  - "2026-10-10: defect: Art/ModIcon-source.png (21 KB, 2026-09-29) is the shipped icon background-removed and alpha-trimmed, not the owner's full-resolution source (AUDIT 2.a); the full-resolution original is Art/ModIcon-original.png (1.4 MB, 2026-09-11) and Preview.config.json has no modIconSource key. Mod/About/ModIcon.png (2026-09-26) is older than ModIcon-source.png (2026-09-29): derivative stale by the AUDIT 2.b rule. The owner says which file is the source."
  - "2026-10-10: unverified: ModIcon 32 px legibility read today on a Lanczos 32 px render (head, wink and collar distinguishable; crowded by the style guide count, overridden by the owner 2026-09-26). Her override of 2026-09-26 predates the current rule text: to confirm."
  - "2026-10-10: defect: Art/ not the minimal set (PUBLISHING Images): Art/README-preview.md extra; the gallery folder is Art/gallery, the protocol says Art/Gallery; Art/ModIcon-original.png kept on purpose (see above). Working tree holds, not mine and left alone: modified Art/ModIcon.ico and Art/Preview.ico, untracked Art/ModIcon-signature-candidate.png (1.3 MB, 2026-10-04)."
  - "2026-10-10: defect: Mod root `_tools/` (build-about.sh, gen-french-review.mjs, preview.html, test-xml.ps1) must be scripts/ or Tests/ (AGENTS closing pass, step 3)."
  - "2026-10-10: defect: FRENCH_REVIEW.md is made by `_tools/gen-french-review.mjs`, not scripts/Make-FrenchReview.ps1; no repository-type line; its header still names the o-series neutral (rule since 2026-10-08: al system); em dashes in its title. The 102 French strings are unchanged since the review of 1d79353 and none agrees with a pawn, so translation_fr stays complete; regenerate the file with the script."
  - "2026-10-10: defect: Mod/About/About.xml author line 'Shenanigans, ... jptrrs - adapted by Nelim' must read '<original authors> - 1.6 adapted by Nelim' (PUBLISHING Nommage, 2026-10-10). Shipped file: changed at the next code commit, not by this audit."
  - "2026-10-10: defect: no TEST_SCENARIOS.md (AUDIT 7.a); the functional scenarios A-K live in TESTING.md. To rename or split."
  - "2026-10-10: defect: PUBLICATION.md says 'No captures exist' while Art/gallery holds 0-preview, 1-fox, 2-horse, 3-husky. Gallery table to align (writeDocs)."
  - "2026-10-10: defect: em dashes (U+2014, rule 2026-10-10) in README.md (16), CHANGELOG.md (12), TESTING.md (20), ATTRIBUTION.md (17), DEPENDENCIES.md (1), FRENCH_REVIEW.md (3). None in About.xml or PUBLICATION.md."
  - "2026-10-10: defect: STATUS.md was 71 KB; folded into docs/runs/ and this file today (lint threshold 40 KB)."
  - "unverified: sans-facultatifs green in English (bf865a3) and French (12e815f); the 15 scenarios skipped by requirement need their passes: RIMMSQOL shortcut 04 green 2026-10-02 (bb0bb9f, 22 passed); seven incompatibility checks in 05 (defName comparison, reruns queued, three source mods not installed locally); Odyssey pair, with-Odyssey green (67c3), without-Odyssey red/crashed (f360, rerun needed); save hand-over 11 green (removal chain 24dc240)"
  - "unverified: in-game primary settings access (Mod options, this mod's name), restart effects and persistence, scenario K"
  - "unverified: English and French runtime text, generated bills, MVCF commands and tooltips, optional integrations, Steam Deck layout"
  - "unverified: review captures redone (ticket 0979: camera bounded at root size 11); staged gallery on the zenNelim studio (ticket 4fac, pass wsl-deps.studio-gallery.map), then crop and enlarge into Art/gallery"
  - "unverified: scenarios E (firing in combat), G (restart with gear worn), J (armour values by a hit taken) have no automated form"
updated:      2026-10-10, full re-audit against the protocols of 2026-10-10 (3266bf3), see "Audit 2026-10-10"
protocols_read_sha: 3266bf3e8e4fed14206e2ba05ef96751e4fde5a4
---

# Animal Apparel: Collars and Kit Renew: status

This file is tracked in Git and kept outside the shipped Mod/ folder. Current state only: the dated
journal of 2026-09-13 to 2026-10-05 is folded into `docs/runs/README.md` (one line per section; the full
text stays in git history before the commit of 2026-10-10).

- **`workflow_stage`**: the state of the chain in AUDIT.md (fifteen states, camelCase). The old `stage` field is
  retired.
- **`tested_on`**: the date of the last run in game. Empty means never.
- **`dependencies`**: `declared` when every mod this one needs is named in the About's `modDependencies`.
  An undeclared dependency is not cosmetic: on 2026-09-11 another mod took 47 vanilla animals down with it
  because the class it injects belonged to a mod that was not declared.
- **`remaining`**: `feature` something missing, `defect` a known fault, `unverified` what could not be checked.
- **`licence`**: `silent` is an internal status, not a licence for the whole mod. Own contributions and Animal
  Equipment (Owlchemist, after jptrrs) are MIT within the scope of `LICENSE`; no licence or permission is
  established for the six other sources (Dipsy offered to update Animal Diapers on 2025-06-14). See ATTRIBUTION.md.

## Audit 2026-10-10

Revision audited: `388048f` (HEAD). Protocols: AGENTS.md 962c64f, AUDIT.md 3266bf3, MOD_SETTINGS.md and
TRANSLATIONS.md 06263cb, PUBLISHING.md 9f58f59 (Nommage and Images read in full, rest by section), STYLE_RIMWORLD.md
80ee012 (palette, ModIcon and Preview sections), PICKLE.md 80ee012 (not read: no run launched here),
Rimworld-Ticket-Dispatcher WELCOME.md read in full. Local changes in the tree belong to the owner and were left.

**Previous: `stage: done`, `workflow_stage: done` (old vocabulary, maps to `playTests`). Retained: `makeSources`.**
First failing transition: `makeSources -> code`, criterion 2.e (palette of the source illustration), with 2.a/2.b
(the icon source and its derivative) open for the owner. The three listed in `remaining` are defects of the art
sources, not of the mod; per AUDIT the audit changes none of them.

| Transition | Result |
| --- | --- |
| setupRepo -> makeSources | Established. Own repository, remote and pushed history; `(unofficial)` suffix and paragraph in About, README and `mod`; names coherent (packageId `nelim.animalapparelcollarsandkit`); ATTRIBUTION and LICENSE in root and `Mod/`; `Check-Status.ps1`: 0 errors. Author line format to fix (see `remaining`). |
| makeSources -> code | **Not established.** 2.a, 2.b, 2.c, 2.e, 2.f as in `remaining`. Prompt file absent (2.d/2.f fine). |
| code -> declareDependencies | Not re-judged beyond the build: shipped `AnimalApparelCollarsAndKit.Settings.dll` SHA-256 `E436B4CA9ADD781EB44F47391C40410F96BFDC97046556D9F2ACEEEDC9BAFA2B`, unchanged, equal to the committed one; sources unchanged since 2026-09-13. CHANGELOG holds `0.1.0` under Unreleased. |
| declareDependencies -> auditSettings | Cited from DEPENDENCIES.md (2026-09-13, gorilla patch added), unchanged; About `modDependencies` (Framework), `loadAfter` (Framework, Basic Armor, VEF Core, Giddy-Up 2, Combat Extended) and `incompatibleWith` (Dylan, the six sources, Animal Equipment) re-read today and consistent. Not applicable: the four animal integrations (this mod adds no race). |
| auditSettings -> localize | `settings_audit: partial` (was `complete`, which overclaimed: the in-game checks are `unverified`). Two Boolean options under Mod options -> mod name, hidden shortcut `AA_CK_Settings`, `Settings.Tests` **re-run today: 30 assertions passed** on the installed RimWorld 1.6 and VEF assemblies. The build rewrote the shipped DLL (non-deterministic); restored from git, hash above. Hidden shortcut played green with RIMMSQOL (bb0bb9f). |
| localize -> writeTests | 95 Def text fields and 7 Keyed strings in EN and FR; `translation_fr` reviewed by Virginie 2026-10-01 at `1d79353`, French files unchanged since. No French string agrees with a pawn (read, not searched). `FRENCH_REVIEW.md` to regenerate with the script (see `remaining`). |
| writeTests -> playTests | XML suite **re-run today: PASS 1273 checks** (60 XML files, 95 Def fields). Pickle suites written (`Tests/Pickle/`, 01 to 11, 20+ pass maps). Missing: `TEST_SCENARIOS.md`. |
| playTests -> shootGallery and later | Not reached. No `code_review_sha`, `echo_review_sha`, `publication_changelog_review_sha` or `social_preview_sha256`. Game results to date are in `docs/runs/README.md`. |

### What the owner decides

1. Palette of `Art/Preview-source.png` (Vmean 0.266 under 0.30, warm spotlight gradient): override, or a new source.
2. Which file is the icon source (`ModIcon-original.png` full resolution, or the trimmed `ModIcon-source.png`), and
   what `ModIcon-signature-candidate.png` and the two modified `.ico` files in the tree are.

### Next work to cross `makeSources -> code`

Owner answers above; then regenerate the derivatives (icon, Preview chain, `.ico`), clean `Art/` and the mod root
(`_tools/`), fix the About author line, regenerate `FRENCH_REVIEW.md`, rename `Art/gallery` to `Art/Gallery`,
replace the em dashes, align PUBLICATION.md. None of these needs a game run.

### Optional recommendations (not blocks)

- Scenarios E, G and J need new Pickle steps before they can leave `unverified`.
- Three source mods are not installed locally, so their incompatibility passes cannot stage; the About entries
  stay on the declared defName overlap.
