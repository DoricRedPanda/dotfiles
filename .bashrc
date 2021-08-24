#!/bin/bash
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
# colors

[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x X >/dev/null && exec startx -- vt1

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

set -o vi

alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias youtube-dl='youtube-dl --all-subs --sub-lang en -f "(bestvideo[height<=?1080][vcodec!=?vp9]+(bestaudio[acodec=opus]/bestaudio[acodec=vorbis]/bestaudio[acodec=aac]/bestaudio))/best" --embed-subs --restrict-filenames'
alias areco='arecord --channels=2 --format=dat --vumeter=stereo /tmp/test.wav'
alias h='cat ~/.config/sxhkd/sxhkdrc'
alias audacity='GDK_DPI_SCALE=0.5 GDK_SCALE=2 audacity'

function findc ()
{
    find $1 -name '*.[ch]'
}
