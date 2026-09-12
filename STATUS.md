---
mod:          Animal Apparel: Collars and Kit Renew (unofficial)
packageId:    nelim.animalapparelcollarsandkitrenew
repo:         Rimworld-Animal-Apparel-Collars-And-Kit-Renew
visibility:   public
detached:     yes
stage:        preTest
licence:      silent
licence_at:   own contributions and Animal Equipment are MIT; no licence identified for six other sources in checked materials; abandonment not established for all
dependencies: declared
showcase:     complete
tested_on:
workshop:
remaining:
  - unverified: never loaded by RimWorld; all ten scenarios in TESTING.md are still waiting
  - unverified: the ~1400 restructured textures only fail on screen, never at load
  - unverified: the French translation, 83 keys, never seen - and never on the Steam Deck, where the case of the DefInjected path is what actually matters
session:      local_eb08411e-6348-4f15-aa6b-91964bb77df6
updated:      2026-09-12, reviewed by the mod's own session
---

# Animal Apparel: Collars and Kit Renew — status

Read by a sweep across every mod, rather than by asking each thread in turn. It lives at the
root, never inside `Mod/`, so Steam never receives it. It is not committed either: all 116 cards
laid down on 2026-09-12 are untracked, and this repository does not become the exception on its
own.

- **`stage`** — one of `port`, `showcase`, `preTest`, `done`, `tested`, `published`.
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

## What the sweep had, and why it changed

**`stage` was `done`, it is `preTest`.** The card warned that the field came from the session
group and needed confirming. The port is finished and the showcase is built, but the mod has
never run. That is exactly where Nelim's Animal Ark stands, and it carries `preTest`.

**`licence: silent` is an internal status, not a licence for the whole mod.**
Original contributions and Animal Equipment (Owlchemist, after jptrrs) are declared MIT,
within the scopes stated in `LICENSE`; the notices must be retained. No licence has been
identified for the six other sources in the checked materials, and no permission for their
reuse in this project has been established. Abandonment is not established for all six:
Dipsy offered to update Animal Diapers on 2025-06-14. See `ATTRIBUTION.md` for sources and
verification limits. Credit and removal on request are not licence grants from the authors.

**`workshop` read `reste:`.** The English rewrite folded the old French `reste:` key onto the
`workshop` value instead of renaming it to `remaining`. Repaired here; the other 115 cards are
worth grepping for the same collision.

**`remaining` was back to one generic line.** Restored to the three that are true of this mod.

Three points are with the "Mods 1.6" session, which ran the sweep: whether a mixed licence should
read `silent` or `open` (Animal Ark is in the same position and still says `open`, so the two
cards disagree today), whether `done` describes the development or the readiness, and whether
these cards are meant to be committed at all.

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
  its remote execution has not yet been verified. This does not change `stage: preTest`:
  game rendering, external references and full loader integration remain unverified.
- **The `About.xml` description claims no in-game testing.** `PUBLISHING_STATE.md` asked for every
  description to be audited on that point before a first upload, because a Steam description never
  reprints. This one is clean: no *tested*, *testing*, *review* or *human direction*.
- **The showcase is at the sizes actually drawn**: preview dimensions and weight above;
  unchanged icon 128x128 for 27 KB. Sources and preview build chain are under `Art/`.
- **The repository is pushed and current.** The local tree and `origin/main` carry the same object.

## What is left, plainly

One thing, in three lines: **nobody has ever run this mod.** `TESTING.md` holds the ten scenarios,
four of which — G to J — are the functional half: a restart with the gear still worn, adding and
removing the mod on a live save, French on the Steam Deck, and armour values proved by a hit
actually taken.

Scenario A is the one to run first: the framework alone, without any of the 21 animal mods. It is
what most subscribers will have, and the only one that exercises the 138 `MayRequire` guards.
