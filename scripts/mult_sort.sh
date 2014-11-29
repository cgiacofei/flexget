#! /bin/bash

CONFIG_FILES = "sorttv.movies \
                sorttv.shows \
                sorttv.premieres \
                sorttv.andrea_shows \
                sorttv.andrea_movies"

for i in "${CONFIG_FILES[@]}"
do
    perl /home/media/sorttv/sorttv.pl --read-config-file=/home/media/sorttv/$i
done

exit 0
