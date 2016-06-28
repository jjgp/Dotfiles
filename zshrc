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
if [ -s "$HOME/.rvm/scripts/rvm" ]; then
    fpath+=$PWD/conda-zsh-completion
    compinit conda
fi
