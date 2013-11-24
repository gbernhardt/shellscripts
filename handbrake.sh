#!/bin/sh
DESTFILE="file.m4v"
DESTPATH="~/Desktop/"
SRC="-i /Volumes/DVD/ -t 1 "
DEST="-o $DESTPATH$DESTFILE "
VIDEO="-e x264 -b 2500 --x264-profile high "
AUDIO="-a 1,3 -E copy -B 192 "
SUBTITLES="--subtitle scan"

echo "HandBrakeCLI $SRC $DEST -m $AUDIO $VIDEO $SUBTITLES"
HandBrakeCLI $SRC $DEST -m $AUDIO $VIDEO $SUBTITLES


#level=4.1:ref=4:b-adapt=2:direct=auto:me=umh:subq=8:rc-lookahead=50:psy-rd=1.0,0.15:deblock=-1,-1:vbv-bufsize=30000:vbv-maxrate=40000:slices=4\'\'ª