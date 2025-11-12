#!/usr/bin/env sh

BINPATH="$(pwd)/bin"
LINE="export PATH=\$PATH:$BINPATH"
ZSHRC="$HOME/.zshrc"

if [ -f $ZSHRC ]; then
	# make a backup in case we mess up
	cp $ZSHRC $ZSHRC.bak
	# remove existing line if present
	(cat $ZSHRC | grep -v -e "^export PATH.m1book") >$ZSHRC.tmp
	cp $ZSHRC.tmp $ZSHRC
	rm $ZSHRC.tmp
	# add line if not present
	grep -qxF "$LINE" $ZSHRC || echo "$LINE" >>$ZSHRC
	echo "Installed succesfully. After restarting your shell, you can run \`m1book\`."
else
	"No .zshrc file found. Please manually add the following line to your shell config file:"
	echo "$LINE"
	exit 1
fi
