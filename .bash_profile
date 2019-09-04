export BASH_CONF="bash_profile"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

source ~/.git-completion.sh
source ~/.git-prompt.sh
source ~/.secret_stuff.bash

alias aa="ruby $HOME/.alias_for.rb"
alias crap="cap"
alias grnt="cd client; grunt; cd .."
alias lch="cd $HOME/dev;launch"
alias ll="ls -hAl"
alias ls="ls -G"
alias plsfixtests="cd client && npm install && bundle exec grunt && cd .."
alias undo-commit="git reset --soft 'HEAD^'"
alias fixit="pkill -9 -fil 'node server.js' && pkill -9 puma"
alias cleancache='rm -rf tmp/cache'

export PATH="$HOME/bin:$PATH"
export PS1="\[\e[0;32m\][\u@\h \W]\$\[\e[0m\] "
export NVM_DIR="$HOME/.nvm"
export GREP_OPTIONS='--color=always'
export PROMPT_COMMAND='echo -ne "\033]0;${PWD/#$HOME/~}  ${USER}@${HOSTNAME}\007"'
export EDITOR='subl -w'

export ULTRAHOOK_NAMESPACE='kevinmchugh'


# append all commands to the history file, don't overwrite it at the start of every new session
shopt -s histappend
export HISTSIZE=100000
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# export DOCKER_HOST=tcp://192.168.99.100:2376
# export DOCKER_MACHINE_NAME=default
# export DOCKER_TLS_VERIFY=1
# export DOCKER_CERT_PATH=/Users/kev/.docker/machine/machines/default

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
alias be='command bundle exec'
alias ber='command bundle exec rake'
alias bi='command bundle install'
alias specs='command bundle exec rake spec'

alias gi='command gem install'
alias t='command tail -f log/development.log'
alias db='command be rails dbconsole'

alias irb='command pry'
alias g='command git'

alias s='command source $HOME/.bash_profile'
alias r='command rake'
alias o='command open'
alias gco='command git co'

alias dc='docker-compose'
alias whatwtf='rbenv rehash'

alias h='heroku'

__git_complete g __git_main
__git_complete gco _git_checkout

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
. "/usr/local/opt/nvm/nvm.sh"

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
