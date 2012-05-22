export PATH="/usr/local/bin:$PATH"
export PATH=$PATH:"/usr/local/mongodb/bin"
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export IRBRC="$HOME/.irbrc"

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

export PS1='\[\033[G\]\W$(__git_ps1 " \[${COLOR_RED}\](%s)\[${COLOR_NC}\]")♐ '

export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export EDITOR='vim'
export GIT_EDITOR=$EDITOR
export VISUAL=$EDITOR
# sets title of window to be user@host
export PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME%%.*} ${PWD}"; echo -ne "\007"' 

alias mvim='open -a /Applications/MacVim.app' 
alias vim='mvim $1'
alias ls='ls -G'
alias ll='ls -lah'
alias ..='cd ..;' # can then do .. .. .. to move up multiple directories.
alias ...='.. ..'
alias systail='tail -f /var/log/system.log'

# rails stuff
alias log='tail -f -0 ./log/*.log &'
alias stoplog='killall tail'
alias model='rails generate model'
alias controller='rails generate controller'
alias migration='rails generate migration'
alias r='bundle exec rake'
alias migrate='bundle exec rake db:migrate && bundle exec rake db:test:prepare'
alias rollback='rake db:rollback'
alias redo="rake db:migrate && rake db:rollback"
alias startpg='sudo /Library/StartupItems/PostgreSQL/PostgreSQL start'
alias restart='touch tmp/restart.txt'
alias startpg='sudo su postgres'
alias t="rake test"
alias s="rake spec"
alias raisl='rails'

alias ber="bundle exec rspec"
alias bes="bundle exec spec"
alias bec="bundle exec cucumber"
alias be="bundle exec"

alias 1.8.7="rvm use 1.8.7"
alias 1.9.2="rvm use 1.9.2"
alias 1.9.3="rvm use 1.9.3"
alias falcon="rvm use 1.9.3-falcon"

alias def="ack 'def $1'"
alias class="ack 'class $1'"
alias module="ack 'module $1'"

alias startpg='sudo /Library/StartupItems/PostgreSQL/PostgreSQL start'

complete -C ~/.rake-completion.rb -o default rake

# readline settings
bind "set completion-ignore-case on" 
bind "set show-all-if-ambiguous On" # this allows you to automatically show completion without double tab-ing

# Turn on advanced bash completion if the file exists (get it here: http://www.caliban.org/bash/index.shtml#completion)
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# history (bigger size, no duplicates, always append):
export HISTCONTROL=erasedups
export HISTSIZE=10000
shopt -s histappend

alias h='history|g'
if [ -s ~/.rvm/scripts/rvm ] ; then source ~/.rvm/scripts/rvm ; fi
