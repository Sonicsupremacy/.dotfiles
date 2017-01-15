#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

if [ -n "$DISPLAY" ]; then
	export EDITOR=gvim
	export BROWSER=chromium
else
	export EDITOR=vim
fi

export XDG_CONFIG_HOME="$HOME/.config"
export SWT_GTK3=0

#export WORKON_HOME=~/.virtualenvs
#source /usr/bin/virtualenvwrapper.sh

# PACAUR
export PKGDEST=/var/cache/pacaur

PS1="(\W \[\e[1;32m\]\u\[\e[0m\])$ "
