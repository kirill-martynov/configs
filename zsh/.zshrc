# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export LANG=en_US.UTF-8

# Path to your oh-my-zsh installation.
export ZSH="/Users/kirchik/.oh-my-zsh"

# Theme
ZSH_THEME="k-mart"

# Editor
export EDITOR='nvim'

source $ZSH/oh-my-zsh.sh

# Aliases
alias txd="tmuxinator desktop"

alias gpl="git pull origin"
alias gph="git push origin"
alias gst="git status"
alias go="git checkout"
alias gb="git branch"

# Remove all branches except master
alias gbr="git branch | grep -v "master" | xargs git branch -D"

alias luamake=/Users/kirchik/Downloads/lua-language-server/3rd/luamake/luamake
