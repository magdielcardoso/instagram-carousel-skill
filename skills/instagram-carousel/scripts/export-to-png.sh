#!/bin/sh
set -eu

if [ "$#" -ne 2 ]; then
  printf 'Usage: %s <rendered-image> <output.png>\n' "$0" >&2
  exit 64
fi

input=$1
output=$2

if ! command -v magick >/dev/null 2>&1; then
  printf "Error: ImageMagick was not found (expected the 'magick' command).\n" >&2
  exit 127
fi

if [ ! -f "$input" ]; then
  printf 'Error: input image not found: %s\n' "$input" >&2
  exit 66
fi

case "$output" in
  *.png|*.PNG) ;;
  *) printf 'Error: output path must end in .png: %s\n' "$output" >&2; exit 64 ;;
esac

output_dir=$(dirname "$output")
mkdir -p "$output_dir"

magick "${input}[0]" -auto-orient -strip \
  -define png:exclude-chunk=date,time "$output"
