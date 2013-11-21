#!/bin/bash

DIR = basename $TR_TORRENT_DIR 

# TV Shows
if [ DIR = "tv_shows" ]; then
    perl sorttv/sorttv.pl $TR_TORRENT_DIR  /media/sf_Iomega_HDD/TV Shows
fi

# TV Premieres
if [ DIR = "tv_premeries" ]; then
    perl sorttv/sorttv.pl $TR_TORRENT_DIR  /media/sf_Iomega_HDD/TV Premieres
fi

# Movies
if [ DIR = "movies" ]; then
    perl sorttv/sorttv.pl $TR_TORRENT_DIR  /media/sf_Iomega_HDD/Movies
fi
