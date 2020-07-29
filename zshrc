export HISTSIZE=100000
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export GOPATH="$HOME/src"

source ~/.aliases
# Optional machine-specific shell init
if [ -e ~/.zshrc_local ]; then
  source ~/.zshrc_local
fi

# git tab-completion
autoload -Uz compinit && compinit

eval "$(pyenv init -)"
