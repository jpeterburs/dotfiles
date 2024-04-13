export ZSH="$HOME/.oh-my-zsh"

export PATH="$PATH:$HOME/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

plugins=(git gitfast tmux zoxide)
source $ZSH/oh-my-zsh.sh

# theme based on lambda
PROMPT='%F{3}λ %F{4}$FX[bold]%~/%{$reset_color%} $(git_prompt_info)%f%{$reset_color%}'
ZSH_THEME_GIT_PROMPT_PREFIX='%F{7}'
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "

alias cat="bat -p"
alias cd="z"
alias git='hub'
alias gpu='git push -u origin HEAD'
alias ls="eza"
alias ll="eza -lah"
alias tree="eza --tree"
alias vim="nvim"