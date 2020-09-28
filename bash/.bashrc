#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Useful aliases
alias ll='ls -lah'
alias l='ls -lh'
alias vi='vim'
alias ip='ip -c=auto'
alias man='LESS='+Gg' man'

#Colour aliases
alias grep='grep --color=auto'
alias yay='yay --color=auto'
alias pacman='pacman --color=auto'
alias ls='ls --color=auto'

# Safety net aliases
alias rm='rm -I --preserve-root'
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

# Termite ssh temporal solution
alias ssh='TERM=xterm-256color ssh' # This should be the start of a solution curl -sSL https://raw.githubusercontent.com/thestinger/termite/master/termite.terminfo | tic -x -

export PS1='\[\e[1;36m\]\u@\h\[\e[m\] \[\e[0;32m\]\W$ \[\e[m\]'

export PATH=$PATH':~/.local/bin'

# Huge history. Doesn't appear to slow things down, so why not?
HISTSIZE=500000
HISTFILESIZE=100000

# Avoid duplicate entries
HISTCONTROL="erasedups:ignoreboth"

# Don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"

# Use standard ISO 8601 timestamp
# %F equivalent to %Y-%m-%d
# %T equivalent to %H:%M:%S (24-hours format)
HISTTIMEFORMAT='%F %T '

# Enable history expansion with space
# E.g. typing !!<space> will replace the !! with your last command
bind Space:magic-space

# TEST AREA

export LESS_TERMCAP_mb=$'\e[1;32m'  # begin blink
export LESS_TERMCAP_md=$'\e[1;32m'  # begin bold
export LESS_TERMCAP_me=$'\e[0m'     # reset bold/blink
export LESS_TERMCAP_se=$'\e[0m'     # reset reverse video
export LESS_TERMCAP_so=$'\e[01;36m' # begin reverse video
export LESS_TERMCAP_ue=$'\e[0m'     # reset underline
export LESS_TERMCAP_us=$'\e[4;34m'  # begin underline

export XDG_CONFIG_HOME=$HOME/.config
