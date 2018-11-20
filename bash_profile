export HISTSIZE=100000
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export GOPATH="$HOME/source"

source ~/.bash_aliases

# git-completion
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
  . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

eval "$(pyenv init -)"

RED="\[\033[0;31m\]"
BLUE="\[\033[0;34m\]"
GREEN="\[\033[0;32m\]"
WHITE="\[\033[1;37m\]"
export PS1="$GREEN\u@\h$WHITE:$BLUE\w$WHITE($RED\$(__git_ps1 '%s')$WHITE)\$ "
