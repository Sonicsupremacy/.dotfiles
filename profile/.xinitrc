#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#if [ $(~/.scripts/monitor_plugin_detect.sh -c) -eq 2 ]; then
	xrandr --output HDMI2 --primary --output HDMI1 --right-of HDMI2
#fi


eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
export _JAVA_AWT_WM_NONREPARENTING=1

# Create folder for bspwm std{out,err} redirection
[ -x "${XDG_CACHE_HOME}"/bspwm ] || mkdir -p "${XDG_CACHE_HOME}"/bspwm

echo "===== STARTUP AT $(date +"%Y-%m-%d %H:%M:%S") =====" >> "${XDG_CACHE_HOME}"/bspwm/stdout
echo "===== STARTUP AT $(date +"%Y-%m-%d %H:%M:%S") =====" >> "${XDG_CACHE_HOME}"/bspwm/stderr

xsetroot -cursor_name left_ptr
sxhkd &
exec bspwm >> "${XDG_CACHE_HOME}"/bspwm/stdout 2>> "${XDG_CACHE_HOME}"/bspwm/stderr

