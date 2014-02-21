local user='%{$fg[white]%}%n%{$fg[red]%}@%{$fg[white]%}%m%{$reset_color%}'
local pwd='%{$fg[red]%}%~ '
local return_code='%(?..%{$fg[red]%}%? ↵%{$reset_color%})'
local git_branch='$(git_prompt_status)%{$reset_color%}$(git_prompt_info)%{$reset_color%}'

function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg[yellow]%}⚡⚡⚡"; else echo "$"; fi
}

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[red]%}±%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"

PROMPT="${user} ${pwd}%_$(prompt_char)%{$reset_color%} "
RPROMPT="${return_code} ${git_branch} %{$fg[red]%}⌚ %{$fg[blue]%}%*%{$reset_color%}"
