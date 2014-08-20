export BASH_CONF="bash_profile"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

source ~/.git-completion.sh
source ~/.git-prompt.sh
# source ~/.secret_stuff.bash

alias aa="ruby $HOME/.alias_for.rb"
alias crap="cap"
alias grnt="cd client; grunt; cd .."
alias lch="cd $HOME/dev;launch"
alias ll="ls -hAl"
alias ls="ls -G"
alias plsfixtests="cd client && npm install && bundle exec grunt && cd .."
alias undo-commit="git reset --soft 'HEAD^'"

export PATH="$HOME/bin:$PATH"
export PS1="\[\e[0;32m\][\u@\h \W]\$\[\e[0m\] "

export GREP_OPTIONS='--color=always'
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}  ${USER}@${HOSTNAME}\007"'
export EDITOR='subl -w'

export HISTSIZE=50000
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
# append all commands to the history file, don't overwrite it at the start of every new session
shopt -s histappend


function fuck() {
  killall -9 -m $2;
  if [ $? == 0 ]
  then
    echo
    echo " (╯°□°）╯︵$(echo $2|flip &2>/dev/null)"
    echo
  fi
}


alias b='command bundle'
alias bundle='echo "********************just say b********************"; b'
alias be='command bundle exec'
alias ber='command bundle exec rake'
alias bi='command bundle install'
alias specs='command bundle exec rake spec'

alias gi='command gem install'
alias t='command tail -f log/development.log'
alias db='command be rails dbconsole'

alias irb='echo "********************just say pry********************"; command pry'
alias g='command git'
alias git='echo "********************just say g********************"; g'
alias p='command powder'
alias powder='echo "********************just say p********************"; p'

alias s='command source $HOME/.bash_profile'
alias r='command rake'
alias rake='echo "********************just say r********************"; r'
alias o='command open'
alias open='echo "********************just say o********************"; o'
alias gco='command git co'

__git_complete g __git_main
__git_complete gco _git_checkout
