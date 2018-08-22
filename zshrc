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
export EDITOR='nvim'
export GIT_EDITOR='nvim '


USER_BASE_PATH=$(python -m site --user-base)

export PATH="$HOME/.yarn/bin:$PATH"
export PATH=$PATH:$USER_BASE_PATH/bin

source ~/.cultureamp

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

. ~/.just/aliases
. ~/.ryan-aliases

. ~/.gitaliases

export DISABLE_AUTO_TITLE=true # disable autotitle in tmux

. /usr/local/etc/profile.d/z.sh
source /usr/local/opt/asdf/asdf.sh

export GOPATH=~/code/go
export DISABLE_SPRING=1
