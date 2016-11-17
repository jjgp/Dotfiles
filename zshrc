# ==============================
# ZSH Setup
# ==============================

ZSH_THEME="robbyrussell"
export ZSH=$HOME/.oh-my-zsh 
source $ZSH/oh-my-zsh.sh
plugins=(brew gem gitfast pod rvm rails tmux ssh-agent)

# Conda
# ---------------

if [ -s "$HOME/conda-zsh-completion" ]; then
    fpath+=$HOME/conda-zsh-completion
    compinit conda
fi

# Enabling agent forwarding
#  ---------------

zstyle :omz:plugins:ssh-agent agent-forwarding on

# .profile
# ---------------

[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

