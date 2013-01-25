function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '★' && return
    echo '>'
}

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

PROMPT='%{$fg_bold[blue]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info)%{$reset_color%}
%{$fg[yellow]%}$(prompt_char)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %U%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%u %{$fg[red]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%u %{$fg[yello]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN="%u %{$fg[green]%}✔"
