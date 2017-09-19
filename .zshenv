# set system variables
export EDITOR='vim'
export PAGER='less -X'

# set XDG directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# set ipython config directory
export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"

# set less history file location
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"

# set vimrc location
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

# set xinitrc location
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"

# set zsh config directory
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

