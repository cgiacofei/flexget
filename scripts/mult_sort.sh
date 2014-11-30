#! /bin/bash

declare -a CONFIG_FILES=("sorttv.movies" "sorttv.shows" "sorttv.premiere" "sorttv.shows_andrea" "sorttv.movies_andrea")

for i in "${CONFIG_FILES[@]}"
do
    echo "Using config file $i"
    perl /home/media/sorttv/sorttv.pl --read-config-file=/home/media/sorttv/$i
done

exit 0
