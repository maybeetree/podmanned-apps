#!/bin/sh

tail -f /dev/null | fluidsynth &

#if [ ! -r ~/nowrite.so ]
#then
#	echo "Nowrite.so not compiled!"
#	gcc -shared -fPIC -o ~/nowrite.so /app/nowrite.c -ldl
#fi

#set -e
#dlls="d3d9 d3d10"
#
#for dll in $dlls; do
#    wine reg add "HKCU\\Software\\Wine\\DllOverrides" /v "$dll" /d "native" /f
#done
#set +e

if [ ! -d ~/.wine/drive_c/"Program Files (x86)/Touhou Project/TH06" ]
then
	echo "Not installed..."
	wine "/dep/TH06 ~ The Embodiment of Scarlet Devil/th06r_setup_min.exe"
else
	cd ~/.wine/drive_c/"Program Files (x86)/Touhou Project/TH06"
	#LD_PRELOAD=~/nowrite.so wine ./th06r_config.exe
	wine ./th06r_config.exe
fi

while kill -0 $(pgrep wineserver)
do
	sleep 2
	echo "Waiting for wineserver to die!"
done

