#!/bin/bash
# Rebuild the preview from Art/preview.html and its JSON palette.
# Requires Node.js, playwright, sharp and Chrome; see Art/README-preview.md.
set -e
cd "$(dirname "$0")/.."
node Art/build-preview.cjs
