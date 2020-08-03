#!/bin/zsh

# Vladimir 20/06/03
# zsh profile, to run on login. Contains enviromental variables.

# Add to PATH
export PATH=$HOME/.local/bin/bar:$HOME/.local/bin:$HOME/.cargo/bin:$PATH

# Default programs
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export READER="zathura"

# Some more variables
export CITY=Lund

# home folder to XDG Base Directory Specification
# cleans up ~/ from dot files
# https://wiki.archlinux.org/index.php/XDG_Base_Directory
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export IPYTHONDIR="$XDG_CONFIG_HOME/jupyter"
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export SCREENSHOT="$HOME/Pictures/Screenshots"
