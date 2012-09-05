#!/bin/bash
#Backs up all databases separately as backup/db_name.sql
#. backup-db.sh db_pass
if [ $# -eq 1 ]; then
    mkdir backup
    pass=$1
    for i in `echo "show databases" | mysql -u root -p$pass`;
    do
        if [ ! "$i" = "Database" ] && [ ! "$i" = "mysql" ] && [ ! "$i" = "information_schema" ]
        then
            mysqldump -u root -p$pass $i > backup/$i.sql
        fi
    done
else
    echo "Please provide database password"
fi
