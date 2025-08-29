alias ..="z .."
alias ...="z ../.."

# ignores
alias ignorepy="curl https://www.toptal.com/developers/gitignore/api/python,macos,data,jupyternotebooks > .gitignore"
alias ignorego="curl https://www.toptal.com/developers/gitignore/api/go,macos > .gitignore"

# util
alias g="git"
alias vim="nvim"
alias grep="grep --color=auto"
alias ip="curl ipecho.net/plain ; echo"
alias weather="curl wttr.in"
alias dots="cd arch-dots"
alias cd="z"
alias ls="eza --icons"
alias lst="eza -T --icons"
alias tree="eza -lxT --no-permissions --no-time --no-user --no-filesize --icons"
alias ativ="source .venv/bin/activate"
alias dativ="deactivate"

mk() { mkdir -p "$1" && cd "$1"; }

alias cldp="claude --dangerously-skip-permissions --disallowedTools NotebookEdit,NotebookWrite"
alias cl="claude --disallowedTools NotebookEdit,NotebookWrite"

alias thunar="thunar 2>/dev/null"
alias open="xdg-open"
