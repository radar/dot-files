export PATH="/usr/local/bin:$PATH"
export PATH=$PATH:"/usr/local/mongodb/bin"
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin":$PATH
export PATH="~/Projects/go/bin":$PATH
export IRBRC="$HOME/.irbrc"

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'
alias colorslist="set | egrep 'COLOR_\w*'"  # lists all the colors

export PS1='\[\033[G\]\W$(__git_ps1 " \[${COLOR_RED}\](%s)\[${COLOR_NC}\]")⸘ '  

export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export EDITOR='subl'
export GIT_EDITOR='subl -w'
export VISUAL=$EDITOR
# sets title of window to be user@host
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*} ${PWD}"; echo -ne "\007"' 

export GOPATH=$HOME/Projects/go

alias ls='ls -G'
alias ..='cd ..;' # can then do .. .. .. to move up multiple directories.
alias ...='.. ..'

# rails stuff
alias log='tail -f -0 ./log/*.log &'
alias stoplog='killall tail'
alias r='bundle exec rake'
alias migrate='r db:migrate'
alias rollback='r db:rollback'
alias redo="r db:migrate && r db:rollback"
alias restart='touch tmp/restart.txt'
alias raisl='rails'
alias shipit='bundle exec cap production deploy'

function nuke() {
  ps -e | grep searchd | cut -d ' ' -f1 | xargs kill -9
  ps -e | grep mailcatcher | cut -d ' ' -f1 | xargs kill -9
  ps -e | grep unicorn | cut -d ' ' -f1 | xargs kill -9
}


alias b='bundle'
alias ta='bundle check || (echo "Trying to bundle locally..." && rm -f Gemfile.lock && bundle install --local) || (echo "Bundling using remote sources..." && bundle update)'
alias t='ta && rm -rf spec/dummy && bundle exec rake test_app'
alias s='ta && rails s'
alias c='ta && rails s'
alias ber="bundle exec rspec"
alias be="bundle exec"
alias berrim='r railties:install:migrations; r db:migrate'

alias logs="cd /Users/ryan/Library/Containers/com.codeux.irc.textual/Data/Logs/Twist"
alias ss="bundle exec rake db:drop db:create railties:install:migrations db:migrate db:seed AUTO_ACCEPT=1 && rake spree_sample:load --trace"

alias teg="cd ~/Projects/teg"

# readline settings
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous On" # this allows you to automatically show completion without double tab-ing

# Turn on advanced bash completion if the file exists (get it here: http://www.caliban.org/bash/index.shtml#completion)
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

#go stuff
alias gt='go test -v ./...'

# history (bigger size, no duplicates, always append):
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

alias h='history|g'
if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
