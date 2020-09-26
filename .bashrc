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

set -o vi

alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias youtube-dl='youtube-dl --all-subs --sub-lang en -f "(bestvideo[height<=?1080]+(bestaudio[acodec=opus]/bestaudio[acodec=vorbis]/bestaudio[acodec=aac]/bestaudio))/best" --embed-subs --restrict-filenames'
alias areco='arecord --channels=2 --format=dat --vumeter=stereo /tmp/test.wav'
alias h='cat ~/.config/sxhkd/sxhkdrc'
alias nvidia-settings='nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings'
alias mktask='make -f /home/master/.local/share/Mktask/mktask'
