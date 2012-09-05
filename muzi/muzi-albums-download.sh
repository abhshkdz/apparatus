#!/bin/bash
#Requires underscore-cli (https://github.com/ddopson/underscore-cli) for parsing JSON
#Pass the album urls as arguments (space separated), for example 
#sh muzi-albums-download.sh https://sdslabs.co.in/muzi/ajax/album/?id=109 https://sdslabs.co.in/muzi/ajax/album/?id=111 https://sdslabs.co.in/muzi/ajax/album/?id=112
for url in "$@"
do
    tracks=`curl -s $url | underscore select '.tracks .id' --outfmt text`
    album=`curl -s $url | underscore select .name --outfmt text`
    echo $album
    mkdir "$album"
    cd ./"$album"/
    for i in $tracks
    do
        file=https://topaz.sdslabs.co.in/`curl -s https://sdslabs.co.in/muzi/ajax/track/?id=$i | underscore select .file --outfmt text`
        echo $file >> tracklist.txt
    done
    wget -i tracklist.txt
    rm tracklist.txt
    cd ../
done
