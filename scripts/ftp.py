#~ from ftplib import FTP
#~ 
#~ ftp = FTP('toffee.whatbox.ca')
#~ ftp.login('cgiacofei','EXBLAE0oAC184iLOkO0h')
#~ 
#~ files = ftp.dir('files/completed/*.mkv')
#~ 
#~ print(files)

import ftplib
import os

def traverse(ftp, depth=0, results=[]):
    """
    return a recursive listing of an ftp server contents (starting
    from the current directory)

    listing is returned as a recursive dictionary, where each key
    contains a contents of the subdirectory or None if it corresponds
    to a file.

    @param ftp: ftplib.FTP object
    """
    if depth > 10:
        return ['depth > 10']

    for entry in (path for path in ftp.nlst() if path not in ('.', '..')):
        try:
            ftp.cwd(entry)
            traverse(ftp, depth+1, results)
            ftp.cwd('..')
        except:
            results.append((ftp.pwd().split('/')[3], entry))
    return results

def main():
    ftp = ftplib.FTP('toffee.whatbox.ca')
    ftp.connect()
    ftp.login('cgiacofei','EXBLAE0oAC184iLOkO0h')
    ftp.cwd('files/completed/tv_shows')
    filelist = traverse(ftp)
    
    for file in filelist:
        print(file)

if __name__ == '__main__':
    main()
