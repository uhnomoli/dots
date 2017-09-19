setopt prompt_subst

# python venv info
pvenv_prompt() {
    if [ -n "$VIRTUAL_ENV" ]; then
        echo "%F{10}(${VIRTUAL_ENV:t})%f "
    fi
}

VIRTUAL_ENV_DISABLE_PROMPT=1


# git info
git_prompt() {
    local branch="$(git symbolic-ref -q HEAD 2>/dev/null)"
    if [ -n "$branch" ]; then
        local state="${branch#(refs/heads/)}"

        local ahead="$(git log --oneline @{u}.. 2>/dev/null | wc -l | tr -d ' ')"
        if [ "$ahead" -gt 0 ]; then
            state="${state}%F{2}+%f"
        fi

        local behind="$(git log --oneline ..@{u} 2>/dev/null | wc -l | tr -d ' ')"
        if [ "$behind" -gt 0 ]; then
            state="${state}%F{1}-%f"
        fi

        if ! git diff --quiet 2>/dev/null; then
            state="${state}%F{3}~%f"
        fi

        echo " %F{9}($state%F{9})%f"
    fi
}

PVENV_PROMPT_STR='$(pvenv_prompt)'
GIT_PROMPT_STR='$(git_prompt)'

PS1="%{%F{0}%}${(l:$COLUMNS::─:)}%{%f%}
${PVENV_PROMPT_STR}%F{12}%n%F{7}@%F{12}%m %B%F{14}(%2~)%f%b${GIT_PROMPT_STR}
    %{%F{6}%}%#%{%f%} "

