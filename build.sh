#!/bin/sh
# Rebuilds the published page from site/ with the engine, into this folder,
# which GitHub Pages publishes from main as it is.
set -eu
cd "$(dirname "$0")"
git submodule update --init
(cd engine && npm ci --silent)
node engine/tools/build.js --site site --out .
