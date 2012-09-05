#Swiss Army Knife

Repository of frequently used **bash scripts**.

##Git

###git-repositories-by-username.sh

This script is passed usernames as arguments from which it creates a repository listing by username (owner) in `$HOME/git_<username>.txt`.

It looks for git repositories under `$HOME/projects/`.

####Usage

	sh git-repositories-by-username.sh abhshkdz

####Sample Output

*filename*: `git_abhshkdz.txt`

	/home/abhshkdz/projects/personal/d3
	/home/abhshkdz/projects/personal/docs
	/home/abhshkdz/projects/personal/hubot-scripts
	/home/abhshkdz/projects/personal/movie-suggest
	/home/abhshkdz/projects/personal/php-algorithms
	/home/abhshkdz/projects/personal/project-euler
	/home/abhshkdz/projects/personal/spoj
	/home/abhshkdz/projects/personal/swiss-army-knife

###muzi-albums-download.sh

**Requirements**: [Underscore-CLI](https://github.com/ddopson/underscore-cli) for parsing JSON

This script is passed Muzi album URLs as arguments.

It creates folders as album names in the current directory and downloads the entire album.

####Usage

	sh muzi-albums-download.sh https://sdslabs.co.in/muzi/ajax/album/?id=109 https://sdslabs.co.in/muzi/ajax/album/?id=111 https://sdslabs.co.in/muzi/ajax/album/?id=112

###muzi-artists-download.sh

**Requirements**: [Underscore-CLI](https://github.com/ddopson/underscore-cli) for parsing JSON

This script is passed Muzi band URLs as arguments.

It creates folders as artist->album names in the current directory and downloads the entire discography.

####Usage

	sh muzi-artists-download.sh https://sdslabs.co.in/muzi/ajax/band/albums.php?id=7038 https://sdslabs.co.in/muzi/ajax/band/albums.php?id=7065