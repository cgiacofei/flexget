#! /bin/bash

echo "Sorting TV Shows"
perl /home/media/sorttv/sorttv.pl --directory-to-sort=/home/media/completed_files/tv_shows --tv-directory="/media/usb/TV Shows"

echo "Sorting TV Premieres"
perl /home/media/sorttv/sorttv.pl --directory-to-sort=/home/media/completed_files/tv_premieres --tv-directory="/media/usb/TV Premieres"

echo "Sorting Movies"
perl /home/media/sorttv/sorttv.pl --directory-to-sort=/home/media/completed_files/movies --movie-directory="/media/usb/Movies"

echo "Sorting Kids TV"
perl /home/media/sorttv/sorttv.pl --directory-to-sort=/home/media/completed_files/andrea_tv --tv-directory="/media/usb/Kid TV"

echo "Sorting Kids Movies"
perl /home/media/sorttv/sorttv.pl --directory-to-sort=/home/media/completed_files/andrea_movies --movie-directory="/media/usb/Kid Movies"

exit 0
