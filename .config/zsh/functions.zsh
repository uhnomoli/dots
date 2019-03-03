pcd() {
    if [ $# -eq 1 ] && [[ "$1" =~ "^[a-zA-Z0-9]+$" ]]; then
        local dst="${HOME}/projects/python/${1}"
        local env="${HOME}/projects/python/.envs/${1}"

        if [ -n "$VIRTUAL_ENV" ]; then
            if [ "${VIRTUAL_ENV:t}" = "$1" ]; then
                cd "$dst"

                return
            fi

            pde
        fi

        if [ -d "$dst" ] && [ -d "$env" ]; then
            cd "$dst"
            . "${env}/bin/activate"
        fi
    fi
}

pde() {
    if [ -n "$VIRTUAL_ENV" ]; then
        deactivate
        cd ~
    fi
}

pmk() {
    if [ $# -eq 1 ] && [[ "$1" =~ "^[a-zA-Z0-9]+$" ]]; then
        local dst="${HOME}/projects/python/${1}"
        local env="${HOME}/projects/python/.envs/${1}"

        if [ -n "$VIRTUAL_ENV" ]; then
            if [ "${VIRTUAL_ENV:t}" = "$1" ]; then
                return
            fi

            pde
        fi

        if [ ! -d "$dst" ] && [ ! -d "$env" ]; then
            mkdir "$dst"
            python -m venv "${env:a}"

            pcd "$1"
        fi
    fi
}

prm() {
    if [ $# -eq 1 ] && [[ "$1" =~ "^[a-zA-Z0-9]+$" ]]; then
        local dst="${HOME}/projects/python/${1}"
        local env="${HOME}/projects/python/.envs/${1}"

        if [ -n "$VIRTUAL_ENV" ]; then
            if [ "${VIRTUAL_ENV:t}" = "$1" ]; then
                cd "${HOME}/projects/python"
            fi

            pde
        fi

        if [ -d "$dst" ] && [ -d "$env" ]; then
            echo "$dst"
            echo "$env"

            rm -Rf -I "$dst" "$env"
        fi
    fi
}

rq() {
    RESPONSE=`curl -sS "$@"`

    if [ "$?" -eq 0 ]; then
        jq -C '.' <<< "$RESPONSE" | less -RX
    else
        echo "$RESPONSE"
    fi
}

