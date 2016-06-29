# ==============================
# ZSH Setup
# ==============================

ZSH_THEME="robbyrussell"
export ZSH=$HOME/.oh-my-zsh 
source $ZSH/oh-my-zsh.sh
plugins=(brew gem gitfast pod rvm rails)

# Conda
# ---------------

if [ -s "$HOME/conda-zsh-completion" ]; then
    fpath+=$HOME/conda-zsh-completion
    compinit conda
fi

# .profile
# ---------------

source ~/.profile
