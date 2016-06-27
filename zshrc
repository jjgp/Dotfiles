# ==============================
# ZSH Setup
# ==============================

ZSH_THEME="robbyrussell"
export ZSH=$HOME/.oh-my-zsh 
source $ZSH/oh-my-zsh.sh

# ==============================
# Aliases
# ==============================

# General
# ---------------

alias c="clear"
alias up="cd .."

# Git
# ---------------

alias lg="git log --graph --pretty=oneline --abbrev-commit"

# Xcode
# ---------------

alias fuxcode="rm -rf ~/Library/Developer/Xcode/DerivedData"
alias sketchplugins="cd ~/Library/Containers/com.bohemiancoding.sketch3/Data/Library/Application\ Support/com.bohemiancoding.sketch3/Plugins"
alias xc="open -a 'Xcode'"
alias xccache="/Users/jasonprasad/Library/Caches/com.apple.dt.Xcode/Downloads"
alias xcsim="open /Applications/Xcode.app/Contents/Applications/iOS\ Simulator.app"
alias xcdevices="cd ~/Library/Developer/CoreSimulator/Devices"
alias xcprovision="cd ~/Library/MobileDevice/Provisioning\ Profiles"

# ==============================
# MISC
# ==============================

# Autojump
# ---------------

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Git Syncing 
# ---------------

fuction git-auto-push() {
  if [ -x ~/.dotfiles/git-auto-push.sh ]; then
  	~/.dotfiles/git-auto-push.sh ${1:?"Provide git repos to sync."}
  fi
}

# ==============================
# Path Variables
# ==============================

export SWIFTTOOLS="/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin"
export RVM="$HOME/.rvm/bin"  
export PATH="$RVM:$SWIFTTOOLS:$ZSH:$PATH"

# ==============================
# Plugins
# ==============================

plugins=(brew gem gitfast pod rvm rails)

export NVM_DIR="/Users/jasonprasad/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

