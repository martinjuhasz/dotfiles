# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Settings
export CLICOLOR=1

# Aliases
alias ..="cd .."
alias ls="ls -G"
alias ll="ls -al"
alias lsd='ls -l | grep "^d"'
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias showhiddenfiles="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias hidehiddenfiles="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Functions
function md() {
	mkdir -p "$@" && cd "$@"
}

function edit() {
  z $1
  code .
}


# Homebrew
export PATH=/opt/homebrew/bin:$PATH


# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Autoload NVMs .nvmrc files
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# iTerm
source ~/.terminal/.iterm2_shell_integration.zsh

# Load Z Directory History
. ~/.terminal/z/z.sh

# oh-my-zsh
source ~/.terminal/.ohmyzshrc

# direnv
eval "$(direnv hook zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.terminal/.p10k.zsh ]] || source ~/.terminal/.p10k.zsh
