#!/bin/bash
#Gets the Twitter Bootstrap 2.1.0 file according to theme specified from Bootstrap CDN.
#Pass theme names as arguments, for example
#bash latest-bootstrap.sh default amelia spacelab
for theme in "$@"
do
    echo $theme
    if [ "$theme" == "default" ]; then
        echo "Downloading Twitter Bootstrap v2.1.0: Default Theme"
        curl -s http://netdna.bootstrapcdn.com/twitter-bootstrap/2.1.0/css/bootstrap-combined.min.css > bootstrap.min.css    
        echo "Succesfully Downloaded to bootstrap.min.css"
    else
        status=`curl -o /dev/null --silent --head --write-out '%{http_code}\n' http://netdna.bootstrapcdn.com/bootswatch/2.1.0/$theme/bootstrap.min.css`
        if [ $status -eq 200 ]; then
            echo "Downloading Twitter Bootstrap v2.1.0: $theme Theme"
            curl -s http://netdna.bootstrapcdn.com/bootswatch/2.1.0/$theme/bootstrap.min.css > bootstrap-$theme.min.css
            echo "Succesfully Downloaded to bootstrap-$theme.min.css"
        else
            echo "Invalid Theme Specified"
        fi
    fi
done
