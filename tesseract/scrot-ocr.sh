#!/bin/sh

set -e

mkdir -p ~/tmp/scrot-ocr
cd ~/tmp/scrot-ocr
scrot --select -o ./ocr.png
tesseract-ocr -l jpn_vert ./ocr.png - | tr -d ' \n' | pbcopy
notify-send 'clipboard-ocr' 'copied!'

