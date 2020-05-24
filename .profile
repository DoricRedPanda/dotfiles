export PATH="$PATH:$HOME/.local/bin/"

#XDG directories
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share

#clean-up
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export ANDROID_SDK_HOME="$XDG_DATA_HOME"/android
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export WGETRC="${XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"
export HISTFILE="$XDG_DATA_HOME"/bash/history
export ASPELL_CONF="per-conf $XDG_CONFIG_HOME/aspell/aspell.conf; personal $XDG_CONFIG_HOME/aspell/en.pws; repl $XDG_CONFIG_HOME/aspell/en.prepl"
export VIMINIT=":source ~/.config/vim/vimrc"
export PYTHONSTARTUP="$XDG_CONFIG_HOME"/python/startup.py

export FREETYPE_PROPERTIES="truetype:interpreter-version=40"
export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_QPA_PLATFORMTHEME=qt5ct

# Default programs:
export EDITOR=/usr/bin/vim
export TERMINAL=/usr/bin/st
export BROWSER="$HOME"/.local/bin/sandboxed-firefox.sh
export READER=/usr/bin/zathura
export MANPAGER=vimmanpager

if [ -f ~/.bashrc ] ; then
	. ~/.bashrc
fi
