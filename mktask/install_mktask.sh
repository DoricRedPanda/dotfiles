#!/bin/sh

PROGNAME=mktask
CP_LINK=https://raw.githubusercontent.com/torvalds/linux/master/scripts/checkpatch.pl
MYDIR=~/.local/share/Mktask
BASHRC_PATH=~/.bashrc
ALIAS="alias $PROGNAME='make -f $MYDIR/$PROGNAME'"

mkdir -p $MYDIR

cp mktask $MYDIR/

cd $MYDIR

wget $CP_LINK -O checkpatch.pl && \
chmod +x checkpatch.pl

if grep -Fxq "$ALIAS" $BASHRC_PATH
then
	echo "found"
else
	echo $ALIAS >> $BASHRC_PATH
fi

echo Usage: $PROGNAME \$progname

