export PATH="/usr/local/bin:$PATH"
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export IRBRC="$HOME/.irbrc"

export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
export EDITOR='subl'
export GIT_EDITOR='subl -w'
export VISUAL=$EDITOR
# sets title of window to be user@host

alias ls='ls -G'
alias ..='cd ..;' # can then do .. .. .. to move up multiple directories.
alias ...='.. ..'

# rails stuff
alias log='tail -f -0 ./log/*.log &'
alias r='bundle exec rake'
alias migrate='r db:migrate'
alias rollback='r db:rollback'
alias redo="r db:migrate && r db:rollback"
alias restart='touch tmp/restart.txt'
alias raisl='rails'

alias b='bundle'
alias s='ta && rails s'
alias c='ta && rails s'
alias ber="bundle exec rspec"
alias be="bundle exec"
alias berrim='r railties:install:migrations; r db:migrate'

alias logs="cd /Users/ryan/Library/Containers/com.codeux.irc.textual/Data/Logs/Twist"

# elixir stuff
alias mdg='mix deps.get'

# readline settings
bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous On" # this allows you to automatically show completion without double tab-ing

# Turn on advanced bash completion if the file exists (get it here: http://www.caliban.org/bash/index.shtml#completion)
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
export HISTSIZE=10000
shopt -s histappend

alias h='history|g'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# installed by cultureamp/big-frontend-repo
bfr() {
  ${HOME}/code/cultureamp/big-frontend-repo/tools/cli/run.sh $@
}

