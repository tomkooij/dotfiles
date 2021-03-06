# .bashrc
# Get the aliases and functions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# PATH is in bash_profile
alias less='less --RAW-CONTROL-CHARS'
export LS_OPTS='-h --color=auto'
alias ls='ls ${LS_OPTS}'
alias tmux="tmux -2"

export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1

# perl local::lib
eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)"

if [ -f ~/.bash.colors ]; then
    source ~/.bash.colors
fi

if [ -f ~/.git-prompt.sh ]; then
    source ~/.git-prompt.sh
    #export PS1='[\W]$(__git_ps1 "(%s)"): '
fi
export PS1='\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\]\w\n[\W$(__git_ps1 " (%s)")]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]'
