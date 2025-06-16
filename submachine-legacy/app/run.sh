#!/bin/sh

if [ ! -d ~/submachine-legacy ]
then
	echo "Not installed..."
	mkdir ~/submachine-legacy
	cd ~/submachine-legacy
	unzip /dep/submachine_legacy_13x2023.zip
else
	cd ~/submachine-legacy
	wine ./submachine.exe
fi

while kill -0 $(pgrep wineserver)
do
	sleep 2
	echo "Waiting for wineserver to die!"
done

