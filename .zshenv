# set system variables
export EDITOR='vim'
export PAGER='less -X'

# set xdg directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"

# set cuda cache directory
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"

# set gnupg home directory
export GNUPGHOME="$XDG_DATA_HOME/gnupg"

# set gtk theme
export GTK_THEME="Gruvbox-Material-Dark"

# set ipython config directory
export IPYTHONDIR="$XDG_CONFIG_HOME/ipython"

# set java directories
export _JAVA_OPTIONS="-Djava.util.prefs.userRoot=${XDG_CONFIG_HOME}/java"

# set less history file location
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"

# set parallel home directory
export PARALLEL_HOME="${XDG_CONFIG_HOME}/parallel"

# set npm config directory
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

# set perl directories
export PATH="${HOME}/perl5/bin${PATH:+:${PATH}}"
export PERL5LIB="${HOME}/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"
export PERL_LOCAL_LIB_ROOT="${HOME}/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
export PERL_MB_OPT="--install_base \"${HOME}/perl5\""
export PERL_MM_OPT="INSTALL_BASE=${HOME}/perl5"

# set python directories
export PYTHONPYCACHEPREFIX="${XDG_CACHE_HOME}/python"
export PYTHONUSERBASE="${XDG_DATA_HOME}/python"

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

