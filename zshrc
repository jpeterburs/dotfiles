ZSH_THEME="robbyrussell"

plugins=(
  bundler
  git
  rails
  rake-fast
  rbenv
  ruby
  tmux
)

export PATH="/usr/local/bin:$HOME/.rbenv/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"
export TERM="xterm-256color"

source $ZSH/oh-my-zsh.sh

hash -d fu="$HOME/Projects"
setopt cdablevars

alias git='hub'