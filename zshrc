#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
export EDITOR='code'
export GIT_EDITOR='$EDITOR --wait'

export PATH="$HOME/.yarn/bin:$PATH"
export PATH=$PATH:$USER_BASE_PATH/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

. ~/.ryan-aliases

. ~/.gitaliases

export DISABLE_AUTO_TITLE=true # disable autotitle in tmux

. /opt/homebrew/opt/asdf/libexec/asdf.sh
. /opt/homebrew/etc/profile.d/z.sh


export GOPATH=~/code/go
export DISABLE_SPRING=1
eval $(/opt/homebrew/bin/brew shellenv)

. ~/.fatzebra

export PS1=%{%f%b%k%}$(prompt_agnoster_main)
