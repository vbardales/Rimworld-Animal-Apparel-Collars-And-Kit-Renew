# Preview sources

The current Preview is reproduced by the shared renderer from:

- `Preview-source.png`: text-free background;
- `echo.png`: final line art, consumed unchanged;
- `ModIcon-source.png`: final transparent badge used in the Preview;
- `Preview.config.json`: copy, title hierarchy, placement and palette.

Run `node ../scripts/Render-Preview.cjs` from the repository root only when a
source or configuration value changes, or when an output is missing or
inconsistent. The renderer writes `Mod/About/Preview.png`, its byte-identical
`Art/gallery/0-preview.png` copy, and both ICO files. Temporary HTML and QA
evidence live under ignored `Art/.render/`.

`ModIcon-original.png` is retained separately because it is an uncommitted,
unique full-resolution original; it must not be deleted merely to satisfy the
minimal generated-file convention.
