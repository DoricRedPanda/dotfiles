# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
complete -cf sudo
# colors
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias youtube-dl='youtube-dl --all-subs --sub-lang en -f bestvideo[height\<=?1080][vcodec=vaapi]+bestaudio/best --embed-subs '
alias areco='arecord --channels=1 --format=dat --vumeter=stereo /tmp/test.wav'
alias h='cat .config/sxhkd/sxhkdrc'

export PATH="$PATH:$HOME/.local/bin/"
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share

export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export ANDROID_SDK_HOME="$XDG_DATA_HOME"/android
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history

set -o vi
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x X >/dev/null && exec startx -- vt1
