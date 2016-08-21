#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
[ ! -s ~/.config/mpd/pid ] && mpd

echo "Starting X... Press Ctrl-C now to cancel!"
sleep 1
startx
