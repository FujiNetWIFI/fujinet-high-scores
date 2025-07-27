#!/bin/bash

HSE_DIR="/home/thomc/apps.irata.online/Atari_8-bit/Games/High Score Enabled"
HSE_ORIG="${HSE_DIR}/.blank"
OIFS="$IFS"
IFS=$'\n'
DATE=$(date +%Y-%m)
WEB_DIR="/home/thomc/scores"
WEB_BACKUP_DIR="$WEB_DIR/saved/$DATE"

## Initial banner

echo "--- Backing up HSE Games for $DATE -------------------------------------"

## Back up high score boards

mkdir -p $WEB_BACKUP_DIR
cp $WEB_DIR/*.html $WEB_BACKUP_DIR
cp $WEB_DIR/*.css $WEB_BACKUP_DIR
cp $WEB_DIR/*.png $WEB_BACKUP_DIR

## Copy in Blank games 
## The action of copying these games in, will cause the score
## scrapers to react, and regenerate the boards.
## Thanks, inotify!

## A note, because IFS is changed here, path resolving is
## broken inside this loop.
#
OIFS="$IFS"
IFS=$'\n'
for PATH in `find $HSE_DIR -type f -name "*.atr"`  
do
	BASENAME=$(/usr/bin/basename "$PATH")
	/usr/bin/cp "$HSE_ORIG/$BASENAME" "$HSE_DIR"
done
IFS="$OIFS"

echo "Done."

