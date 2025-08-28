# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export PATH="~/.local/bin:$PATH"
export PATH="$PATH:/home/boy/.local/bin"

eval "$(zoxide init bash)"

# Truncate path to last 2 directories
PROMPT_DIRTRIM=2

# Custom prompt with colors: user@hostname:path$
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
