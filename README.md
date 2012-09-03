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
