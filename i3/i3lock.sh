#!/bin/bash
TMPBG=$HOME/Pictures/.wallpapers/temp.png
LOCK=$HOME/Pictures/.wallpapers/digital-art-artwork-women-cityscape-wallpaper-59b0881d51fa2dfbf647a81ff071b6dd.jpg
RES=1366x768
 
ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -i $LOCK -filter_complex "boxblur=5:1,overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" -vframes 1 $TMPBG
i3lock -i $TMPBG
