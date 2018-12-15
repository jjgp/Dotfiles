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

alias fuxcode='rm -rf ~/Library/Developer/Xcode/DerivedData; rm -rf ~/Library/Caches/com.apple.dt.Xcode; rm -rf "$(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang/ModuleCache"'
alias sketchplugins="cd ~/Library/Containers/com.bohemiancoding.sketch3/Data/Library/Application\ Support/com.bohemiancoding.sketch3/Plugins"
alias xc="open -a 'Xcode'"
alias xcbeta="open -a 'Xcode-beta'"
alias xcsim="open /Applications/Xcode.app/Contents/Applications/iOS\ Simulator.app"
alias xcdevices="cd ~/Library/Developer/CoreSimulator/Devices"
alias xcprovision="cd ~/Library/MobileDevice/Provisioning\ Profiles"
alias xpccachectl="sudo /usr/libexec/xpccachectl"

# ==============================
# PATH
# ==============================

export CONDA="$HOME/miniconda3/bin"
export FASTLANE="$HOME/.fastlane/bin"
export FLUTTER="$HOME/workspace/flutter/bin"
export NODE="/usr/local/opt/node@8/bin"
export PLATFORM_TOOLS="$HOME/Library/Android/sdk/platform-tools"
export RVM="$HOME/.rvm/bin"
export PATH="$RVM:$CONDA:$FLUTTER:$NODE:$PLATFORM_TOOLS:$FASTLANE:$ZSH:$PATH"

# =============================
# Loading
# =============================

. `brew --prefix`/etc/autojump.sh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

