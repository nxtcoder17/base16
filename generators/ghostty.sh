#! /usr/bin/env bash

set -o nounset
set -o pipefail
set -o errexit

[[ -z "$OUTPUT_DIR" ]] && echo "OUTPUT_DIR must be set"
dir=$OUTPUT_DIR/ghostty
mkdir -p "$dir"

cat >"$dir/base16.conf" <<EOF
palette = 0=$COLOR_01
palette = 1=$COLOR_01
palette = 2=$COLOR_02
palette = 3=$COLOR_03
palette = 4=$COLOR_04
palette = 5=$COLOR_05
palette = 6=$COLOR_06
palette = 7=$COLOR_07
palette = 8=$COLOR_08
palette = 9=$COLOR_09
palette = 10=$COLOR_0A
palette = 11=$COLOR_0B
palette = 12=$COLOR_0C
palette = 13=$COLOR_0D
palette = 14=$COLOR_0E
palette = 15=$COLOR_0F
background = $COLOR_00
foreground = $COLOR_05
cursor-color = $COLOR_03
cursor-text = $COLOR_07
selection-background = $COLOR_03
selection-foreground = $COLOR_04
EOF
