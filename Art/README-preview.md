# Preview composition

`Preview.png` is the unlettered source, copied unchanged from `Preview-source.png`.
The original is retained. `preview.html` contains the composition and geometry;
`preview-palette.json` is its only color palette. The title/tag and highest stable
version are read from the shipped `Mod/About/About.xml`.

Run `node Art/build-preview.cjs` from the repository with Node.js, `playwright`
and `sharp` available. Set `NODE_PATH` if these packages are provided by an external
runtime. Chrome defaults to the Windows installation; override with `CHROME_PATH`.
The script serves repository files on loopback while rendering and closes that server.
It waits for fonts and the illustration, checks the actual platform fonts through CDP,
then writes `Mod/About/Preview.png`, `preview-268.png`, `preview-background.png`
and `preview-qa.json`. The background capture hides text for contrast measurements.
Minimum contrast is measured over every pixel of each unrotated text bounding box,
not just its corners; the badge has an opaque background.

The source is composed at 720 px wide, anchored to the right, with a transparent
left edge blending into the sampled veil color. This leaves room for the 430 px summary.
The dark veil holds its opacity across the text before fading into the illustration.
The two-line title uses 46 px. Direct 0.65em spans reduce and (primary ink) and Renew
(secondary ink), keeping weight 600. The red accent follows the saddle cloth and straps,
distinct from the dominant ochre secondary ink. All parameters are in HTML.

Visual review at 896 and 268 px remains necessary after changes. The automated box
checks cannot judge subject overlap or recognize cut glyphs inside a triangle.
