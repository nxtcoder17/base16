#! /usr/bin/env bash

set -o nounset
set -o pipefail
set -o errexit

[[ -z "$OUTPUT_DIR" ]] && echo "OUTPUT_DIR must be set"
dir=$OUTPUT_DIR/fish
mkdir -p "$dir"

cat >"$dir/base16.fish" <<EOF
set -gx fish_color_normal normal
set -gx fish_color_command "$COLOR_0B"
set -gx fish_color_quote "$COLOR_0A"
set -gx fish_color_redirection "$COLOR_0A"
set -gx fish_color_end "$COLOR_0A"
set -gx fish_color_error "$COLOR_08"
set -gx fish_color_param "$COLOR_0C"
set -gx fish_color_comment "$COLOR_02"
set -gx fish_color_match "$COLOR_09"
set -gx fish_color_selection "$COLOR_0E"
set -gx fish_color_search_match "$COLOR_09"
set -gx fish_color_history_current "$COLOR_0E"
set -gx fish_color_operator "$COLOR_0C"
set -gx fish_color_escape "$COLOR_0C"
set -gx fish_color_cwd "$COLOR_0D"
set -gx fish_color_cwd_root "$COLOR_0D"
set -gx fish_color_git "$COLOR_0B"
set -gx fish_color_valid_path "$COLOR_0B"
set -gx fish_color_autosuggestion "$COLOR_03"
set -gx fish_color_user "$COLOR_0C"
set -gx fish_color_host normal
set -gx fish_color_cancel -r
set -gx fish_pager_color_completion normal
set -gx fish_pager_color_description "$COLOR_02"
set -gx fish_pager_color_prefix "$COLOR_02"--bold --underline
set -gx fish_pager_color_progress "$COLOR_02" --background="$COLOR_0B"
EOF
