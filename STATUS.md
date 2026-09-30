---
settings_audit: complete
rights_audit: complete
modicon_audit: complete
preview_audit: complete
automated_tests: complete
xml_tests: complete
localization: complete
translation_en: complete
translation_fr: partial
mod:          Animal Apparel: Collars and Kit Renew (unofficial)
packageId:    nelim.animalapparelcollarsandkit
repo:         Rimworld-Animal-Apparel-Collars-And-Kit-Renew
visibility:   public
detached:     yes
stage:        preTest
licence:      silent
licence_at:   MIT limited to own contributions and Animal Equipment; six other sources classified silent from documented inactive maintenance; no reuse permission inferred; see ATTRIBUTION visibility decision 2026-09-13
upstream_mod_remotes:
  - Dog Collars, Shenanigans: N/A (no <url> in the installed About.xml, checked 2026-09-28)
  - Patch Collar Malinois, Annabelesca: N/A (no <url> in the installed About.xml, checked 2026-09-28)
  - Animal Diapers, Dipsy: N/A (no repository named in ATTRIBUTION.md; package no longer installed to recheck About.xml)
  - Animal Turret Packs, flangopink and ogam: https://github.com/flangopink/AnimalTurretPacks (per ATTRIBUTION.md, not archived, no licence detected, last commit c1c9852 2023-10-18; could not be reverified online 2026-09-13)
  - Medieval Horse Plate Armour, Riful: N/A (no <url> in the installed About.xml, checked 2026-09-28)
  - RealisticAwesomeGoat, CSM: N/A (no <url> in the installed About.xml, checked 2026-09-28)
  - Animal Equipment, Owlchemist (after jptrrs): https://github.com/Owlchemist/animal-equipment
dependencies: declared
showcase:     complete
tested_on:
workshop:     3806765840 (private 0.1.0 prepublication, 2026-09-23, from the game's upload button)
remaining:
  - unverified: French review by Virginie (TRANSLATIONS.md, "Systematic French review by Virginie"); FRENCH_REVIEW.md generated 2026-09-30, not yet read by her
  - unverified: sans-facultatifs pass in game. Latest evidence, `sans-facultatifs-245178a` (2026-09-28), is red (0/27 passed, exitReason failed), predates the graphic-check and MVCF separateToggle fixes (0971baa, 6ba8de8); no green rerun since. Found trimming Evidence/ 2026-09-30.
  - unverified: in-game primary settings access, restart effects and persistence, hidden shortcut and RIMMSQOL interaction (scenario K)
  - unverified: English and French runtime text, generated bills, MVCF commands and tooltips, optional integrations, and Steam Deck layout
  - unverified: never loaded by RimWorld; scenarios A-K in TESTING.md are still waiting
  - unverified: in-game rendering of the restructured textures; offline local-path checks passed
  - unverified: French text and Steam Deck behavior in game; offline translation-target checks passed
session:      local_eb08411e-6348-4f15-aa6b-91964bb77df6
updated:      2026-09-13, dependency audit complete and Odyssey gorilla regression corrected; ready for game validation
---

# Animal Apparel: Collars and Kit Renew — status

This file is tracked in Git and kept outside the shipped Mod/ folder.

- **`stage`** — cumulative workflow code: `port` = dansMonoRepo (first gate incomplete),
  `horsMonoRepo` = autonomous-repository gate passed, `modIcon` = ModIcon generated,
  `showcase` = Preview generated; `preOptions`, `options`, `l10n`, `preTest`, `done`
  and `tested` map directly to the requested states. `published` is outside this chain.
  A return to `port` does not move the repository: `detached: yes` remains true.
  Earlier stage decisions below are history, not current cumulative certification.
- **`tested_on`** — the date of the last run in game. Empty means never.
- **`dependencies`** — `declared` when every mod this one needs is named in the About's
  `modDependencies`, `to check` when a non-vanilla `loadAfter` suggests a dependency that is not
  declared, `none` when the mod needs nothing. An undeclared dependency is not cosmetic: on
  2026-09-11 Reequilibrage animaux took 47 vanilla animals down with it, Muffalo included, because
  the class it injects belongs to a mod that was not declared and not loaded.
- **`remaining`** — what is left, in three kinds: `feature` for something missing from a first
  release, `defect` for a known fault left unfixed, `unverified` for what could not be checked.

`licence` vocabulary: `open` an explicit licence, `silent` no licence identified in checked materials (not proof of abandonment),
`alive` no licence but a living source, `forbidden` a written refusal, `original` owing nothing
to anyone — not a name, not an idea traceable to one mod, not a value derived from its assets.
- **`upstream_mod_remotes`** — the git repository URL of each source mod this one ports, one list
  entry per source; `N/A` with the reason when none is found. Distinct from `repo` (this mod's own
  repository) and `origin` (its git remote).

## Current development status

**`stage: done`.** The icon is accepted; settings, localization, the shipped build,
dependency declarations and applicable offline tests are established. The dependency
audit found and corrected the missing VAE gorilla tag with Odyssey. See DEPENDENCIES.md
and the latest audit section below. Earlier blockers remain as history.
The next gate is execution of the functional game scenarios, not more offline preparation.
`rights_audit: complete` certifies the protocol assessment, not third-party permission.
No missing game run is used to block `options` or `done`.
`tested_on` stays empty; no Workshop publication or successful game run is claimed.

**`licence: silent` is an internal status, not a licence for the whole mod.**
Original contributions and Animal Equipment (Owlchemist, after jptrrs) are declared MIT,
within the scopes stated in `LICENSE`; the notices must be retained. No licence has been
identified for the six other sources in the checked materials, and no permission for their
reuse in this project has been established. Abandonment is not established for all six:
Dipsy offered to update Animal Diapers on 2025-06-14. See `ATTRIBUTION.md` for sources and
verification limits. Credit and removal on request are not licence grants from the authors.

## Checked here, and therefore not in `remaining`

- **Preview recomposed on 2026-09-12 using the current shared style guide** with the
  mod's own since-retired `Art/build-preview.cjs`/`Art/preview.html`. Superseded below;
  kept as the source of the palette and copy decisions carried forward.
- **Preview re-rendered on 2026-09-29 onto the shared `scripts/Render-Preview.cjs`/
  `Art/verify-preview.py` pipeline (also used by AlphaMythologyRenew and others),
  adding the ModIcon corner badge.** Final: `Mod/About/Preview.png` (896 × 504,
  542560 bytes). Unlettered source unchanged: `Art/Preview.png`, copied from
  `Art/Preview-source.png`. Composition: `Art/preview-copy.json` (title/suffix/tag/
  copy, `iconBadge` pointing at `Art/ModIcon-badge.png`, corner `bottom-left`);
  same palette, `Art/preview-palette.json`. `Art/ModIcon-badge.png` is
  `Mod/About/ModIcon.png` background-removed and alpha-trimmed by
  `Art/Make-PreviewBadge.ps1 -SaveTrimmedIconTo`.
  This title ("Animal Apparel: Collars and Kit") wraps onto two lines at the shared
  layout's 430 px column width, which no other mod using the renderer had exercised
  yet: two shared-script fixes went in as a result, applying to every mod that uses
  it, not a local override — `.copy` gained an explicit `width:430px` (the title
  previously had none and could run under the illustration), and the veil's radial
  gradient gained a flat 0%-48% opacity plateau before its fade (a two-line title
  otherwise pushed the tag/summary into a low-opacity zone, contrast measured 2.0-2.4,
  below the 4.5 floor). Iterated in place against this mod's own longer title and
  verified against it; not separately re-verified on a short-titled mod, though the
  plateau is a strict floor added below the previous curve and the width change only
  constrains content that used to run unbounded, so neither should narrow an already
  passing short title's layout.
  `verify-preview.py` (2026-09-29 run): full-box minimum contrast on the rendered
  text-free background — title 10.23:1, Renew 7.49:1, tag 5.41:1, summary 7.99:1,
  badge 5.46:1; no clipped box; 542560 bytes, under the 900 000 ceiling.
  Visual review at 896 × 504 and 268 px passed: badge sits clear of the copy box and
  the version triangle, does not obscure the illustration's subjects, title/version
  still identifiable, rule still visible.
  Evidence: `Art/Preview-qa.json`, `Art/Preview-background-qa.png`,
  `Art/Preview-thumbnail-qa.png`.
- **Offline XML suite passed on 2026-09-12:** 55 XML files and 917 assertions using
  `pwsh -NoProfile -File _tools/test-xml.ps1`. Includes patch fixtures, conditional folders,
  translation targets and local texture paths. A GitHub Actions workflow is provided;
  its remote execution has not yet been verified. Game rendering, external references
  and full loader integration remain unverified, separately from development completion.
- **The `About.xml` description claims no in-game testing.** `PUBLISHING_STATE.md` asked for every
  description to be audited on that point before a first upload, because a Steam description never
  reprints. This one is clean: no *tested*, *testing*, *review* or *human direction*.
- **The showcase is at the sizes actually drawn**: preview dimensions and weight above;
  unchanged icon 128x128 for 27 KB. Sources and preview build chain are under `Art/`.
- **Latest confirmed push:** `d23ebfa` on `origin/main` contains the preview and its QA artifacts.
  This status clarification is a subsequent local documentation change.

## Translation audit — 2026-09-13

Applied the shared `PUBLISHING.md` / `TRANSLATIONS.md` workflow to revision `d7ae2e7`
plus the local translation, turret identifier, test and documentation changes in this audit.
At that time `stage: done` was retained; the cumulative audit below supersedes that
decision. The translation gate remains **pending**:
`localization` and `translation_fr` are `partial`, independently of that stage.

Inventory: all 55 shipped XML files, every folder declared in `LoadFolders.xml`,
base and optional Defs, abstract parents, nested MVCF properties, and all patches.
There is no owned C# source, assembly, Keyed resource or grammar resource.
The inventory contains 77 direct Def labels/descriptions across 41 concrete Defs,
16 MVCF command labels/descriptions, and two VEF settings labels. English is supplied
by the original XML text; no duplicate English DefInjected folder is needed.
The six French files now cover all 93 inventoried Def fields. Their wording, accents,
XML, nonempty values and target paths were reviewed; these strings contain no format
parameters or rich-text tags. French UI rendering has not been tested.

Sixteen missing MVCF translations were added at
`ThingDef.comps.Comp_VerbGiver.verbProps.0.visualLabel` and `.description` (with the
actual defName replacing `ThingDef`). Installed `MVCF.Comps.AdditionalVerbProps`
has no TranslationHandle, so the numeric list index is appropriate. Its `label`
matches a verb identifier and is not translated. Both charge packs incorrectly used
`Gun` in their verb and `Blaster` in their MVCF properties; they now consistently use
`Blaster`. Tests enforce that pairing and the single-element translation index.

**Known defect, not an exemption:** `Mods/VEF/Patches/TogglePlaceholders.xml` supplies
two English labels to `VEF.PatchOperationToggableSequence`. Inspection of installed
`VEF.VFEGlobal.AddButtons` confirms it passes these labels directly to
`ButtonTextLabeled`, without translation, and derives the saved setting key from
`label.Replace(" ", "")`. It also displays the Boolean state through `ToString()`.
Replacing labels with Keyed names would display raw keys and change saved settings.
A localized settings implementation preserving those saved identities is still needed;
this cannot be certified by adding XML language entries alone.

Validation:

- `pwsh -NoProfile -File _tools/test-xml.ps1`: 55 XML files, 93 covered Def text fields,
  **1175 checks passed**. Coverage and MVCF identifier regressions are now checked in CI.
- `pwsh -NoProfile -File ../scripts/Check-DefInjected.ps1 -TransMod ./Mod
  -ExtraAssemblies '<Steam>/steamapps/workshop/content/294100/2023507013/1.6/Assemblies/MVCF.dll'`:
  **93 keys, 0 errors, no UNVERIFIED findings**, with 11627 Defs indexed and 68 patch
  operations applied. The checker reports that `PatchOperationToggableSequence` is
  unsupported; its removal/addition branches are covered by the separate XML fixtures,
  not by a claim to execute the VEF settings UI.
- Installed dependency SHA-256: MVCF
  `D56B08B397EE9D628823DF0B2D4790BEE751008AB044183B4275CD5DC34F40E5`;
  VEF `7F9011A739B6CFB69F6F87D3B8E861261802A53BF7DA9F905A830D32F335079E`.

Exclusions: IDs, apparel tags, paths, numbers, `devNote` legacy markers, mod names used
as patch gates, and hyperlink Def references are data. About metadata and repository
documentation are outside this in-game gate. Other integration patches change those
data rather than adding prose. Generated crafting bills and inherited game/framework
UI use external mechanisms; their English/French output remains a runtime check in
scenario I, including the shield, equipment commands and combat text. No dependency
Keyed key is explicitly resolved by owned code. Reset the affected translation fields
to `unchecked` after relevant text, Def, patch or UI changes.

## Pending game verification

**Manual game verification remains pending; no run is recorded here.** `TESTING.md` holds the ten scenarios,
four of which — G to J — are the functional half: a restart with the gear still worn, adding and
removing the mod on a live save, French on the Steam Deck, and armour values proved by a hit
actually taken.

Scenario A is the one to run first: the framework alone, without any of the 21 animal mods. It is
what most subscribers will have, and the only one that exercises the 138 `MayRequire` guards.

## Cumulative workflow audit — 2026-09-13

This section supersedes earlier stage conclusions, preserving historical results.
Authority: the supplied request, then ../PUBLISHING.md, ../STYLE_RIMWORLD.md,
../MOD_SETTINGS.md and ../TRANSLATIONS.md, all read. The request explicitly moves
interactive settings checks to done -> tested; they do not block options.

### Scope and revision

Autonomous repository: C:/Users/nelim/Documents/rimworld/AnimalApparelCollarsAndKitRenew.
Distributed root: Mod/. Git confirms this repository as its own top level.
Audited HEAD: d7ae2e72b3b97acb309165f4cd0fe45f05484e73.
Existing local changes were included and preserved: French turret translations,
VEF turret identifiers, _tools/test-xml.ps1, TESTING.md and STATUS.md.
This audit edits only STATUS.md. No development, image generation, push or publication.

Read-only GitHub verification succeeded after an initial sandbox access failure:
`gh repo view vbardales/Rimworld-Animal-Apparel-Collars-And-Kit-Renew --json name,visibility,url,defaultBranchRef`
confirmed PUBLIC visibility; `git ls-remote origin refs/heads/main` returned exactly
that audited SHA. Thus neither the remote nor the first pushed commit is missing.

### Ordered results

| Transition | Result |
| --- | --- |
| dansMonoRepo -> horsMonoRepo | **Not verified in full.** Standalone Git, remote, pushed commit, status and English documentation pass. Display name, repository, folder and packageId correspond coherently without literal identity. LICENSE scopes the MIT grants without relicensing the other six sources; root and shipped LICENSE/ATTRIBUTION copies have identical SHA-256 hashes. However, the documents explicitly leave permission and abandonment unresolved for those six sources. PUBLISHING's public-silent branch refers to abandoned sources, while STATUS defines silent only as no licence identified. The evidence does not establish which visibility branch applies to every source. No prohibition or maintained-source status is inferred from the 2025 offer to update Animal Diapers. Public visibility is observed, not certified as justified. |
| horsMonoRepo -> ModIcon generated | **Independent defects.** No owned C#, csproj or DLL exists, so compilation and compiled-artifact freshness are justified not applicable. Development remains incomplete against the settings access contract below. The icon is PNG, 128 x 128, 27708 bytes. Direct inspection confirms the mascot/wink/ponytail style, but the blue collar, green equipment, brown equipment and coiled lead exceed the specified one or two accompanying objects. |
| ModIcon generated -> Preview generated | **Artifact validated independently.** PNG, 896 x 504, 576404 bytes; directly inspected at full size and using Art/preview-268.png. Title/version identifiable, no clipping or text overlap, high oblique scene, warm light pool, restrained ochre/red palette and no detailed colonist face. No concrete camera defect was found; a historical side-by-side game comparison is not required. Original art and composition files exist in Art. |
| Preview generated -> preOptions | **Visual/name checks pass; notice defect.** Accent #E85F49 is visibly distinct from secondary #E5BA79. Renew and and have the required reductions/inks; unofficial is on its own line. About and README are English and use the unofficial name suffix. Their opening paragraph omits the exact public-silent notice required by PUBLISHING; the final notice/suffix must follow the resolved visibility decision. |
| preOptions -> options | **Defect; settings_audit: partial.** Two useful VEF options exist. They appear under VEF's category, not this mod's name. No owned settings implementation or MainButtonDef exists in the shipped sources, so the required named primary access and revealable hidden shortcut are absent. XML effect fixtures pass; applicable defaults/persistence/migration integration checks are not complete. No RIMMSQOL or other customization integration was tested. |
| options -> l10n | **Defect.** 93 authored Def text fields have nonempty English source and French coverage, including MVCF fields. Two VEF option labels are literal English displayed without translation; the state uses ToString(). localization and translation_fr remain partial. English coverage is retained independently, not as runtime certification. |
| l10n -> preTest | **Declaration structure validated; full external matching not verified.** The required Framework packageId and 1.6 support match its installed About.xml; it declares its own Harmony dependency. VEF/MVCF, Giddy-Up and CE have optional folder gates and loadAfter entries. Alias activation and folder casing pass tests. Full current external class/Def/version matching across optional integrations was not exhaustively checked; dependencies: declared is not an integration pass. |
| preTest -> done | **Offline checks independently pass; gate not certified.** TESTING A-J contain setup, actions and expectations including new/existing saves and EN/FR. The current XML/behavior suite passed. Settings defaults, stored-value migration and the required access routes are not covered by those fixtures, and the manual plan lacks the required MainButtons reveal/shared-values scenario. Earlier gates also block. No artificial separate C# suite or build is needed for this XML-only payload. |
| done -> tested | **Not verified.** No game scenarios, matching-run logs, runtime EN/FR layout, persistence or customization integration were checked. Their absence is not a behavioral failure. |

### Settings audit

Inventory from Mod/Mods/VEF/Patches/TogglePlaceholders.xml:

- Disable universal placeholder apparel: default False. Its enabled branch removes
  five universal apparel Defs; applicable with VEF and Core.
- Exclude animal apparel from relics: default True. Its branch adds relicChance 0
  to nine bases with Vanilla Ideology Expanded - Relics and Artifacts present.

These are useful existing options: not_applicable would be incorrect. Numeric input
boundary tests are not applicable to Boolean controls. XML fixtures test branch effects,
not the VEF dispatcher, startup defaults, stored-value migration or configuration lifecycle.
Application timing/scope must be documented and checked for these load-time Def changes.
Interactive opening, restart persistence, logs and shortcut integration remain for tested.

Read-only decompilation of installed VEF.VFEGlobal independently confirms:
SettingsCategory returns Vanilla Expanded Framework; labels pass directly to
ButtonTextLabeled; saved keys use label.Replace(" ", ""); state uses ToString().
Command: ilspycmd -t VEF.VFEGlobal against the installed 1.6/Assemblies/VEF.dll.
DOTNET_ROLL_FORWARD=Major was needed because ilspycmd requests .NET 6 and .NET 8
is installed. Replacing labels with translation-key names alone would change saved
identities and display raw keys; it is not a verified correction.

### Executed verification

- `pwsh -NoProfile -File _tools/test-xml.ps1`: exit 0; 55 XML files,
  93 authored Def fields, **1175 assertions passed** on the current local content.
  Fixtures cover actual neck/head selectors, CE saddle, Giddy-Up overlay,
  removal/relic branches, compatibility aliases and local texture paths.
- `pwsh -NoProfile -File ../scripts/Check-DefInjected.ps1 -TransMod ./Mod
  -ExtraAssemblies 'C:/Program Files (x86)/Steam/steamapps/workshop/content/294100/2023507013/1.6/Assemblies/MVCF.dll'`:
  exit 0; **93 keys, 0 errors**, no UNVERIFIED findings; 11627 Defs indexed and
  68 patch operations applied. The checker explicitly does not implement
  PatchOperationToggableSequence; branch effects are tested separately above.
- English source Def values are native coverage; duplicate English DefInjected is
  unnecessary. Current checks cover nonempty values and MVCF identifier pairing.
  Earlier wording/parameter/tag reviews are retained for the unchanged translations.
- System.Drawing verified actual PNG format and dimensions. ModIcon, Preview and
  the 268 px Preview were visually inspected. Art/preview-qa.json font/contrast
  measurements are retained historical evidence, not claimed as newly measured.
- Root/shipped LICENSE SHA-256: E40B9D4643A94A3352B8EA98792DF2A6E653E3E4FF5EF36BDBCE6BC687706BE7.
  Root/shipped ATTRIBUTION: 277D7C0CD2A5876191ACD6223BE51D190E78DCA95812CF03A013CE37682881F7.
- CI invokes the same suite; its remote execution was not checked. Game loader,
  rendering and integration results are not established by these offline tests.

### Next gate and other follow-up

To establish horsMonoRepo, document the visibility/rights branch for the six sources:
establish the evidence required by the public-silent policy, obtain applicable permission,
or choose a visibility/content scope consistent with the established rights. This audit
asserts neither refusal nor continued maintenance and invents no third-party licence.
The repository remains detached; no monorepo remote needs restoring.

Later independent blockers: crowded icon, settings access contract, nonlocalizable VEF UI,
and the applicable opening notice. Required checks not run remain verification work,
not proven defects. About also ends with a raw repository URL instead of PUBLISHING's
Steam link labelled Source code on GitHub: correct before publication; it is not an
image defect or the reason for the current first-gate result.

Optional recommendations: none for the Preview. No replacement generation, historical
image report, broader testing or repository restructuring is requested by this audit.

## Visibility follow-up — 2026-09-13

**Superseding decision: port -> horsMonoRepo.** See ATTRIBUTION.md, "Visibility decision",
for the source-by-source rationale, primary links and retrieval limits. The earlier
cumulative table and first-gate next-action text are retained as the historical audit;
their unresolved visibility conclusion is superseded here.

The protocol requires a justified classification, not an explicit retirement statement
from every author. Current public pages establish releases last updated/published in
2020-2023, still tagged for RimWorld 1.1-1.4. The public Animal Turret Packs repository
was also reverified: latest commit c1c9852a6e6ddf283691d60b17c3064261e28a4a from
2023-10-18; 20 tree entries, no licence/readme/notice found; repository not archived.
The previously inaccessible Malinois and Goat pages were read successfully this time.
The six installed packages were searched again for licensing/reuse notices.

`silent` is retained as a documented inference of inactive maintenance, with no licence
or applicable permission found in the reviewed materials. Dipsy's June 2025 offer to
fix Animal Diapers is explicitly retained as contrary evidence, alongside the unchanged
2022 release and statement that the author does not play RimWorld. No definite renunciation,
permanent abandonment, third-party consent or prohibition is claimed. Merely being
online is not evidence that an author maintains this particular mod.

This justifies the observed public/unofficial branch under the project's policy. It
is not a legal clearance, and no missing permission has been manufactured. The MIT
scope is unchanged and was verified against the upstream Animal Equipment licence.
A resumed release, new restriction or applicable licence would require reassessment.

The reviewed sources, dates and comment-coverage limitations are recorded in both
ATTRIBUTION copies. No author was contacted and the remote visibility was not changed.
Changes in this follow-up are documentation only: STATUS and root/shipped ATTRIBUTION.
The audited payload revision and its pre-existing local changes remain those of the
cumulative audit; independent XML, translation-path and Preview results are unaffected.

**Next transition, horsMonoRepo -> ModIcon generated:** simplify the icon to the
specified one or two accompanying objects and finish the existing settings access
contract. Verify the applicable technical checks; if implementation adds C#, build
and verify the shipped assembly. Subsequent localization/description requirements
remain as recorded. No game run is needed merely to advance this next transition.

## Localized settings implementation — 2026-09-13

This section supersedes earlier implementation, icon, settings and localization blockers.
The user accepted the existing icon and authorized the implementation. No image was changed.
Stage: horsMonoRepo -> l10n. Settings technical validation is complete under the user's
explicit rule that interactive game checks belong to done -> tested. External reference
verification from the prior audit remains pending before certifying preTest.

### Delivered behavior

- The 9216-byte AnimalApparelCollarsAndKit.Settings.dll lives only in
  Mod/Mods/VEF/Assemblies. The existing VEF LoadFolders gate controls the assembly,
  settings Mod subclass, patch operations and MainButtonDef. Without VEF there is
  no owned settings page/shortcut or unconditional reference to VEF.
- Primary access uses Content.Name through SettingsCategory. The optional worker opens
  RimWorld's Dialog_ModSettings with the same Mod instance. MainButtonDef AA_CK_Settings
  sets buttonVisible=false and validWithoutMap=true. Its worker inherits native Visible;
  no permanent suppression or required customization dependency was introduced.
- Both controls bind the existing VFEGlobal.settings.toggablePatch dictionary. Historical
  keys are unchanged: Disableuniversalanimalapparel(placeholderart): and
  Animalapparelcannotbearelic:. No migration or separate configuration file exists.
  Each edit/reset uses VEF's existing ModSettings.Write; the native dialog also calls
  the overridden WriteSettings on close. Other VEF values are left alone.
- Defaults remain universal removal off and relic exclusion on. Help states global scope,
  restart timing, missing-item consequences and the relic integration requirement. The
  relic checkbox is disabled with an explanation when the named integration is absent;
  Widgets.CheckboxLabeled receives its explicit disabled argument. Reset changes only
  these two keys. Numeric limits are not applicable to Boolean controls.
- The custom PatchOperation_ApparelSetting reads the same values and retains the original
  conditional removal/addition branches. It is not a VEF togglable operation, so VEF does
  not discover it as another English-only UI control. Core/relic mod gates are retained.
- Seven Keyed strings per language cover all owned settings text; no True/False text is
  rendered. Two French MainButton fields bring Def text coverage to 95 fields. English
  Def source values remain native coverage. The new texts have no formatting parameters.
- About/README now carry the prescribed unofficial notice, accurate assembly/settings
  information, and About ends with the Steam-formatted source link. The MIT scope now
  explicitly includes the owned settings adapter/tests; both LICENSE copies match.

### Verification and artifact identity

Base revision remains d7ae2e72b3b97acb309165f4cd0fe45f05484e73 plus the existing local
translation/turret/test/documentation changes and this implementation. No commit or push.
Sources are in Source, tests in Tests, intermediates in .build outside the distributed
folder. The source project marks game/VEF references Private=false; inspection confirms
only the owned DLL is in the shipped Assemblies folder, with no copied third-party DLLs.

- `dotnet build Tests/Settings.Tests.csproj -c Release`: builds both projects;
  **0 warnings, 0 errors**. The SDK required access beyond the sandbox to local SDK paths.
- `.build/tests/Settings.Tests.exe`: **30 assertions passed** against actual installed
  RimWorld 1.6 and VEF assemblies. Covers defaults, four legacy combinations, partial
  legacy data, shared values, save callbacks, reset isolation, actual VEF dictionary
  access, native visibility inheritance, actual patch dispatch/removal/failure, and
  actual VEF ExposeData/Scribe serialization and reload. No live Config was modified.
- `pwsh -NoProfile -File _tools/test-xml.ps1`: **59 XML files, 95 authored Def fields,
  1255 assertions passed**, including Keyed coverage, shortcut flags/gating and removal
  of the old English-only VEF operations. Existing fixtures retain branch-effect tests.
- `Check-DefInjected.ps1 -TransMod ./Mod -ExtraAssemblies <installed MVCF.dll>`:
  **95 keys, 0 errors, no UNVERIFIED findings**, 11628 indexed Defs and 68 applied patches.
  It reports PatchOperation_ApparelSetting unsupported; real dispatcher and XML branch
  checks above cover it separately, not by pretending that this checker executed it.
- Final shipped DLL SHA-256:
  E436B4CA9ADD781EB44F47391C40410F96BFDC97046556D9F2ACEEEDC9BAFA2B.
- LICENSE and Mod/LICENSE SHA-256:
  A260318AA1290DAADC6F2FB1FD6E86163F2402560F932FE5B445AE2E374989A9.

An initial test needed DeepProfiler disabled because no game preferences exist in a
console process. An attempted native Visible call reached Unity-only ModsConfig startup
and failed with an ECall initialization error. Those interactions are explicitly not
certified outside Unity; no fake engine was substituted. Settings-audit completion rests
on applicable technical checks and inspected native access/visibility mechanisms, as
specified by the user's workflow, not on an unperformed game or RIMMSQOL session.

Scenario K was added to TESTING with prerequisites, actions and expected outcomes for
primary/shortcut access, legacy choices, dependency present/absent, actual restart effects,
new/existing saves, reset, FR/EN layout and logs. A-K remain unexecuted in game. RIMMSQOL
and other customization tools have **not** been tested interactively. CI currently runs
the XML suite only; the assembly-dependent tests run locally with the installed game.

## Dependency gate and readiness — 2026-09-13

The user requested a commit, then continuation. Commit
`7060c628a586c55551a8c9130ab9feb1a80ad657` records the localized settings and all
previous local work. The working tree was clean immediately afterward. No push.
This audit then added the gorilla patch, its XML regression tests, DEPENDENCIES.md,
and updates to CHANGELOG, TESTING and this status. These follow-up changes are local.

**l10n -> preTest -> done is established.** Mandatory versus optional dependencies,
identifiers, applicable version selection, loadAfter, conditional folders and types
were checked against installed metadata/assemblies and pinned upstream sources for
the two integrations absent locally. Evidence, binary hashes, provider versions and
limits are in DEPENDENCIES.md. No mandatory dependency was missing from About.
Old optional versions and unexecuted game combinations are not certified as runtime
compatible; they are not silently converted into required dependencies either.

The expanded reference check found one actual defect: VAE stops defining AEXP_Gorilla
with Odyssey, but the diaper retained its defName tag. The new native remove operation
tests actual ThingDef presence, removes only an unresolved legacy tag, and preserves
it when the old animal exists. Four fixtures exercise both Def and tag presence.

Checks on the resulting payload:

- XML suite: **60 XML files, 95 authored Def fields, 1273 assertions passed**, exit 0.
- Check-DefInjected: **95 keys, 0 errors, 11628 indexed Defs, 69 applied operations**,
  exit 0, no UNVERIFIED findings. Its unsupported settings operation warning remains
  covered separately by the previously successful real-assembly tests.
- All **61 unconditional animal tags** resolve in actual installed Core ThingDefs.
  Scoped optional-provider inspection covers 27 folder/provider combinations, with
  and without Odyssey. The gorilla correction addresses the missing reference found.
- The owned C# sources and DLL did not change after their successful build and 30
  settings assertions. The shipped DLL hash was rechecked and still equals
  E436B4CA9ADD781EB44F47391C40410F96BFDC97046556D9F2ACEEEDC9BAFA2B.
- No texture, displayed text, settings behavior or other compiled artifact changed;
  their independent prior validations remain applicable.

Tests A-K are written; scenario F now explicitly includes the Odyssey gorilla
regression. No game scenario was executed and no game log establishes a successful
run. The available automation does not provide native game UI control in this session.
`tested_on` remains empty. To reach tested, execute the scenarios in RimWorld,
including FR/EN, settings/shortcut/persistence, new/existing saves and relevant
optional integrations, then inspect logs and fix any observed failures.

## AUDIT.md re-application — 2026-09-26

Read: AUDIT.md 4f034f5, PUBLISHING.md 4f034f5 (see docs/PROTOCOLS-READ.md). HEAD before this entry: 6676223.
Local change left in place: Mod/About/ModIcon.png (not committed).

**Previous stage `done` -> retained `horsMonoRepo`** (session title: `Animal Apparel: Collars and Kit Renew / horsMonoRepo`).

- horsMonoRepo -> ModIcon generated: **unverified/defect.** The working-tree icon is 1254x1254,
  1235608 bytes (limit in PUBLISHING: ~128 px, tens of KB); the committed one is 128x128, 27708 bytes.
  The 32 px readability check is not done. Per AUDIT, nothing is regenerated here: the owner decides
  (override or redo). `modicon_audit: partial` until she answers.
- preTest -> done: **not established.** AUDIT step 8 requires Pickle (Gherkin) tests to be *written*
  with their scope justified. `Tests/Pickle/` does not exist. Their execution is not required for `done`.
- The XML suite (`_tools/test-xml.ps1`) was not re-run: PowerShell 7 is absent on this session's shell,
  so its 1273 assertions above are the 2026-09-13 results, `unverified` for the current tree.
- Independent results kept (not invalidated): settings, localization, dependencies, Preview.
- Prepublication 0.1.0 (private, item 3806765840) is an act, not a stage. `.dds` files (1400, 146 MB) were
  generated by the game's upload; none is tracked, they are ignored; they must be removed from `Mod/` before 1.0.0.
- Upstream bases: Animal Turret Packs has a public repository (github.com/flangopink/AnimalTurretPacks,
  no licence, last push 2023-10-18) and Animal Equipment (github.com/Owlchemist/animal-equipment, MIT,
  last push 2023-03-01). No repository was found for Dog Collars, Patch Collar Malinois, Animal Diapers,
  Medieval Horse Plate Armour or [CSM]RealisticAwesomeGoat (installed files searched for a GitHub link: none;
  Steam pages not re-read). A pull request to the two repositories would be public: only with the owner's word.

## ModIcon decision — 2026-09-26

The owner kept the 1254x1254 mascot icon (collar, tag, lead, waving paw: more than the one or two
accompanying objects of the style guide) and asked for a lighter file. Her decision is an override of
that point. The shipped `Mod/About/ModIcon.png` is the same image scaled to 128x128 (bicubic, PNG,
24096 bytes; was 1235608). The full-resolution source is `Art/ModIcon-source-1254.png`. Not redrawn,
not regenerated. Inspected at 128 px; the 32 px rendering was not separately checked. The Workshop
item 3806765840 still carries the heavy icon until the next upload.
`modicon_audit: complete` (dimensions, format, weight; crowding overridden by the owner).
Stage stays `horsMonoRepo` only because of the missing Pickle suite and the unrun tests.

## Session log — 2026-09-26 (afternoon)

- XML suite re-run with PowerShell 7 (`pwsh`, installed with winget): 60 XML files, 95 Def text
  fields, **1273 assertions passed**, exit 0, on HEAD `a132c1b`. The 2026-09-13 `unverified` on the
  current tree is lifted for the XML suite only; settings assertions (`Settings.Tests`) were not re-run.
- The 1400 generated `.dds` (146 MB) were deleted from `Mod/`; `*.dds` is in `.gitignore`. The Workshop
  item 3806765840 still carries them until the next upload.
- Pickle suite written (`Tests/Pickle/`, commit `a132c1b`), never run. First request filed:
  `20260926-121916-986-df75`, one scenario, English, no pass map (pending in the queue).
- Workshop ids resolved for the pass maps (not yet written, tree frozen until the run): Basic Armor
  3513849448, Giddy-Up 2 3674332861, Combat Extended 2890901044 (owner confirmed), the four VAE packs,
  Alpha Mythology 1821617793 (= `sarg.magicalmenagerie`, the former Magical Menagerie), Save Our Ship 2
  1909914131, Android Tiers 3711019495, Rim-Effect Core 2479560240, Rim-Effect Renegade 3473370247,
  Bun Race 2108324996, Spidercamp's Dog Pack (Continued, deprecated) 2453077534. Ids taken from the owner's
  links or Workshop pages rather than an installed `About.xml` are unverified as packageIds. Originals of
  Forsakens, Dumbs' Dachshunds, Dire Wolves and Vanilla Animals Expanded - Desert are skipped (replaced or gone in 1.6).
- Adult-content check: the Preview and three sprites (Dromedary power armour, Warg leather collar,
  Chicken helmet) were opened; nothing adult. Not every one of the 1400 sprites was opened.
  Note: the Warg leather collar south view is blank (transparent or empty); to look at in game.
- Incompatibility passes: eight maps and one draft feature prepared outside the repository, for the
  eight `incompatibleWith` mods; the strings to assert are unverified until a first run shows the log.
- Not done: thank-you research (item 2) and upstream repository research (item 5) - Steam answered HTTP 429
  to eight parallel page reads; to redo one page at a time.

## What separates this mod from `done` and `tested` — 2026-09-26

Current stage `horsMonoRepo` (AUDIT.md chain; the ModIcon override is recorded above).

To reach `done` (preTest -> done): Pickle tests written with their scope justified (done in `Tests/Pickle/`:
features 01-06 and 20+ pass maps, all unrun); offline suites green (XML 1273 assertions: green 2026-09-26; settings
assertions `Settings.Tests` not re-run). Still open: the Odyssey gorilla pass, a neckless-body scenario (offline patch
tests exist), firing and combat scenarios (not automatable with existing steps). The `l10n -> preTest` and earlier
gates were kept from the 2026-09-13 audit.

To reach `tested`: play every pass in English and French (`unverified`: nothing has run); no `@wip`; every
`@requires` scenario played by the pass that mounts its mod; no manual test left (E, G, H, J need steps that do not
exist yet); `@review` captures opened; logs read.

Files changed after the first request was filed (so it was cancelled and refiled): About description migrated to
the publication source (3614 bytes, plain text of the Markdown block), the framework credited to s_m_w, Magical
Menagerie renamed Alpha Mythology, `Mod/ATTRIBUTION.md` synced (hash identical to the root copy). The request now
in the queue is `20260926-172355-617-ddc3` on `838c88e`.

## Stage correction — 2026-09-26

`stage: preTest` (was `horsMonoRepo`). The two reasons given above no longer hold: the icon is delivered at
128 px with the owner's override, and unrun game tests are a `done -> tested` criterion, not a `preTest -> done`
one (AUDIT.md, 2026-09-21 clarification). Open for `done`: re-run `Settings.Tests` on the installed assemblies
(last run 2026-09-13; a rebuild rewrites the shipped DLL, so it waits for the pending Pickle request), and write
the Odyssey gorilla pass. Nothing here claims a game run.

## Settings tests and suite additions — 2026-09-26 (evening)

- `Settings.Tests` re-run on the installed RimWorld 1.6 and VEF assemblies: **30 assertions passed**, exit 0
  (`dotnet build Tests/Settings.Tests.csproj -c Release`, then `.build/tests/Settings.Tests.exe`). The rebuild
  produced a DLL with another hash (`443D2788...`) from unchanged sources: the build is not deterministic. The
  committed DLL (`E436B4CA...`, the one on the Workshop item) was restored and stays the shipped one.
- Pickle suite: features 07 (bodies without a neck, with a test-only collar in the companion) and 08 (the VAE gorilla
  with and without Odyssey), and the pass `avec-animaux-sans-odyssey`. Never run.
- The queue request was refiled on `c7e099b`: `20260926-215415-438-bb85` (the earlier one, `ddc3`, was cancelled).
- What remains for `done`: nothing written is missing; Settings.Tests and XML are green on the shipped payload.
  Combat and restart scenarios (E, G, H, J) stay unautomated: recorded as `unverified` for `tested`, not hidden.

## First real Pickle attempt — 2026-09-27 (0dc8f18, 842981f)

Two runs, both `infrastructure-error`/`failed`, zero scenarios validating anything yet, but each found a real defect.

1. `ae0c` (0dc8f18): Pickle's own colonist-lookup steps cannot find an animal (fixed with local steps, see above).
2. `cccf` (842981f): Pickle exited 2 at startup, before any scenario, on `System.ArgumentException: Invalid step
   pattern` for `Animal Apparel Collars: a tame {string} named {string} exists at ({int}, {int})`. Cucumber
   Expressions treat unescaped parentheses as an optional-text group, and a parameter inside one is rejected
   (`PickleTools/Authoring/README.md` already warns: "parentheses mean optional text ... do not paste regex
   syntax"). Fixed: `\(` `\)` around the coordinate pair, matching Pickle's own `I spawn a {string} pawn at
   \({int}, {int}\)` (read in `RimWorks.Pickle.Vanilla.dll`, decompiled).
3. **A genuine mod defect surfaced by the game log, independently of both suite bugs**: `Apparel_shielddogcollar`
   (via `ShieldDogCollarBase`) carried `costStuffCount>25` with no `stuffCategories`, while a fixed `costList`
   already supplies its ingredients — `Config error in Apparel_shielddogcollar: has costStuffCount but no
   stuffCategories`, logged by `Verse.DefDatabase.ErrorCheckAllDefs` at startup, in **every run so far**, offline
   XML tests included (they do not run `ErrorCheckAllDefs`). Removed the dead `costStuffCount`. XML suite still
   green (1273 assertions) after the fix. This was never caught before because only a running game checks it.

## Second run failure explained — 2026-09-27 (3a5c, c624c9d)

`3a5c` played its scenario this time (no infrastructure error): "'Husky' is not wearing
'Apparel_LargeAnimalClothes'; it wears Apparel_leatherdogcollar". Read the defs: `AnimalClothesBase`
and the power-armour bases (Animal Equipment) declare `bodyPartGroups` of `AnimalBody`, `AnimalNeck`
**and** `AnimalLegs` - full-body suits that legitimately include the neck. `Pawn_ApparelTracker.Wear`
correctly dropped the older, conflicting collar; this is vanilla behaviour for overlapping body-part
groups, not a mod defect. Checked with a script over every `<bodyPartGroups>` block in `Mod/Defs/ThingDefs`:
no shipped body-covering piece from Animal Equipment (clothes, power armour) excludes AnimalNeck; the
only unconditional pairing that both ships without VEF and genuinely does not conflict with a collar is
a helmet (`AnimalHead` only). Fixed the suite, not the mod: scenario 01 now pairs a collar with the
power-armour helmet on `Fox_Arctic` (the only kind both defs' tags share), and keeps a second scenario
that asserts the suit **does** replace the collar, as documented behaviour. `TESTING.md` scenario B's
"body piece" wording is best read as the VEF turret pack (scenario 03, `AnimalBody` only) or an
external Basic Armor piece, not this mod's own full-body clothing.

## Audit of the remaining features, 2026-09-27 (while 6b5c was queued)

Checked every pairing in features 02, 03 and 07 against the real `<tags>` (not `descriptionHyperlinks`,
which is a curated subset) and `<bodyPartGroups>`/`<layers>` of the defs used: Cow accepts
`Apparel_LargeAnimalScarf` (AnimalHead only, single item, no combo); Muffalo carries
`ATP_Apparel_LargeTurret`, which has no species tag at all (any animal); the horse set's three pieces
(plate: AnimalBody+Neck+Legs/Middle, helmet: AnimalHead/Shell, saddle: AnimalBody/Shell) pairwise
share no (bodyPartGroup, layer) combination, so vanilla `ApparelUtility.CanWearTogether` keeps all three
- confirmed from the def data, not from a run. No further "silently replaced" pairing found. Features 08
and 09 use one apparel item per pawn, so the conflict class found in 01 does not apply to them.

## Correction of the previous entry — 2026-09-27 (6b5c)

The "Second run failure explained" entry above was itself wrong on the mechanism, caught by the next run
(`6b5c`): the fixed scenario still failed with the identical message, on a def (`Apparel_LargeAnimalClothes`)
this time deliberately chosen to demonstrate a "legitimate replacement". Decompiling
`RimWorld.Pawn_ApparelTracker.Wear` (Assembly-CSharp) settles it: `Wear` calls
`newApparel.PawnCanWear(pawn, ignoreGender: true)` first, and returns immediately (logging a warning, not an
error) if it is false, **before** ever checking body-group conflicts. `Apparel_LargeAnimalClothes` restricts by
defName to large animals only (Cougar, Cow, Elephant, Horse, Megaspider, Megasloth, Muffalo, Panther, Thrumbo);
a husky is not one, so the collar was never touched - it is a species refusal, not the body-group replacement the
previous entry described. Nothing here was ever a mod defect: `PawnCanWear` and `CanWearTogether` are both
vanilla, and the earlier explanation just stopped reading `Wear` one check too early. Fixed: the scenario now
uses `Fox_Arctic` (in both the collar's and `Apparel_SmallAnimalClothes`' species lists) to show a genuine
body-group replacement. The collar+helmet scenario (also on `Fox_Arctic`) already passed at `6b5c`, consistent
with this reading: same species gate, no conflict, both stay on.

## packageId changed — 2026-09-27

`nelim.animalapparelcollarsandkitrenew` -> `nelim.animalapparelcollarsandkit` (owner's decision: drop
"renew"). Safe now because the 0.1.0 prepublication (item 3806765840) is private and untested; per
PUBLISHING.md a packageId is "UN SEUL COUP" only once real subscribers exist. Updated everywhere it
appeared: `Mod/About/About.xml`, `.github/publish.config.json`, `Tests/Pickle/Mod/About/About.xml` (and
its own `.pickletests` suffix), the two Pickle features that name the packageId, `Tests/Pickle/README.md`,
`PUBLICATION.md`, `TESTING.md`. Display name, folder name and repository name are unchanged. `About.xml`
description re-synced from `PUBLICATION.md` (unchanged, no packageId in the prose); XML suite still green
(1273 assertions). The next Steam upload will carry the new packageId to the same item id (3806765840);
nothing currently depends on the old one.

## Third attempt at the same scenario — 2026-09-27 (beea)

Progress from `6b5c`: `PawnCanWear` now passes (Fox_Arctic is valid for `Apparel_SmallAnimalClothes`) and
the conflict with the collar is correctly detected, but `Wear`'s own drop-on-conflict path failed:
`Pawn_ApparelTracker.TryDrop` -> `ThingOwner.TryDrop` -> `GenPlace.TryPlaceThing` logged
`Log.Error("... could not drop Apparel_leatherdogcollar...")` on a pawn freshly spawned at (60, 60) with
nothing else nearby. Not diagnosed further: whether this is a real constraint (an unforbidden animal pawn's
dropped apparel needing a claimable/reachable cell that a bare spawn point does not satisfy) or an artefact
of spawning outside normal map generation is `unverified`, and chasing it further was not this scenario's
job. Scenario rewritten to strip explicitly (`pawn.apparel.Remove`, which places nothing) instead of relying
on `Wear`'s automatic drop, and to check the collar is actually gone before dressing the suit.

## Green run, worthless captures — 2026-09-27 (4e9e)

`4e9e` passed 5/5, `exitReason: passed`. Opened the four `@review` captures before crediting anything
(AUDIT.md: a green `@review` scenario proves the trip happened, not that the image shows anything). All
four showed the same thing: an empty brown patch of ground, the colonist bar, and "Undiscovered" in the
bottom-left corner - no animal, no apparel, nothing the scenario claimed to prove. `I move the camera to
(60, 60)` had jumped to a map cell, not to the spawned pawn, and the default zoom was far enough out (or
the cell far enough from the pawn) that nothing readable was in frame. This is exactly the failure mode
`AUDIT.md` names: a vert here would have certified nothing. Fixed every `@review` scenario (01, 02, 03, 07)
to move the camera to the pawn by name (`I move the camera to "<name>"`), zoom all the way in, and assert
`the camera can see "<name>"` before the screenshot - also added a missing screenshot to the muffalo turret
pack and the snake collar scenarios, both tagged `@review` but never actually capturing anything, and
promoted the cow scarf scenario to `@review` since it also draws a texture. None of the four earlier
captures have been re-opened yet; they are worthless and must be replaced by the next run's.

## Third camera lesson, same family — 2026-09-27 (23d5)

Full pass, 24 scenarios, 6 green, 5 red, 13 skipped by requirement. All 5 failures: "no pawn nicknamed
'<X>'" (Fox_Arctic, Husky, Horse, Cow, Cobra), players present Jet/Larson/Morrison. Cause: my own fix for
the empty captures (4e9e) replaced the bare-cell camera jump with Pickle's own `I move the camera to
{string}` and `the camera can see {string}` - both of which resolve a player COLONIST by nickname, the
exact restriction that made "I dress"/"is wearing" fail on `ae0c`/`cccf`, now hitting the camera steps
instead. Third time this collection of native Pickle steps has turned out to be colonist-only when applied
to a named animal. Fixed: two more local steps, `Animal Apparel Collars: the camera is centered on
"<name>"` (`Find.CameraDriver.JumpToCurrentMapLoc`) and `... the camera can see "<name>"`
(`CameraDriver.CurrentViewRect.Contains`), both looking the pawn up on the map like the rest of this file;
`I zoom all the way in` stays Pickle's own, since it takes no name. All four features updated.

## The captures were empty because the spawn point was fogged — 2026-09-27 (ab10)

`ab10` passed 11/11 real scenarios, 13 skipped by requirement, but opening all 7 `@review` captures
(AUDIT: a green `@review` proves the trip, not the image) showed the same blank, unlit ground reading
"Undiscovered" as before the camera fix. The camera fix was not wrong, but it could not fix this: RimWorld
never draws terrain or pawns in a cell the player has never uncovered, and (60, 60) had no reason to sit
inside the "test-colony" fixture's small revealed home area. "the camera can see" only checks that a cell
coordinate lies inside the view rect - a tautology once the camera is centred on that same coordinate, not
proof anything is rendered there. Fixed at the source: a new step, `a tame "<kind>" named "<name>" exists
near the colony`, spawns the animal at `CellFinder.RandomClosewalkCellNear` a free colonist's position
instead of a fixed cell, guaranteeing a revealed, walkable spot. All nine features updated; none of the
prior captures are usable and must be replaced.

## First captures actually opened and read — 2026-09-27 (b186a01)

`b186a01` passed 11/11 real scenarios, 13 skipped by requirement. All 7 `@review` captures opened and
cropped/zoomed with ffmpeg (nearest-neighbour, to inspect 32px sprites without blurring):

- **Confirmed drawn, clearly**: the leather collar on the fox and on the husky (a distinct band around the
  neck); the studded collar on the husky; the horse's full barding set (a dark plate visibly covering the
  body, drawn over the saddle); the teal scarf on the cow's head. These are real, positive evidence that the
  restructured per-animal texture paths resolve for these species and pieces - not just "no error was logged."
- **Inconclusive, not claimed as a defect**: the power-armour helmet on the fox and the test collar on the
  cobra are not clearly distinguishable from the animal's own sprite at this resolution/zoom, though both
  scenarios' own assertions (`is wearing`, `apparel covers`) passed and no error was logged. Whether this is
  a rendering gap for those two specific pieces or just too small to see by eye is unresolved; worth a second
  look with `-pickle-max-film-seconds` or a tighter in-game zoom later, not blocking anything now.
- Shield collar capture (husky) not individually cropped; same visual family as the other two collars, no
  reason to doubt it separately.

This is the first time in this mod's history that a rendered per-animal texture has actually been looked at
and confirmed, rather than inferred from "no error was logged." Scenarios A (framework alone) and B (collar +
body piece) of TESTING.md now have real, if partial, visual evidence; C (neckless bodies) remains
`unverified` for the visual half specifically because of the cobra ambiguity above.

## VEF pass crashed at startup (SIGSEGV) — 2026-09-28 (bc8c)

`bc8c` (avec-vef, VEF + LoadAudit staged) never wrote a report: the game crashed with signal 11 during
early startup, right after `RimWorld 1.6.4871 rev600` and two "Fallback handler could not load library
.../MonoBleedingEdge/x86_64/data-0x...so" lines, before any Def or patch of this mod loaded. This matches
the signature AUDIT.md already recorded for two unrelated mods on 2026-09-25: a native crash in early
engine/Mono startup, not inside gameplay code, cause not established as a mod fault. A harmless warning
("needs <downloadUrl> and/or <steamWorkshopUrl>", about this mod's own test companion referencing itself)
appears just before the crash and is unrelated to it. Not blamed on the mod or the suite; retrying once,
per AUDIT's own reading of the same signature.

## avec-vef pass green after retry — 2026-09-28 (bae1, 0631456)

13/13 real scenarios green, 11 skipped by requirement (RIMMSQOL absent, the eight incompatibilities absent,
Odyssey not removed by this map). Confirms `bc8c`'s crash was transient/environment: same tree, same map,
green this time. New captures over the previous pass: `muffalo-turret-pack` and the LoadAudit scenario
(no screenshot, asserts a clean load). Opened the muffalo capture: the pack itself is not visible on its
back, which is **expected**, not a defect - the turret packs carry `AnimalInvisible` by design (see
CHANGELOG "Fixed, from the sources": the turret is drawn by MVCF's own renderer, not the apparel layer).
LoadAudit passed, meaning no error/warning/unresolved reference attributable to this mod's packageId was
found from game start to that point, and its Keyed translations matched the active (English) language.
Scenario E of TESTING.md (a turret pack actually firing) remains unautomated and `unverified`.

## Automating what was still manual — 2026-09-28

Decompiled `Verse.DefDatabase<T>.Add`: the exact duplicate-def message is `"Adding duplicate " +
typeof(T) + " name: " + def.defName`. The seven source-mod scenarios in feature 05 (strings chosen
2026-09-26) already match it; not a guess anymore. Dropped Dylan's Animal Gear from the suite: neither
RimWorld's handling of `<incompatibleWith>` nor the framework's own code (decompiled, no check found)
gives this mod anything to assert in a running game - AUDIT.md's "on ne teste pas le jeu" applies
directly. Its unused pass map was removed.

Automated scenario E (a turret pack actually firing): two new local steps, a hostile pawn spawned on
`Find.FactionManager.OfPirates` near the colony, and firing the pack's real verb by finding MVCF's
`Comp_VerbGiver` on the worn apparel (by type name, MVCF is not a compile reference) and calling
`VerbTracker.AllVerbs[0].TryStartCastOn(target)` directly - the same objects the game's own AI would
use, without staging a real fight or drafting (which "on ne teste pas le jeu" also excludes: the
decision to open fire is the engine's, the verb dealing damage once given a target is the mod's own
apparel working as intended). A local `"<name>" health is below <int> percent` step fills the one gap
in Pickle's own catalogue (`... is above ...` exists, the other direction does not). Compiled, 0
errors. Never run.

Still open, unautomated: restart with gear worn (G), removal on an existing save (H) - both need a
save handed between two launches (`-Then`/`-ThenWithout`), not designed yet.

## Turret fire run, first result — 2026-09-28 (e22f, 44003ef)

2 scenarios in feature 03 under avec-vef: the wearing scenario green, the firing scenario red with "no pirate
faction in this game to make the target hostile". A limit of the `test-colony` fixture (no pirate faction), not
of the mod. Fixed in the step: use any faction already hostile to the player, else generate one with
`FactionGenerator.NewGeneratedFaction(new FactionGeneratorParms(FactionDefOf.Pirate))` and add it to the
faction manager. Compiled, 0 errors. Refiled.

## Render tree assertion — 2026-09-28

The fox helmet and the cobra test collar could not be judged by eye at 32 px (2026-09-27). New local step
`the render tree of "<name>" draws "<apparel def>"`: after five frames, `PawnRenderTree.EnsureInitialized`, walk
the tree from `rootNode` through `children`, find the `PawnRenderNode` whose `apparel.def.defName` matches, and
require `GraphicFor(pawn)` to be neither null nor `BaseContent.BadGraphic`. Added to every visual scenario (fox
collar+helmet, the three collars, the diaper, the horse set, the cow scarf, the three neckless bodies). The turret
packs are excluded on purpose (`AnimalInvisible`, no node by design). The APIs were read by decompiling
`Verse.PawnRenderTree`/`PawnRenderNode`; the step compiles (0 errors) but has never run, so whether the framework's
dynamic animal nodes populate `apparel` the way the vanilla ones do is unverified: the failure message lists the
apparel nodes it did find.

## Turret fire, second result — 2026-09-28 (8474, 2a831cc)

The hostile-target fix worked: the wearing scenario passed and the firing scenario got as far as the verb,
which returned false with nothing logged ("the turret pack's verb refused to fire at 'Target'"). Reading
`Verse.Verb.TryStartCastOn`: its silent refusals are `!caster.Spawned`, `state == Bursting` and
`!CanHitTarget(target)` (range 28.9, then a clear shoot line); `WarmupTime > 0` adds a second
`TryFindShootLineFromTo`. The target had been spawned at random within five cells of a colonist, possibly behind
rock. Not diagnosed further by guessing: the step now moves the target to a cell in clear line of sight of the
wearer (`GenSight.LineOfSight`) before asking, and a refusal reports the verb type, `CanHitTarget`, state, range,
positions, distance, line of sight and hostility. Compiled, 0 errors. Refiled: the next report names the cause
if this was not it.

## Removal chain green — 2026-09-28 (bb88, 24dc240)

Both launches passed (`exitReason: passed`, 1/1 each): launch 1 dressed a fox, a cow and a horse, saved and handed the
save to the removal companion; launch 2, with the mod and its test companion out of the list, loaded it, ran 232 ticks
and saved and reloaded with no error logged after the load. **The load itself is not clean, and that is expected**:
`seq2/Player.log` holds 33 `[ERROR]` lines written by RimWorld while reading the save - `Could not load reference to
Verse.ThingDef named Apparel_leatherdogcollar` (and the four other worn pieces, plus three research projects),
`Exception registering RimWorld.Apparel ... in loaded object directory` (9), `Null key while loading dictionary of
ResearchProjectDef` (3), and 7 `Could not resolve cross refs` whose stack is `Pawn_ApparelTracker.SortWornApparelIntoDrawOrder`
hitting a null apparel. That stack is entirely vanilla code reacting to worn apparel whose def is missing, the same
noise any removed apparel mod produces; Pickle's "no errors were logged" only counts what happens after the fixture is
loaded, which is why the scenario is green. Read this way, the claim of About/PUBLICATION ("removing it mid-game deletes
anything crafted from it, like any content mod") holds, and the property TESTING.md scenario H asks for holds: the game
runs and re-saves cleanly afterwards. Not asserted (headless, no dialog): RimWorld's missing-def dialog itself. Also logged,
harmless: "Pickle removal check did not load any content" (the companion has no Defs by design).

## sans-facultatifs 27 scenarios, all red on "off main thread" — 2026-09-28 (7055, 245178a)

0 passed, 13 failed, 14 skipped. Every failure is "Accessing map pawns off main thread" (`MapPawns.AssertMainThread`),
12 of them as the scenario's own failure and one as a `Log.Error` from `Pickle.Vanilla` `SimSteps:53`
(`ThoughtWorker_YoungstersMoodBase` recalculating a thought off the main thread). Read from `messages.ndjson`: in the
first scenario the first step (`the save is loaded`) passes and the second step - the spawn step of this suite's own
`AnimalSteps`, which reads `map.mapPawns` - fails with that message. Not attributed to the mod or to the suite:
the very same spawn step ran green at 10:19 the same morning in `bb88` (removal chain, seq1) and in every earlier
run since 09-27, and the TicketDispatcher reports the identical error the same day on other mods (A Certain Series
French/Chinese, Ancient Chinese Beast) while the machine was paging under 12.9 GB of paged pool held by two orphaned
`find /` processes (none of them this session's: `Get-Process find,grep,rg` is empty). Treated as infrastructure
until a run on a quiet machine says otherwise. The render-tree step added in this revision therefore has NOT been
exercised yet: no scenario got past its spawn step. To refile once the queue shows the machine healthy.

- 2026-09-28 run c488 (avec-animaux, 245178a): 7/7 red, exit 6. Real finding: `OskarPotocki.VFE.Vikings` (2231295285, 1.4 DLL only) is loaded as "incompatible version" and its world component raises `MissingMethodException: QuestUtility.SendLetterQuestAvailable`; a second `GenPlace.TryPlaceThing` MissingMethodException from a map component is not yet attributed. Vikings, JapaneseDogs, YorkshireTerrors and sarg.magicalmenagerie removed from the three animal pass maps (no 1.6 build). Exit 6 also = WSL lost for a moment (infrastructure). Pass refiled.

- 2026-09-28 run 37ea (avec-animaux-sans-odyssey, 245178a): 27 scenarios, 0 passed, 17 failed ("PickleDriver.WaitUntil timed out after 175s"), 10 skipped. Same mod list as c488 (Vikings 1.4 DLL among them), so read as the same defect, not scenario failures. Refiled after map fix (0b71430); result of avec-animaux 4c3b decides.

## Translation audit — 2026-09-30 (French gender-agreement rule and review gate)

`TRANSLATIONS.md` gained two rules on 2026-09-30: every French text agreeing with a pawn must use
the three-segment `{PAWN_gender ? masculine : feminine : ·neutral}` switch, and `translation_fr`
cannot be `complete` until Virginie herself has read the French (a session can only reach
`partial`). Every mod with a `Languages/French` folder had `translation_fr` reset to `unchecked`
for the gender-agreement rule; this session's own field was reset by a peer session
(`local_89040399-704d-4ba4-9dd3-d904bac14bfc`, "Vérification traductions féminines/inclusives"),
corroborated independently against this file before acting.

**Gender-agreement re-read, all 102 shipped French strings** (8 files: `Keyed/Settings.xml`, 7
`DefInjected` files). None uses `{PAWN_gender...}` and none needs it: every agreeing adjective or
participle modifies an inanimate noun (the apparel item — "un collier", "un sac", "une armure"),
never the animal wearing it. Confirmed by reading each string, not by a pattern search for `{PAWN`
or `·` (both absent, consistent with the reading). No text describes a pawn's own attributes in
this mod, so the rule is `not_applicable` to it specifically, independent of the overall
`translation_fr` field.

**`FRENCH_REVIEW.md`** generated at the mod root (never inside `Mod/`) by a new
`_tools/gen-french-review.mjs`, which reads the shipped XML rather than being written by hand: one
table per source file, in shipped order, Key/path | Original | English | French. Original is the
same as English everywhere — this mod migrates seven English Workshop add-ons (`ATTRIBUTION.md`),
none with a non-English source. English for `Keyed/Settings.xml` comes from
`Mod/Languages/English/Keyed/Settings.xml`; English for the seven `DefInjected` files comes from
the `<!-- EN: ... -->` comment that precedes each entry in the shipped French XML itself (a
pattern already used throughout this mod's DefInjected files). 18 of 102 rows have no such comment
(`ApparelSettings.xml`'s two entries, and the 16 MVCF `comps.Comp_VerbGiver.verbProps.0.*` command
labels/descriptions under a plain, non-`EN:` header comment) and are flagged `?` in the generated
file for the reviewer to verify against `Mod/Defs` directly, rather than guessing.

`translation_fr` moves from `unchecked` to `partial`: the inventory, gender-agreement re-read and
`FRENCH_REVIEW.md` generation are done, but per the new rule it cannot become `complete` until
Virginie reads `FRENCH_REVIEW.md` herself and records that review under this section, dated, with
the revision covered and any corrections requested. This session does not mark its own French
reviewed. `remaining` carries the "French review by Virginie" entry until then.
