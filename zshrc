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
    )

# Conda
# ---------------

if [ -s "$HOME/conda-zsh-completion" ]; then
    fpath+=$HOME/conda-zsh-completion
    compinit conda
fi

# .profile
# ---------------

. ~/.profile

