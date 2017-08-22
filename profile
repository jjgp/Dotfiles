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
alias xcsim="open /Applications/Xcode.app/Contents/Applications/iOS\ Simulator.app"
alias xcdevices="cd ~/Library/Developer/CoreSimulator/Devices"
alias xcprovision="cd ~/Library/MobileDevice/Provisioning\ Profiles"
alias xpccachectl="sudo /usr/libexec/xpccachectl"

# ==============================
# MISC
# ==============================

# Git Syncing
# ---------------

fuction git-auto-push() {
    if [ -x ~/.dotfiles/git-auto-push.sh ]; then
        ~/.dotfiles/git-auto-push.sh ${1:?"Provide git repos to sync."}
    fi
}

# Xcode
# ---------------

function xcode-set-minimumsdk() {
  sudo /usr/libexec/PlistBuddy -c "Set :MinimumSDKVersion $1" /Applications/Xcode.app/Contents/Developer/Platforms/$2.platform/Info.plist
}

# ==============================
# PATH
# ==============================

export ANACONDA="$HOME/anaconda/bin"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export ANDROID_PLATFORM_TOOLS="$ANDROID_HOME/platform-tools"
export ANDROID_TOOLS="$ANDROID_HOME/tools"
export BLENDER="/Applications/blender.app/Contents/MacOS"
export JAVA_HOME="/Library/Java/Home"
export SWIFTTOOLS="/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin"
export PATH="$SWIFTTOOLS:$JAVA_HOME:$ANDROID_HOME:$ANDROID_PLATFORM_TOOLS:$ANDROID_TOOLS:$ZSH:$PATH"

function add-to-path() {
    PATH="$PATH:${1%/}"
}

function remove-from-path() {
    PATH=$(echo ":$PATH:" | sed "s@:$1:@:@g;s@^:\(.*\):\$@\1@")
}

# =============================
# Loading
# =============================

[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh # which j
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Loads RVM into a shell session *as a function*
export NVM_DIR="/Users/jasonprasad/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && . "$NVM_DIR/nvm.sh"  # Loads node version manager
[[ -f "/Users/GM-jasonprasad/.tnsrc" ]] && . "/Users/GM-jasonprasad/.tnsrc" # tns-completion

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
