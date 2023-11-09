#-----------------------------------------
# oh-my-zsh
#-----------------------------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="amuse"

#-----------------------------------------
# Terminal Tab Title
#-----------------------------------------
DISABLE_AUTO_TITLE="true"
function title {
  echo -e "\033];$@\007"
}
title ${PWD/#$HOME/'~'}
function chpwd() {
  title ${PWD/#$HOME/'~'}
}

plugins=(
  git
  docker
  docker-compose
)

source $ZSH/oh-my-zsh.sh

#-----------------------------------------
# Terminal Tab Title
#-----------------------------------------
DISABLE_AUTO_TITLE="true"
function title {
  echo -e "\033];$@\007"
}
title ${PWD/#$HOME/'~'}
function chpwd() {
  title ${PWD/#$HOME/'~'}
}

#-----------------------------------------
# Aliases - Docker
#-----------------------------------------
alias dc="docker-compose"
alias dcu="docker-compose up -d"
alias dcd="docker-compose down"
alias dcps="dmenv && docker-compose ps"

#-----------------------------------------
# Aliases - File / Directory Management
#-----------------------------------------
alias src=". ~/.zshrc"
alias ll="ls -lah"
alias dev="cd ~/dev"

#-----------------------------------------
# NVM
#-----------------------------------------
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#-----------------------------------------
# Vasion specific
#-----------------------------------------
export GITHUB_TOKEN=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

#-----------------------------------------
# ZSH Plugins
#-----------------------------------------
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
