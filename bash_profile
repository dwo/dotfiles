source ~/.bash_aliases

# git-completion
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
  . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
fi

export PS1='\w$(__git_ps1 " (%s)")\$ '
