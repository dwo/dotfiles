alias be='bundle exec'
alias bilp='bundle install --local --path vendor/bundle --without deployment'
alias dc='docker-compose'
alias dm='docker-machine'
alias dr='docker run'
alias gc='git commit'
alias gco='git checkout'
alias gd='git diff'
alias gdw='git diff --word-diff'
alias gg='git grep'
alias gl='git log'
alias gp='git pull --rebase && git submodule update --init --recursive'
alias gpo='git push origin'
alias gs='git status'
alias java7='export JAVA_HOME=$(/usr/libexec/java_home -v1.7)'
alias java8='export JAVA_HOME=$(/usr/libexec/java_home -v1.8)'
alias ll='ls -l'
alias sa='ssh-add -t $((8*3600))'
alias spek='spec -f nested -c -b '
alias ssha='ssh-agent | head -2 > ~/.ssh-agent'
alias sadd='ssh-add -t 8h ~/.ssh/id_rsa'
