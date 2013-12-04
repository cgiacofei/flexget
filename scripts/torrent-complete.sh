#!/bin/bash

# Final locations for downloaded files
TVDIR = "/media/sf_media-server/TV Shows"
PREMDIR = "/media/sf_media-server/TV Premieres"
MOVIEDIR = "/media/sf_media-server/Movies"

# Transmission download folders
TVTOR = "tv_shows"
PREMTOR = "tv_premeries"
MOVIETOR = "movies"

# Path to SortTV script
SORTTV = /home/chris/.flexget/scripts/sorttv/sorttv.pl

LOGFILE = /home/chris/logs/torrent_complete.log
touch $LOGFILE

DIR = basename $TR_TORRENT_DIR 

# TV Shows
if [ DIR = $TVTOR ]; then
    echo "Transmission finished downloading \"$TR_TORRENT_NAME\" on $TR_TIME_LOCALTIME" >$LOGFILE
    echo "Moving from $TR_TORRENT_DIR to /media/sf_Iomega_HDD/TV Shows" >$LOGFILE
    perl $SORTTV $TR_TORRENT_DIR  $TVDIR

# TV Premieres
elif [ DIR = $PREMTOR ]; then
    echo "Transmission finished downloading \"$TR_TORRENT_NAME\" on $TR_TIME_LOCALTIME" >$LOGFILE
    echo "Moving from $TR_TORRENT_DIR to /media/sf_Iomega_HDD/TV Premieres" >$LOGFILE
    perl $SORTTV $TR_TORRENT_DIR  $PREMDIR

# Movies
elif [ DIR = $MOVIETOR ]; then
    echo "Transmission finished downloading \"$TR_TORRENT_NAME\" on $TR_TIME_LOCALTIME" >$LOGFILE
    echo "Moving from $TR_TORRENT_DIR to /media/sf_Iomega_HDD/Movies" >$LOGFILE
    perl $SORTTV $TR_TORRENT_DIR  $MOVIEDIR

# Something went wrong or not a media file
else
    echo "Transmission finished downloading \"$TR_TORRENT_NAME\" on $TR_TIME_LOCALTIME" >$LOGFILE
    echo "Error attempting to move from $TR_TORRENT_DIR to /media/sf_Iomega_HDD/Movies" >$LOGFILE
    echo "Is this a media file?" >$LOGFILE
fi
