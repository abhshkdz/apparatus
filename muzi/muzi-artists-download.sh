#!/bin/bash
#Requires underscore-cli (https://github.com/ddopson/underscore-cli) for parsing JSON
#Pass the artist/band url as arguments (space separated), for example 
#sh muzi-artists-download.sh https://sdslabs.co.in/muzi/ajax/band/albums.php?id=103 https://sdslabs.co.in/muzi/ajax/band/albums.php?id=5
for url in "$@"
do
    albums=`curl -s $url | underscore select '.albums .id' --outfmt text`
    artist=`curl -s $url | underscore select ':root > .name' --outfmt text`
    echo $artist
    mkdir "$artist"
    cd ./"$artist"/
    for i in $albums
    do
        album_url=https://sdslabs.co.in/muzi/ajax/album/?id=$i
        tracks=`curl -s $album_url | underscore select '.tracks .id' --outfmt text`
        album=`curl -s $album_url | underscore select .name --outfmt text`
        echo $album
        mkdir "$album"
        cd ./"$album"/
        for j in $tracks
        do
            file=https://topaz.sdslabs.co.in/`curl -s https://sdslabs.co.in/muzi/ajax/track/?id=$j | underscore select .file --outfmt text`
            echo $file >> tracklist.txt
        done
        wget -i tracklist.txt
        rm tracklist.txt
        cd ../
    done
    cd ../
done
