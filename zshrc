export HISTSIZE=100000
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export GOPATH="$HOME/src"

source ~/.aliases
# Optional machine-specific shell init
source ~/.zshrc_local

# git tab-completion
autoload -Uz compinit && compinit

eval "$(pyenv init -)"
