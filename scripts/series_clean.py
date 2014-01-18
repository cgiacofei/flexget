#! /bin/python

"""series_clean.py: Removes old files from the system.

The dictionary s_clean contains the show folders to scan and how long to
keep the files within those folders.
"""

import os
import time

tv_root = "/media/media-drive/TV Shows"
s_clean = {"The Colbert Report":7,
           "The Daily Show with Jon Stewart":7}

test_dir = "/home/chris/testing"

def delete_old_files(dirpath, max_age):
    max_age *= 86400 # convert days to seconds
    present = time.time()
    
    for root, dirs, files in os.walk(dirpath):
        for old_thing in files:
            file_name = os.path.join(root, old_thing)
            
            try:
                if (present - os.path.getmtime(file_name)) > max_age and "Season" in root:
                    os.remove(file_name)
            except:
                pass

for show in s_clean:
    delete_old_files(os.path.join(tv_root, show), s_clean[show])

