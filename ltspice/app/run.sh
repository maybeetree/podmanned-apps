#!/bin/sh

rpath=~/.wine/drive_c/Program\ Files\ \(x86\)/LTC/LTspiceIV/scad3.exe

if [ ! -f "$rpath" ]
then
	cd /dep
	wine ./LTspiceIV.exe
fi

cd /pwd

exec wine "$rpath"

