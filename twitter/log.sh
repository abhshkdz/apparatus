#!/bin/bash
cd /home/abhshkdz/Dropbox/zapier/twitter/
IFS=$(echo -en "\n\b")
for f in `ls -rt *.txt`
do
    cat $f >> tweets
    echo "" >> tweets
    mv $f backup/
done
