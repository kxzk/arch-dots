# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# truncate path to last 2 directories
PROMPT_DIRTRIM=2

# custom prompt with colors: user@hostname:path$
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

export PATH="~/.local/bin:$PATH"
export PATH="$PATH:/home/boy/.local/bin"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
eval "$(atuin init bash)"

eval "$(zoxide init bash)"
