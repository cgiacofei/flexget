#! /bin/bash

lockfile -r 0 .lockfile

echo "Sorting TV Shows"
ionice -n7 nice perl /home/media/sorttv/sorttv.pl --directory-to-sort=/home/media/completed_files/tv_shows --tv-directory="/media/usb/TV Shows"

echo "Sorting TV Premieres"
ionice -n7 nice perl /home/media/sorttv/sorttv.pl --directory-to-sort=/home/media/completed_files/tv_premieres --tv-directory="/media/usb/TV Premieres"

echo "Sorting Movies"
ionice -n7 nice perl /home/media/sorttv/sorttv.pl --directory-to-sort=/home/media/completed_files/movies --movie-directory="/media/usb/Movies"

echo "Sorting Kids TV"
ionice -n7 nice perl /home/media/sorttv/sorttv.pl --directory-to-sort=/home/media/completed_files/andrea_tv --tv-directory="/media/usb/Kid TV"

echo "Sorting Kids Movies"
ionice -n7 nice perl /home/media/sorttv/sorttv.pl --directory-to-sort=/home/media/completed_files/andrea_movies --movie-directory="/media/usb/Kid Movies"

rm -f .lockfile

exit 0
