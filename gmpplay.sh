#! /bin/bash

#Easy search for GMusicProxy

#variables
searchtype="get_by_search"
numtracks="100" #max number of tracks to get
host="localhost" #GMusicProxy host
port="9999" #GMusicProxy port

#actual code
while getopts "hcaqsr" opt; do
  case $opt in
    h)
	echo "-h	show option flags"
	echo "-c	clear current playlist"
	echo ""
	echo "-a	add an album"
	echo "-q	add an artist"
	echo "-s	add a song"
	echo "-r	create radio station from an album/artist/song"
	exit
	;;
    c)
	mpc clear
	;;
    a)
	echo "Artist?"
	read artist
	echo "Album?"
	read title
	search1="album&artist=$artist&title=$title"
	;;
    q)
	echo "Artist?"
	read artist
	search1="artist&artist=$artist"
	search2="&num_tracks=$numtracks"
	;;
    s)
	echo "Artist?"
	read artist
	echo "Song?"
	read title
	search1="song&artist=$artist&song=$title"
	;;
    r)
	searchtype="get_new_station_by_search"
	search2="&num_tracks=$numtracks"
	;;
    \?)
	echo "Invalid option"
	exit
	;;
  esac
done

curl -s "http://$host:$port/$searchtype?type=$search1$search2" | 
  grep -v "^#" | while read url; do mpc add "$url"; done
mpc play
