#! /bin/python

import os
import time

tv_root = "/media/media-drive/TV Shows"
s_clean = {"The Colbert Report":7,
           "The Daily Show with Jon Stewart":7}

test_dir = "/home/chris/testing"

def delete_old_files(dirpath, max_age):
    max_age *= 86400 # convert days to seconds
    present = time.time()
    file_list = []
    
    for root, dirs, files in os.walk(dirpath):
        for old_thing in files:
            file_name = os.path.join(root, old_thing)
            
            try:
                if (present - os.path.getmtime(file_name)) > max_age and "Season" in root:
                    file_list.append(file_name)
                    print(file_name, str((present - os.path.getmtime(file_name)) / 86400))
            except:
                pass

for show in s_clean:
    delete_old_files(os.path.join(test_dir, show), s_clean[show])

