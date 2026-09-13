---
settings_audit: complete
rights_audit: complete
modicon_audit: complete
preview_audit: complete
automated_tests: complete
xml_tests: complete
localization: complete
translation_en: complete
translation_fr: complete
mod:          Animal Apparel: Collars and Kit Renew (unofficial)
packageId:    nelim.animalapparelcollarsandkitrenew
repo:         Rimworld-Animal-Apparel-Collars-And-Kit-Renew
visibility:   public
detached:     yes
stage:        done
licence:      silent
licence_at:   MIT limited to own contributions and Animal Equipment; six other sources classified silent from documented inactive maintenance; no reuse permission inferred; see ATTRIBUTION visibility decision 2026-09-13
dependencies: declared
showcase:     complete
tested_on:
workshop:
remaining:
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

- **Preview recomposed on 2026-09-12 using the current shared style guide.**
  Final: `Mod/About/Preview.png` (896 × 504, 576404 bytes). Unlettered source:
  `Art/Preview.png`, copied unchanged from the retained `Art/Preview-source.png`;
  no replacement illustration was generated. Composition: `Art/preview.html`;
  sole palette: `Art/preview-palette.json`; renderer: `Art/build-preview.cjs`.
  The veil follows the dark stone/wood surface. The vivid accent comes from the
  red saddle cloth and straps, with increased saturation and lightness; it contrasts
  with the dominant ochre family rather than repeating the lamp gold. The secondary ink
  follows the dominant ochre family of the floor and wood, lightened for the dark veil.
  Source positioning and a feathered left edge leave the existing summary unobstructed.
  Chrome confirmed Segoe UI Semibold for the title, Segoe UI for tag/summary and
  Segoe UI Bold for the badge, after `document.fonts.ready`. Badge version 1.6 is read
  from the shipped supportedVersions. Full-box minimum contrasts on the rendered
  text-free background: title 8.87:1, reduced liaison 11.63:1, Renew 7.2:1, tag 5.48:1,
  summary 5.18:1; badge 5.46:1. Title uses 46 px, with direct 0.65em spans
  for and (primary ink) and Renew (secondary ink), all at weight 600.
  Visual checks at 896 × 504 and 268 px wide passed: no clipped text or overlapping
  text elements; subjects remain visible; title/version identifiable and rule visible.
  Evidence: `Art/preview-qa.json`, `Art/preview-background.png`, `Art/preview-268.png`.
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
