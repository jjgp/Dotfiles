source ~/.profile

# ==============================
# ZSH Setup
# ==============================

ZSH_THEME="robbyrussell"
export ZSH=$HOME/.oh-my-zsh 
source $ZSH/oh-my-zsh.sh
plugins=(brew gem gitfast pod rvm rails)

# Conda
# ---------------

fpath+=$PWD/conda-zsh-completion
compinit conda
