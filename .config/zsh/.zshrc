# auto-configuration
# Lines configured by zsh-newuser-install
# HISTFILE=~/.histfile
HISTFILE="$XDG_DATA_HOME/zsh/histfile"
HISTSIZE=1000
SAVEHIST=1000

setopt appendhistory extendedglob

bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$XDG_CONFIG_HOME/zsh/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall


# completion colors
eval `dircolors`
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# history search
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search

zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey "\e[A" up-line-or-beginning-search
bindkey "\e[B" down-line-or-beginning-search

# config files
. "$XDG_CONFIG_HOME/zsh/aliases.zsh"
. "$XDG_CONFIG_HOME/zsh/functions.zsh"
. "$XDG_CONFIG_HOME/zsh/prompt.zsh"

