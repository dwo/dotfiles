# Path to your oh-my-zsh installation.
export ZSH="/Users/robin/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  docker
  git
  pyenv
)

source $ZSH/oh-my-zsh.sh

export HISTSIZE=100000
export GOPATH="$HOME/src"

source ~/.aliases
# Optional machine-specific shell init
if [ -e ~/.zshrc_local ]; then
  source ~/.zshrc_local
fi
