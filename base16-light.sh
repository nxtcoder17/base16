#! /usr/bin/env bash

export COLOR_00="#dfe2e5"
export COLOR_01="#b6babc"
export COLOR_02="#888b8d"
export COLOR_03="#5b5d5e"

export COLOR_04="#858789"
export COLOR_05="#595a5b"
export COLOR_06="#2c2d2d"
export COLOR_07="#000000"

export COLOR_08="#c82829"
export COLOR_09="#c46c18"
export COLOR_0A="#bb9200"
export COLOR_0B="#5a7000"
export COLOR_0C="#317a7f"
export COLOR_0D="#4271ae"
export COLOR_0E="#8959a8"
export COLOR_0F="#a3685a"

# paper color theme
# base00: #ffffff
# base01: #e0e0e0
# base02: #d6d6d6
# base03: #8e908c
# base04: #969896
# base05: #4d4d4c
# base06: #282a2e
# base07: #1d1f21
# base08: #c82829
# base09: #f5871f
# base0A: #eab700
# base0B: #718c00
# base0C: #3e999f
# base0D: #4271ae
# base0E: #8959a8
# base0F: #a3685a

# base00: #eff1f5
# base01: #e6e9ef
# base02: #ccd0da
# base03: #bcc0cc
# base04: #acb0be
# base05: #4c4f69
# base06: #dc8a78
# base07: #7287fd
# base08: #d20f39
# base09: #fe640b
# base0A: #df8e1d
# base0B: #40a02b
# base0C: #179299
# base0D: #1e66f5
# base0E: #8839ef
# base0F: #dd7878

export OUTPUT_DIR="${OUTPUT_DIR:-$HOME/.base16.d}"

source "./generators/fish.sh"
source "./generators/fzf.sh"
source "./generators/ghostty.sh"
source "./generators/kitty.sh"
source "./generators/nvim.sh"
source "./generators/tmux.sh"
