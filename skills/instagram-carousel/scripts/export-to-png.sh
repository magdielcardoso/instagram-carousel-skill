#!/bin/sh
set -eu

if [ "$#" -ne 2 ]; then
  printf 'Uso: %s <imagem-renderizada> <saida.png>\n' "$0" >&2
  exit 64
fi

input=$1
output=$2

if ! command -v magick >/dev/null 2>&1; then
  printf "Erro: ImageMagick não foi encontrado (comando 'magick').\n" >&2
  exit 127
fi

if [ ! -f "$input" ]; then
  printf 'Erro: imagem de entrada não encontrada: %s\n' "$input" >&2
  exit 66
fi

case "$output" in
  *.png|*.PNG) ;;
  *) printf 'Erro: o caminho de saída precisa terminar em .png: %s\n' "$output" >&2; exit 64 ;;
esac

output_dir=$(dirname "$output")
mkdir -p "$output_dir"

magick "${input}[0]" -auto-orient -strip \
  -define png:exclude-chunk=date,time "$output"
