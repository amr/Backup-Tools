#!/bin/sh
###############
# Dumping the db
###############

# Test for credentials
# TODO: Check for existence of databases
echo SHOW DATABASES | mysql -u$Prj_mysql_user -p$Proj_mysql_pass || exit 1

for db in $Prj_mysql_dbs;
	do mysqldump -u$Prj_mysql_user -p$Prj_mysql_pass $db | gzip > $Back_dir/$Suffix.DB-$db.sql.gz && echo $Back_dir/$Suffix.DB-$db.sql.gz;
done && exit 0