#!/bin/sh

cd /dep

if [ ! -e PaperBak.exe ]
then
	echo "Not unzipped..."

	unzip ./paperbak-1.10.exe.zip
fi

exec wine ./PaperBak.exe

