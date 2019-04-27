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
    ssh-agent
    tmux 
    )
zstyle :omz:plugins:ssh-agent agent-forwarding on

# Conda
# ---------------

if [ -s "$HOME/conda-zsh-completion" ]; then
    fpath+=$HOME/conda-zsh-completion
    compinit conda
fi

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh

# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/jasonprasad/.nvm/versions/node/v10.14.2/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/jasonprasad/.nvm/versions/node/v10.14.2/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

# .profile
# ---------------

. ~/.profile
