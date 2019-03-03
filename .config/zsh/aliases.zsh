alias reset="reset && . $XDG_CONFIG_HOME/zsh/prompt.zsh"

alias colors='~/scripts/colors'
alias config="git --git-dir=$HOME/.config/.git --work-tree=$HOME"
alias d='docker'
alias di="diff -Naur --color"
alias down='shutdown -h now'
alias e="vim"
alias g="git"
alias gdb="gdb -nh -x $XDG_CONFIG_HOME/gdb/init"
alias hib='systemctl hibernate'
alias ls="ls --color"
alias la="ls -A"
alias ll="ls -lAh"
alias m="make"
alias mm="make -B"
alias md="make -B debug"
alias nap='systemctl suspend'
alias pls="ls ~/projects/python/.envs"
alias s="sudo"
alias se="sudo -E"
alias se='sudo -E'
alias v='less -X'
alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget/hsts"

