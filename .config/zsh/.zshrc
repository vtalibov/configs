# Vladimir's zsh configuration

export LC_all=en_US.UTF-8
export LANG=en_US.UTF-8

autoload -U colors && colors # colors
PS1="%{$fg[red]%}%n%{$fg[green]%}%{$fg[yellow]%}@%{$fg[blue]%}%m %{$fg[magenta]%}%~ %{$reset_color%}$ " # prompt

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/history/zsh_history
HIST_STAMPS="yyyy-mm-dd" # time stamps in history

# vim bindings
set -o vi

# Autocopletion
autoload -Uz compinit # enable autocompletion
compinit # enable autocompletion
zstyle ':completion:*' menu select # arrow choice of autocomplete options
_comp_options+=(globdots) # include hidden files

# custom alias
alias szsh="source ~/.config/zsh/.zshrc"
alias vim="nvim" # because neovim!
alias view="nvim -R"
alias nvimrc="nvim ~/.config/nvim/init.vim"
alias zshrc="nvim ~/.config/zsh/.zshrc"
alias ls="ls --color=auto"
alias rm="rm -I" # Are you sure?..

# to use git convinient to backup dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.mydotfiles/ --work-tree=$HOME'

# alias to start new sessions for favourite apps
alias zathura="setsid zathura"
alias sxiv="setsid sxiv"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/grmid/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/grmid/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/grmid/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/grmid/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

