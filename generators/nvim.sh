#! /usr/bin/env bash

set -o nounset
set -o pipefail
set -o errexit

[[ -z "$OUTPUT_DIR" ]] && echo "OUTPUT_DIR must be set"
dir=$OUTPUT_DIR/nvim
mkdir -p "$dir"

cat >"$dir/base16.lua" <<EOF
return {
  base00 = "$COLOR_00",
  base01 = "$COLOR_01",
  base02 = "$COLOR_02",
  base03 = "$COLOR_03",
  base04 = "$COLOR_04",
  base05 = "$COLOR_05",
  base06 = "$COLOR_06",
  base07 = "$COLOR_07",
  base08 = "$COLOR_08",
  base09 = "$COLOR_09",
  base0A = "$COLOR_0A",
  base0B = "$COLOR_0B",
  base0C = "$COLOR_0C",
  base0D = "$COLOR_0D",
  base0E = "$COLOR_0E",
  base0F = "$COLOR_0F",
}
EOF
