ZSH=$HOME/.oh-my-zsh

ZSH_THEME="neurotech"

plugins=(ruby rails git bundler brew gem)

source $ZSH/oh-my-zsh.sh

export PATH=/Users/neurotech/bin:/Users/neurotech/.rbenv/bin:/Users/neurotech/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin

export EDITOR='subl -w'

alias ls='ls -Gph'

alias m="git add .;git commit -m"