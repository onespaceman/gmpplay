# gpmplay  
easily play music with MPD and GMusicProxy.

#####usage:  
`chmod +x gmpplay` to make the script executable  
`gmpplay <options> <artist> - <title>`  
gmpplay tries to get your MPD and GMusicProxy configuration from $XDG_CONFIG_HOME/mpd/mpd.conf and $XDG_CONFIG_HOME/gmusicproxy.cfg OR from $HOME/.config/mpd/mpd.conf and $HOME/.config/gmusicproxy.cfg. If those files or the required settings are not found, it reverts to the default values.
 
#####options:  
`-h`  show help
`-c`  clear the queue in mpd before adding songs  
` `` ` add an artist (default)  
`-a`  add an album  
`-s`  add a song  
`-r`  create radio station from the album/artist/song

#####examples:  
`gmpplay -c artist`

clear the queue and add songs from Artist

`gmpplay -sr artist - song`

create a radio station from Song by Artist and append to the queue

#####dependencies:  
[MPD and MPC](http://www.musicpd.org/)  
[GMusicProxy](http://gmusicproxy.net/)  
