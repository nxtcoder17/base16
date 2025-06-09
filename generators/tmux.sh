#! /usr/bin/env bash

set -o nounset
set -o pipefail
set -o errexit

[[ -z "$OUTPUT_DIR" ]] && echo "OUTPUT_DIR must be set"
dir=$OUTPUT_DIR/tmux
mkdir -p "$dir"

cat >"$dir/base16.sh" <<EOF
hl_bg="$COLOR_01"
hl_fg="$COLOR_04"
hl_selected_bg="$COLOR_01"
hl_selected_fg="$COLOR_0D"
EOF
