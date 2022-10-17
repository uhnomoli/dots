setopt prompt_subst

# git info
git_prompt() {
    local branch="$(git symbolic-ref -q HEAD 2>/dev/null)"
    if [ -n "$branch" ]; then
        local state="${branch#(refs/heads/)}"

        local ahead="$(git log --oneline @{u}.. 2>/dev/null | wc -l | tr -d ' ')"
        if [ "$ahead" -gt 0 ]; then
            state="${state}%F{10}+%f"
        fi

        local behind="$(git log --oneline ..@{u} 2>/dev/null | wc -l | tr -d ' ')"
        if [ "$behind" -gt 0 ]; then
            state="${state}%F{9}-%f"
        fi

        if ! git diff --quiet 2>/dev/null; then
            state="${state}%F{11}~%f"
        fi

        echo " %F{11}($state%F{11})%f"
    fi
}

# python venv info
pvenv_prompt() {
    if [ -n "$VIRTUAL_ENV" ]; then
        echo "%F{10}(${VIRTUAL_ENV:t})%f "
    fi
}

COLOR_OVERRIDE='$(echo -ne '\''\e]4;237;#3D382E\a'\'')'
GIT_PROMPT_STR='$(git_prompt)'
PVENV_PROMPT_STR='$(pvenv_prompt)'
VIRTUAL_ENV_DISABLE_PROMPT=1

PS1="${COLOR_OVERRIDE}%{%F{237}%}${(l:$COLUMNS::─:)}%{%f%}
${PVENV_PROMPT_STR}%F{7}%n%F{8}@%F{7}%m %B%F{14}(%2~)%f%b${GIT_PROMPT_STR}
    %{%F{11}%}%#%{%f%} "

