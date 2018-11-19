# Settings
export CLICOLOR=1

# Load NVM
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

# init pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Load Z Directory History
. ~/.terminal/z/z.sh

# Load Powerline Shell
function init_powerline() {
    PS1=$(powerline-shell $?)
}
if [[ $TERM != linux && ! $PROMPT_COMMAND =~ init_powerline ]]; then
    PROMPT_COMMAND="init_powerline; $PROMPT_COMMAND"
fi

# Load iTerm integration
source ~/.terminal/iterm2_shell_integration.bash

# Editor
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='code'
fi

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