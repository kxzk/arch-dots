case $- in
    *i*) ;;
    *) return ;;
esac


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

git_branch() {
    git branch 2>/dev/null | sed -n 's/^\* //p'
}

git_prompt() {
    local branch=$(git_branch)
    [[ -n $branch ]] && echo " $branch"
}

dir_prompt() {
    if [[ "$PWD" == "$HOME" ]]; then
        echo "~"
    else
        # show last two directories like zsh's %2~
        local dir=$(dirs +0)
        if [[ "$dir" == "~" ]]; then
            echo "~"
        else
            local shortened=$(echo "$dir" | sed "s|^$HOME|~|" | awk -F/ '{
                if (NF <= 2) print $0
                else print $(NF-1)"/"$NF
            }')
            echo "$shortened"
        fi
    fi
}

PS1='\[\033[0;32m\]boy@ixian\[\033[0m\] 𝝺 \[\033[0;34m\]$(dir_prompt)\[\033[0m\]\[\033[0;35m\]$(git_prompt)\[\033[0m\] '

export PATH="~/.local/bin:$PATH"
export PATH="$PATH:/home/boy/.local/bin"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init bash)"

eval "$(zoxide init bash)"
