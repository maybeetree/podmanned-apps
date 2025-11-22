#!/bin/sh

if [ -r ~/.wine/drive_c/Program\ Files\ \(x86\)/binary-star/MadeInAbyss.exe  ]
then
	wine ~/.wine/drive_c/Program\ Files\ \(x86\)/binary-star/MadeInAbyss.exe 
else
	if [ ! -d ~/binary-star ]
	then
		echo "Not installed..."
		mkdir ~/binary-star
		cd ~/binary-star
		cp -r /dep/"MiA output"/* ./
		#unzip /dep/submachine_legacy_13x2023.zip
	else
		cd ~/binary-star
		wine "./MiA BSFD.exe"
	fi
fi

while kill -0 $(pgrep wineserver)
do
	sleep 2
	echo "Waiting for wineserver to die!"
done

