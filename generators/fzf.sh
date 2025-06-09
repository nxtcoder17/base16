#! /usr/bin/env bash

set -o nounset
set -o pipefail
set -o errexit

[[ -z "$OUTPUT_DIR" ]] && echo "OUTPUT_DIR must be set"
dir=$OUTPUT_DIR/fzf
mkdir -p "$dir"

cat >"$dir/base16.fish" <<EOF
# [source](https://github.com/tinted-theming/tinted-fzf/blob/main/fish/base24-chalk.fish)
set -l FZF_NON_COLOR_OPTS

set -Ux FZF_DEFAULT_OPTS \
" --color=bg:$COLOR_00,fg:$COLOR_05,hl:$COLOR_0A"\
" --color=bg+:$COLOR_00,fg+:$COLOR_0B,hl+:$COLOR_09"\
" --color=info:$COLOR_0D,border:$COLOR_02,prompt:$COLOR_0B"\
" --color=pointer:$COLOR_0D,marker:$COLOR_08,spinner:$COLOR_08,header:$COLOR_08"
EOF
