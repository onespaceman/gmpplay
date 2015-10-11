#! /bin/bash

#Easy search for GMusicProxy

#variables
searchtype="get_by_search"
numtracks="100" #max number of tracks to get
host="localhost" #GMusicProxy host
port="9999" #GMusicProxy port

#actual code
#search types
searchartist () {
	echo "Artist?";
	read artist;
	search1="artist&artist=${artist// /%}";
	search2="&num_tracks=$numtracks"; }

searchalbum () {
	echo "Album?";
	read title;
	search1="album&artist=${artist// /%}&title=${title// /%}"; }

searchsong () {
	echo "Song?";
	read title;
	search1="song&artist=${artist// /%}&title=${title// /%}"; }

#option flags
while getopts "hcasr" opt; do
  case $opt in
    h)
	echo "-h	show help"
	echo "-c	clear current playlist"
	echo ""
	echo "	add an artist (default)"
	echo "-a	add an album"
	echo "-s	add a song (only creating radio stations from songs works right now due to a bug in GMP)"
	echo "-r	create radio station from an album/artist/song"
	exit
	;;
    c)
	doclear="mpc -q clear"
	;;
    a)
	option="searchalbum"
	;;
    s)
	option="searchsong"
	;;
    r)
	searchtype="get_new_station_by_search"
	;;
    \?)
	echo "Invalid option"
	exit
	;;
  esac
done

#Combines options here
searchartist

$option

$doclear

curl -s "http://$host:$port/$searchtype?type=$search1$search2" | 
  grep -v "^#" | while read url; do mpc add "$url"; done
mpc play
