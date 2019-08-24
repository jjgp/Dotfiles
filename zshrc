# ==============================
# Oh-my-zsh 
# ==============================

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

# ==============================
# Aliases
# ==============================

# General
# ---------------

alias c="clear"
alias fuxcode='rm -rf ~/Library/Developer/Xcode/DerivedData; rm -rf ~/Library/Caches/com.apple.dt.Xcode; rm -rf "$(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang/ModuleCache"'
alias up="cd .."

# ==============================
# PATH
# ==============================

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export PLATFORM_TOOLS="$HOME/Library/Android/sdk/platform-tools"
export PATH="$JAVA_HOME:$PLATFORM_TOOLS:$PATH"

# =============================
# Loading
# =============================

. `brew --prefix`/etc/autojump.sh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$("$HOME/miniconda/bin/conda" 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/miniconda/etc/profile.d/conda.sh" ]; then
        . "$HOME/miniconda/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
