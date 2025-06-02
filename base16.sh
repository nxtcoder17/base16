#! /usr/bin/env bash

## nxt base16

export baseError="#a3685a"

export base00="#151617" # HSL(210°, 9%, 9%)
export base01="#2c3035" # HSL(210°, 9%, 19%)
export base02="#434a51" # HSL(210°, 9%, 29%)
export base03="#5a636c" # HSL(210°, 9%, 39%)
export base04="#727d88" # HSL(210°, 9%, 49%)
export base05="#8d96a0" # HSL(210°, 9%, 59%)
export base06="#a9b0b7" # HSL(210°, 9%, 69%)
export base07="#c5c9ce" # HSL(210°, 9%, 79%)

# export base08="#bc9467" # HSL(32°, 39%, 57%)
export base08="#988167" # HSL(32°, 19%, 50%)
export base09="#bcab67" # HSL(48°, 39%, 57%)
export base0A="#a0bc67" # HSL(80°, 39%, 57%)
export base0B="#89bc67" # HSL(96°, 39%, 57%)
export base0C="#67abbc" # HSL(192°, 39%, 57%)
export base0D="#6794bc" # HSL(208°, 39%, 57%)
# export base0E="#6767bc" # HSL(240°, 39%, 57%)
export base0E="#676798" # HSL(240°, 19%, 50%)
# export base0F="#9467bc" # HSL(272°, 39%, 57%)
# export base0F="#8f8b65" # HSL(336°, 39%, 57%)
export base0F="#bc6789" # HSL(336°, 39%, 57%)

fish_config() {
  cat >fish.fish <<EOF
set -gx fish_color_normal normal
set -gx fish_color_command "$base0B"
set -gx fish_color_quote "$base0A"
set -gx fish_color_redirection "$base0A"
set -gx fish_color_end "$base0A"
set -gx fish_color_error "$baseError"
set -gx fish_color_param "$base0C"
set -gx fish_color_comment "$base02"
set -gx fish_color_match "$base09"
set -gx fish_color_selection "$base0E"
set -gx fish_color_search_match "$base09"
set -gx fish_color_history_current "$base0E"
set -gx fish_color_operator "$base0C"
set -gx fish_color_escape "$base0C"
set -gx fish_color_cwd "$base0D"
set -gx fish_color_cwd_root "$base0D"
set -gx fish_color_git "$base0B"
set -gx fish_color_valid_path "$base0B"
set -gx fish_color_autosuggestion "$base03"
set -gx fish_color_user "$base0C"
set -gx fish_color_host normal
set -gx fish_color_cancel -r
set -gx fish_pager_color_completion normal
set -gx fish_pager_color_description "$base02"
set -gx fish_pager_color_prefix "$base02"--bold --underline
set -gx fish_pager_color_progress "$base02" --background="$base0B"
EOF

  cat >fzf.fish <<EOF
# [source](https://github.com/tinted-theming/tinted-fzf/blob/main/fish/base24-chalk.fish)
set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" \$arg
        set -a FZF_NON_COLOR_OPTS \$arg
    end
end

set -Ux FZF_DEFAULT_OPTS "\$FZF_NON_COLOR_OPTS"\
" --color=bg:$base00,fg:$base05,hl:$base0A"\
" --color=bg+:$base00,fg+:$base0B,hl+:$base09"\
" --color=info:$base0D,border:$base02,prompt:$base0B"\
" --color=pointer:$base0D,marker:$base08,spinner:$base08,header:$base08"
EOF
}

kitty_config() {
  # [source](https://github.com/tinted-theming/tinted-terminal/blob/main/templates/kitty-base16.mustache)
  cat >kitty.conf <<EOF
background $base00
foreground $base05
selection_background $base03
selection_foreground $base05

# Cursor colors
cursor $base05
cursor_text_color $base00

# URL underline color when hovering with mouse
url_color $base04

# Kitty window border colors
active_border_color $base03
inactive_border_color $base01

# OS Window titlebar colors
wayland_titlebar_color $base00
macos_titlebar_color $base00

# Tab bar colors
active_tab_background $base00
active_tab_foreground $base05
inactive_tab_background $base01
inactive_tab_foreground $base04
tab_bar_background $base01

# The 16 terminal colors
# normal
color0 $base00
color1 $base08
color2 $base0B
color3 $base0A
color4 $base0D
color5 $base0E
color6 $base0C
color7 $base05

# bright
color8 $base02
color9 $base08
color10 $base0B
color11 $base0A
color12 $base0D
color13 $base0E
color14 $base0C
color15 $base07
EOF
}

nvim_config() {
  cat >nvim-base16.lua <<EOF
return {
  base00 = "$base00",
  base01 = "$base01",
  base02 = "$base02",
  base03 = "$base03",
  base04 = "$base04",
  base05 = "$base05",
  base06 = "$base06",
  base07 = "$base07",
  base08 = "$base08",
  base09 = "$base09",
  base0A = "$base0A",
  base0B = "$base0B",
  base0C = "$base0C",
  base0D = "$base0D",
  base0E = "$base0E",
  base0F = "$base0F",
}
EOF
}

tmux_config() {
  cat >tmux-base16.sh <<EOF
hl_bg="$base01"
hl_fg="$base04"
hl_selected_bg="$base01"
hl_selected_fg="$base0D"
EOF
}

ghostty_config() {
  cat >base16.conf <<EOF
palette = 0=$base01
palette = 1=$base01
palette = 2=$base02
palette = 3=$base03
palette = 4=$base04
palette = 5=$base05
palette = 6=$base06
palette = 7=$base07
palette = 8=$base08
palette = 9=$base09
palette = 10=$base0A
palette = 11=$base0B
palette = 12=$base0C
palette = 13=$base0D
palette = 14=$base0E
palette = 15=$base0F
background = $base00
foreground = $base05
cursor-color = $base03
cursor-text = $base07
selection-background = $base03
selection-foreground = $base04
EOF

  ln -sf "$PWD"/base16.conf ~/.config/ghostty/themes/base16.conf
}

dir=~/.base16
mkdir -p $dir
pushd $dir || exit 1
fish_config
kitty_config
nvim_config
tmux_config
ghostty_config
popd || exit 1
