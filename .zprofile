#!/bin/zsh

# Vladimir 20/06/03
# zsh profile, to run on login. Contains enviromental variables.

export LC_CTYPE=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8

# Add to PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | paste -sd ':')"

# Default programs
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"
export READER="zathura"

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
