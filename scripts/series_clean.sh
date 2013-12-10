#! /bin/bash

find "/media/media-drive/TV Shows/The Colbert Report"/Season*  -mtime +14 -type f -delete
find "/media/media-drive/TV Shows/The Daily Show"/Season*  -mtime +14 -type f -delete

find "/media/media-drive/TV Shows" -type d -empty -delete
