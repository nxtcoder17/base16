#! /usr/bin/env bash

set -o nounset
set -o pipefail
set -o errexit

[[ -z "$OUTPUT_DIR" ]] && echo "OUTPUT_DIR must be set"
dir=$OUTPUT_DIR/kitty
mkdir -p "$dir"

cat >"$dir/base16.conf" <<EOF
background $COLOR_00
foreground $COLOR_05
selection_background $COLOR_03
selection_foreground $COLOR_05

# Cursor colors
cursor $COLOR_05
cursor_text_color $COLOR_00

# URL underline color when hovering with mouse
url_color $COLOR_04

# Kitty window border colors
active_border_color $COLOR_03
inactive_border_color $COLOR_01

# OS Window titlebar colors
wayland_titlebar_color $COLOR_00
macos_titlebar_color $COLOR_00

# Tab bar colors
active_tab_background $COLOR_00
active_tab_foreground $COLOR_05
inactive_tab_background $COLOR_01
inactive_tab_foreground $COLOR_04
tab_bar_background $COLOR_01

# The 16 terminal colors
# normal
color0 $COLOR_00
color1 $COLOR_08
color2 $COLOR_0B
color3 $COLOR_0A
color4 $COLOR_0D
color5 $COLOR_0E
color6 $COLOR_0C
color7 $COLOR_05

# bright
color8 $COLOR_02
color9 $COLOR_08
color10 $COLOR_0B
color11 $COLOR_0A
color12 $COLOR_0D
color13 $COLOR_0E
color14 $COLOR_0C
color15 $COLOR_07
EOF
