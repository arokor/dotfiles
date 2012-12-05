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
