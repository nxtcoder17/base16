#! /usr/bin/env bash

export COLOR_00="#151617" # HSL(210°, 9%, 9%)
export COLOR_01="#2c3035" # HSL(210°, 9%, 19%)
export COLOR_02="#434a51" # HSL(210°, 9%, 29%)
export COLOR_03="#5a636c" # HSL(210°, 9%, 39%)
export COLOR_04="#727d88" # HSL(210°, 9%, 49%)
export COLOR_05="#8d96a0" # HSL(210°, 9%, 59%)
export COLOR_06="#a9b0b7" # HSL(210°, 9%, 69%)
export COLOR_07="#c5c9ce" # HSL(210°, 9%, 79%)

# export COLOR_08="#bc9467" # HSL(32°, 39%, 57%)
export COLOR_08="#988167" # HSL(32°, 19%, 50%)
export COLOR_09="#bcab67" # HSL(48°, 39%, 57%)
export COLOR_0A="#a0bc67" # HSL(80°, 39%, 57%)
export COLOR_0B="#89bc67" # HSL(96°, 39%, 57%)
export COLOR_0C="#67abbc" # HSL(192°, 39%, 57%)
export COLOR_0D="#6794bc" # HSL(208°, 39%, 57%)
# export COLOR_0E="#6767bc" # HSL(240°, 39%, 57%)
export COLOR_0E="#676798" # HSL(240°, 19%, 50%)
# export COLOR_0F="#9467bc" # HSL(272°, 39%, 57%)
# export COLOR_0F="#8f8b65" # HSL(336°, 39%, 57%)
export COLOR_0F="#bc6789" # HSL(336°, 39%, 57%)

export OUTPUT_DIR="${OUTPUT_DIR:-$HOME/.base16.d}"

source "./generators/fish.sh"
source "./generators/fzf.sh"
source "./generators/ghostty.sh"
source "./generators/kitty.sh"
source "./generators/nvim.sh"
source "./generators/tmux.sh"
