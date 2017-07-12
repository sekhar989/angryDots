#!/bin/bash
IMAGE=/tmp/i3lock.png
SCREENSHOT="scrot $IMAGE" # 0.46s

BLURTYPE="0x8" 

$SCREENSHOT
convert $IMAGE -blur $BLURTYPE $IMAGE
i3lock -i $IMAGE
rm $IMAGE

#scrot /tmp/screen.png
#convert $TMPBG -scale 10% -scale 1000% $TMPBG
#convert $TMPBG $ICON -gravity center -composite -matte $TMPBG
#i3lock -u -i $TMPBG
