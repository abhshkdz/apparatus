#Apparatus

Repository of my frequently used scripts.

##Git

###git-repositories-by-username.sh

This script is passed usernames as arguments from which it creates a repository listing by username (owner) in `$HOME/git_<username>.txt`.

It looks for git repositories under `$HOME/projects/`.

####Usage

	. git-repositories-by-username.sh abhshkdz

##Muzi

###muzi-albums-download.sh

**Requirements**: [Underscore-CLI](https://github.com/ddopson/underscore-cli) for parsing JSON

This script is passed Muzi album URLs as arguments.

It creates folders as album names in the current directory and downloads the entire album.

####Usage

	. muzi-albums-download.sh https://sdslabs.co.in/muzi/ajax/album/?id=109 https://sdslabs.co.in/muzi/ajax/album/?id=111 https://sdslabs.co.in/muzi/ajax/album/?id=112

###muzi-artists-download.sh

**Requirements**: [Underscore-CLI](https://github.com/ddopson/underscore-cli) for parsing JSON

This script is passed Muzi band URLs as arguments.

It creates folders as artist->album names in the current directory and downloads the entire discography.

####Usage

	. muzi-artists-download.sh https://sdslabs.co.in/muzi/ajax/band/albums.php?id=7038 https://sdslabs.co.in/muzi/ajax/band/albums.php?id=7065

##Latest

###latest-jquery.sh

Gets the latest version of jQuery from [jQuery CDN](http://code.jquery.com/).

####Usage

    . latest-jquery.sh

###latest-bootstrap.sh

Gets Twitter Bootstrap 2.1.0 CSS files by theme from [Boostrap CDN](http://www.bootstrapcdn.com/).

Pass theme names as arguments.

####Usage

    . latest-bootstrap.sh amelia default spruce

##Backup

###backup-db.sh

Backs up all databases separately as backup/dbname.sql

####Usage
    
    . backup-db.sh db_pass

##Twitter

###log.sh

Moves the individual tweet files to backup folder and adds tweet text to the file `tweets`

###gist.sh

Adds the latest tweets to [Gist on Github](https://gist.github.com/4151814)

####Usage

    . log.sh
    . gist.sh

##Download

###axel-file.sh

Downloads from a list of files using Axel

####Usage

    . axel-file.sh list.txt