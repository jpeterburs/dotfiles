export TERM="xterm-256color"
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  bundler
  gem
  git
  rails
  rake-fast
  rbenv
  ruby
  tmux
)

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:$HOME/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export FZF_DEFAULT_COMMAND='ack -g ""'
export CHROME_BIN=/usr/bin/google-chrome

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

hash -d fu="$HOME/projects"
setopt cdablevars

alias git="hub"
alias gpu=git push -u origin HEAD

fortune -s

[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh