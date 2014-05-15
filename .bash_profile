export BASH_CONF="bash_profile"

# echo 'hello'
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

source ~/.git-completion.sh
source ~/.git-prompt.sh
source ~/.secret_stuff.bash

alias aa="ruby $HOME/.alias_for.rb"
alias be="command bundle exec"
alias ber='be rake'
alias crap="cap"
alias g='git'
alias grnt="cd client; grunt; cd .."
alias lch="cd $HOME/dev;launch"
alias ll="ls -hAl"
alias ls="ls -G"
alias p="command powder"
alias powder="echo 'just say p'; p"
alias plsfixtests="cd client && npm install && bundle exec grunt && cd .."
alias rake='echo "just say r"; command rake'
alias specs='ber spec'
alias undo-commit="git reset --soft 'HEAD^'"

export HISTSIZE=50000
export PATH="$HOME/bin/:$PATH"
export PS1="\[\e[0;32m\][\u@\h \W]\$\[\e[0m\] "

export GREP_OPTIONS='--color=always'
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}  ${USER}@${HOSTNAME}\007"'
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export EDITOR='subl -w'

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



alias bi='command bundle install'

alias b='command bundle'
alias bundle='just say b; b'
alias gi='command gem install'

alias t='command tail -f'

alias db='command be rails dbconsole'

alias irb='just say pry; command pry'
