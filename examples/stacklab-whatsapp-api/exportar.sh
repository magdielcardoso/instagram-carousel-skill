#!/usr/bin/env bash
set -euo pipefail

BASE_DIR="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
OUTPUT_DIR="$BASE_DIR/imagens"
MAGICK_BIN="${MAGICK_BIN:-magick}"
BROWSER_BIN="${CHROME_BIN:-${CHROMIUM_BIN:-}}"

if [[ -z "$BROWSER_BIN" ]]; then
  if [[ "$(uname -s)" == "Darwin" && -x "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" ]]; then
    BROWSER_BIN="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
  else
    for candidate in google-chrome google-chrome-stable chromium chromium-browser chrome; do
      if command -v "$candidate" >/dev/null 2>&1; then
        BROWSER_BIN="$(command -v "$candidate")"
        break
      fi
    done
  fi
fi

if [[ -z "$BROWSER_BIN" || ! -x "$BROWSER_BIN" ]]; then
  echo "Chrome/Chromium não encontrado. Defina CHROME_BIN para o executável." >&2
  exit 1
fi
if ! command -v "$MAGICK_BIN" >/dev/null 2>&1; then
  echo "ImageMagick não encontrado. Defina MAGICK_BIN para o executável magick." >&2
  exit 1
fi

SLIDE_COUNT="$(python3 -c 'import json,sys; print(json.load(open(sys.argv[1], encoding="utf-8"))["slides"])' "$BASE_DIR/manifest.json")"
mkdir -p "$OUTPUT_DIR"
HTML_URL="$(python3 -c 'from pathlib import Path; import sys; print(Path(sys.argv[1]).resolve().as_uri())' "$BASE_DIR/index.html")"

for ((slide=1; slide<=SLIDE_COUNT; slide+=1)); do
  RELATIVE_OUTPUT="$(python3 -c 'import json,sys; print(json.load(open(sys.argv[1], encoding="utf-8"))["files"][int(sys.argv[2])-1])' "$BASE_DIR/manifest.json" "$slide")"
  RAW_IMAGE="${TMPDIR:-/tmp}/instagram-carousel-$slide-$$.png"
  if ! "$BROWSER_BIN" --headless --disable-gpu --no-sandbox --hide-scrollbars --disable-extensions --disable-background-networking --disable-default-apps --no-first-run --screenshot="$RAW_IMAGE" --window-size=1080,1350 --force-device-scale-factor=1 --virtual-time-budget=300 "${HTML_URL}?slide=$slide" >/dev/null 2>&1; then
    if [[ ! -s "$RAW_IMAGE" ]]; then
      echo "Chrome não gerou a tela $slide." >&2
      rm -f "$RAW_IMAGE"
      exit 1
    fi
  fi
  if [[ ! -s "$RAW_IMAGE" ]]; then
    echo "Chrome não gerou a tela $slide." >&2
    exit 1
  fi
  "$MAGICK_BIN" "$RAW_IMAGE" -crop 1080x1350+0+0 +repage -strip -define png:exclude-chunk=date,time "$BASE_DIR/$RELATIVE_OUTPUT"
  rm -f "$RAW_IMAGE"
done
