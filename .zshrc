#-----------------------------------------
# oh-my-zsh
#-----------------------------------------
export ZSH="$HOME/.oh-my-zsh"

plugins=(
  git
  docker
  docker-compose
)

source $ZSH/oh-my-zsh.sh

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

# place this after nvm initialization!
autoload -U add-zsh-hook

load-nvmrc() {
  local nvmrc_path
  nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc

#-----------------------------------------
# ZSH Plugins
#-----------------------------------------
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#-----------------------------------------
# PNPM
#-----------------------------------------
export PNPM_HOME="/Users/jameswalsh/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

#-----------------------------------------
# 1Password SSH
#-----------------------------------------
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

#-----------------------------------------
# Starship (https://starship.rs)
#-----------------------------------------
eval "$(starship init zsh)"

