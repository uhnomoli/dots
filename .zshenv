# set system variables
export EDITOR='vim'
export PAGER='less -X'

# set XDG directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# set GnuPG home directory
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

# set ipython config directory
export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"

# set less history file location
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"

# set npm config directory
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# set vimrc location
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

# set Xauthority location
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

# set xinitrc location
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"

# set xserverrc location
export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"

# set zsh config directory
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

