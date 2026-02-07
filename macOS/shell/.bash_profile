export PATH="$HOME/Dropbox-Uploader:$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
eval "$(pyenv init -)"
function setjdk() {
if [ $# -ne 0 ]; then
	removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
	if [ -n "${JAVA_HOME+x}" ]; then
		removeFromPath $JAVA_HOME
	fi
	export JAVA_HOME=`/usr/libexec/java_home -v $@`
	export PATH=$JAVA_HOME/bin:$PATH
fi
}
function removeFromPath() {
export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}
setjdk 1.7
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\[$bldwht\]\h [\w] -\u- \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\] \$ "
export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "

alias mtr="/usr/local/Cellar/mtr/0.86/sbin/mtr"
alias cap="bundle exec cap"
alias rake="bundle exec rake"

export NVM_DIR="/Users/hrs/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
