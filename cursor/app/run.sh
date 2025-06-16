#!/bin/sh

cd

if [ -n "$ESCAPEHATCH" ]
then
	exec /bin/sh
	exit 0
fi

if [ ! -d ~/cursor ]
then
	/dep/Cursor*.AppImage --appimage-extract
	mv ./squashfs-root ./cursor
fi

./cursor/AppRun

