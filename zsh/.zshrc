ZSH=$HOME/.oh-my-zsh

ZSH_THEME="neurotech"

plugins=(ruby rails git brew gem npm node zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export PATH=./bin:/Users/neurotech/bin:/Users/neurotech/.rbenv/bin:/Users/neurotech/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

export EDITOR='subl -w'

alias git='hub'

alias ls='ls -Gph'
alias grep='grep --color=auto'
alias m="git add .;git commit -m"

# Middleman
alias ms='bundle exec middleman server'

NODE_ENV=development