#! /bin/bash

echo "Sorting TV Shows"
perl /home/media/sorttv/sorttv.pl --directory-to-sort=/home/media/torrents/completed/tv_shows --tv-directory="/media/media-drive/TV Shows"

echo "Sorting TV Premieres"
perl /home/media/sorttv/sorttv.pl --directory-to-sort=/home/media/torrents/completed/tv_premieres --tv-directory="/media/media-drive/TV Premieres"

echo "Sorting Movies"
perl /home/media/sorttv/sorttv.pl --directory-to-sort=/home/media/torrents/completed/movies --movie-directory=/media/media-drive/Movies

echo "Sorting Kids TV"
perl /home/media/sorttv/sorttv.pl --directory-to-sort=/home/media/torrents/completed/andrea_tv --tv-directory=/media/Iomega_HDD/Kids/TV

echo "Sorting Kids Movies"
perl /home/media/sorttv/sorttv.pl --directory-to-sort=/home/media/torrents/completed/andrea_movies --movie-directory=/media/Iomega_HDD/Kids/Movies/

exit 0
