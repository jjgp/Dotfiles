# ZSH Setup
# ---------------

export ZSH=$HOME/.oh-my-zsh 
ZSH_THEME="theunraveler"
source $ZSH/oh-my-zsh.sh
plugins=(
    brew 
    gem 
    gitfast 
    pod 
    rvm 
    tmux 
    ssh-agent
    )

# Conda
# ---------------

if [ -s "$HOME/conda-zsh-completion" ]; then
    fpath+=$HOME/conda-zsh-completion
    compinit conda
fi

# Enabling agent forwarding
# ---------------

zstyle :omz:plugins:ssh-agent agent-forwarding on

# .profile
# ---------------

. ~/.profile

