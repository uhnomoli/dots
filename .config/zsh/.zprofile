if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
    exec ssh-agent startx "$XINITRC" -- "$XSERVERRC" vt1
fi

