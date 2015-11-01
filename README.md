# gpmplay:
easily play music with mpd and GMusicProxy.

#####usage 
`chmod +x <filename>`  
`gmpplay <options> <artist> - <title>`  
<sub>variables may need to be edited at the top of the file to be able to work</sub>
 
#####options

`-h`  show option flags  
`-c`  clear current playlist  
` ` ` ` add an artist (default)  
`-a`  add an album  
`-s`  add a song (only works when creating radio stations, for now)  
`-r`  create radio station from the album/artist/song

#####examples:

`gmpplay -c`

clear the current playlist and add songs from an artist

`gmpplay -sr artist - song`

create a radio station from Song by artist and add to the current playlist

#####dependencies:

[mpd and mpc](http://www.musicpd.org/)  
[GMusicProxy](http://gmusicproxy.net/)  
