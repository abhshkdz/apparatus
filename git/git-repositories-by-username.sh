#!/bin/bash
#This script is passed a list of usernames from which it creates a repository listing by username of the format git_<username>.txt in the home directory.
#Should be used something like
#sh git-repositories-by-username.sh abhshkdz sdslabs
find $HOME/projects -name "*.git" -printf "%h\n" | sort -u > $HOME/gitdir.txt
for username in "$@"
do
	filename=$HOME/git_$username.txt
	if [ -f "$filename" ]; then
		echo "$filename exists"
		rm $filename
	else 
		echo "Creating $filename";
		touch $filename
	fi 
	for line in `cat ~/gitdir.txt`
	do 
		cd $line
		count=`cat .git/config | grep -c $username`
		if [ $count -ne 0 ] 
		then 
			echo $line>>$filename
		fi 
	done
done
rm $HOME/gitdir.txt 