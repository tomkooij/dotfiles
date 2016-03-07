# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs
PATH=$HOME/bin:$PATH
if [ -z ${PBS_O_PATH+x} ]; then
    export PATH=/data/hisparc/env/miniconda/bin:$PATH
fi

alias cdtom='cd /data/hisparc/tom'
alias envtom='source activate tom'
