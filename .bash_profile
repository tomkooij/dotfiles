# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# make X11 forwarding through ssh -X work in tmux/screen
# at each real login cache DISPLAY 
# at each tmux/screen login get DISPLAY from cache
if [ -z "$STY" -a -z "$TMUX" ]; then
    echo $DISPLAY > ~/.display.txt
else
    export DISPLAY=`cat ~/.display.txt`
                                fi
MACHINE="$(/bin/uname -n)"

case $MACHINE in
    lena*|tevere*)
        # login[|2].nikhef.nl
        PATH=$HOME/local/bin:$PATH
        ;;
    stbc*)
        # stbc-[1-4].nikhef.nl
        # some binaries do not run on stoomboot: different libs
        # prepend alternatives in path
        PATH=$HOME/bin_stbc/bin:$HOME/local/bin:$PATH
        ;;  
    *)
        echo "Unknown machine: no special path..."
        ;;
esac

# User specific environment and startup programs
if [ -z ${PBS_O_PATH+x} ]; then
    export PATH=/data/hisparc/env/miniconda/bin:$PATH
fi

# HDF5_DIR for PyTables dev
export HDF5_DIR=/data/hisparc/tom/hdf5

# add TeXLive to PATH
export PATH=/data/hisparc/tom/texlive/bin/x86_64-linux:$PATH

alias cdtom='cd /data/hisparc/tom'
alias envtom='source activate tom'
alias cdsap='cd /data/hisparc/tom/sapphire/sapphire'
alias cdlio='cd /data/hisparc/tom/lio-project'
