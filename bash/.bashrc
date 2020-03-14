#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Useful aliases
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias ll='ls -lah'
alias l='ls -lh'
alias vi='vim'
alias ip='ip -c=auto'

# Safety net aliases
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

PS1='\u@\h \W\$ '
