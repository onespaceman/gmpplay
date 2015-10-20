## gpmplay:
A bash script to easily use GMusicproxy to add music to mpd. Uses gmusic-mpd to add tags to the playlist.

Usage 
Make the script executable with "chmod +x <filename>"  
Several variables need to be edited at the top of the file to be able to work

Examples:

>gmpplay.sh -c

Clears the current playlist and adds songs from an artist

>gmpplay.sh -csr

Clears the current playlist and creates a station from a song

```
Options:

  -h  show option flags
  -c  clear current playlist
      add an album (default search)
  -q  add an artist
  -s  add a song (only works when creating radio stations, for now)
  -r  create radio station from the album/artist/song

```

Dependencies:

mpd and mpc  
GMusicProxy  
gmusic-mpd
