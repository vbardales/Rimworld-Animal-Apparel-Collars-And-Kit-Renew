# Preview composition

`Preview.png` is the unlettered source, copied unchanged from `Preview-source.png`.
The original is retained. Composition is `../scripts/Render-Preview.cjs`, shared with
every other mod in this repository since 2026-09-29; this mod's own copy, title, tag
and icon badge come from `preview-copy.json`, its colors from `preview-palette.json`.
The highest stable version is read from the shipped `Mod/About/About.xml`.

Run from this mod's own directory:

```bash
node ../scripts/Render-Preview.cjs [bottom-left|bottom-right|top-left]
uv run --with pillow python Art/verify-preview.py
```

The first writes `Art/Preview-layout.html`, `Mod/About/Preview.png`,
`Art/Preview-background-qa.png` and `Art/Preview-qa.json`. `verify-preview.py`
reads those two, re-measures contrast (minimum 4.5, over every pixel of each
unrotated text bounding box, not just its corners, against the actual rendered
background), asserts no box is clipped and the PNG stays under 900 000 bytes, and
writes `Art/Preview-thumbnail-qa.png` at 268 px for visual review at both sizes.
Python is not installed directly on this machine; `uv run --with pillow` fetches
Pillow into an ephemeral environment.

The icon badge (`ModIcon-badge.png`) is `Mod/About/ModIcon.png` with its background
flood-filled to transparent and cropped to its alpha bounding box, produced once by
`../scripts/Make-PreviewBadge.ps1 -SaveTrimmedIconTo Art/ModIcon-badge.png`; rerun it
only if `ModIcon.png` changes. `preview-copy.json`'s `iconBadge.corner` picks where
it sits (`bottom-left` here — clear of both the copy box and the version triangle).

This mod's title ("Animal Apparel: Collars and Kit") is long enough to wrap onto two
lines, which the earlier per-mod-only renderer never exercised: the shared script's
`.copy` box gained an explicit `width:430px` (2026-09-29) so a long title wraps
inside the readable column instead of running under the illustration, and the veil's
radial gradient gained a flat 0%-48% plateau before its fade so a two-line title
does not push the tag/summary text into a low-opacity zone. Both changes are in
`scripts/Render-Preview.cjs` and apply to every mod using it, not a local override.

The panel follows the shared content-sized layout: 30 px above top-anchored copy,
48 px laterally, and 20 px below the summary. `Renew` and inline `(unofficial)`
share the same 65% scale. `echo-source.png` is the bespoke transparent line-art
source of the armored horse; the shared renderer normalizes it to a 3 px stroke.

Visual review at 896 and 268 px remains necessary after changes: the automated
checks cannot judge subject overlap or recognize a badge landing on the copy box.
