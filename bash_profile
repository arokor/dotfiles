export PATH=/usr/local/share/npm/bin:$PATH

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f ~/.npm-completion.bash ]; then
  . ~/.npm-completion.bash
fi

alias ll='ls -lsaFhlG'
alias l='ls -la'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias home='cd ~'

ulimit -n 10000

source /Users/aron/.castmillrc

export ANDROID_HOME=$HOME/Development/adt-bundle/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/emulator
