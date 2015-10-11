## gpmplay

A bash script to easily use GMusicproxy to add music to mpd

```
Options:

  -h  show option flags
  -c  clear current playlist
      add an album (default search)
  -q  add an artist
  -s  add a song (only works when creating radio stations, for now)
  -r  create radio station from the album/artist/song

```
Examples:

>gmpplay.sh -c

Clears the current playlist and adds songs from an artist

>gmpplay.sh -csr

Clears the current playlist and creates a station from a song
