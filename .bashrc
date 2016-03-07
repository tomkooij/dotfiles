# .bashrc
# Get the aliases and functions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# PATH is in bash_profile
alias less='less --RAW-CONTROL-CHARS'
export LS_OPTS='-h --color=auto'
alias ls='ls ${LS_OPTS}'

export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1

export PS1="(${STY})\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\h:\[$(tput sgr0)\]\[\033[38;5;6m\][\w]:\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

