### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias mtr="/usr/local/Cellar/mtr/0.86/sbin/mtr"
alias cap="bundle exec cap"
alias rake="bundle exec rake"

# added by travis gem
[ -f /Users/hrs/.travis/travis.sh ] && source /Users/hrs/.travis/travis.sh

export NVM_DIR="/Users/hrs/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
