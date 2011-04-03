# $FreeBSD: src/share/skel/dot.cshrc,v 1.13 2001/01/10 17:35:28 archie Exp $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

alias h		history 25
alias j		jobs -l
alias la	ls -a
alias lf	ls -FA
alias ll	ls -lA
alias precmd	"echo -n k\\"
alias ptt	'bbs ptt.cc'
alias ptt2	'bbs ptt2.cc'    
alias xdbbs	'bbs xdbbs.twbbs.org'
alias tcfsh	'bbs tcfsh.twbbs.org'    
alias sony	'bbs sony.tfcis.org'
alias cell	'bbs cell.twbbs.org'

# A righteous umask
umask 22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin /usr/X11R6/bin $HOME/bin)

setenv	EDITOR	vi
setenv	PAGER	more
setenv	BLOCKSIZE	K
setenv  LANG zh_TW.UTF-8
setenv  LC_ALL zh_TW.UTF-8

if ($?prompt) then
    # An interactive shell -- set some stuff up
    set filec
    set history = 100
    set savehist = 100
    set mail = (/var/mail/$USER)
    if ( $?tcsh ) then
	bindkey "^W" backward-delete-word
	bindkey -k up history-search-backward
	bindkey -k down history-search-forward
    endif
endif
#set prompt = "%{^[[1;32m%}%m %{^[[1;33m%}[%{^[[1;33m%}%/%{^[[1;33m%}] %{^[[1;35m%}-%n-%{^[[m%} %{^[[1;37m%}->"    
setenv TERM linux
bindkey "^W" backward-delete-word
bindkey -k up history-search-backward
bindkey -k down history-search-forward
bindkey '^[[1~' beginning-of-line                   # Home (xterm)
bindkey '^[[2~' overwrite-mode                      # Insert
bindkey "\e[3~" delete-char                         # Delete
bindkey '^[[4~'  end-of-line                        # End (xterm)
bindkey '^[[5~'  history-search-backward  # Page Up
bindkey '^[[6~'  history-search-forward   # Page Down
bindkey "^B"    backward-word                       # <STRG>-B
bindkey "^N"    forward-word                        # <STRG>-N
bindkey "^Z"    which-command                       # <STRG>-Z

if ( ! $?WINDOW ) then
    exec screen -RR
endif
