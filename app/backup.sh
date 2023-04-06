#!/bin/bash
export DIR_CURRENT=$(pwd)
backupDir="$DIR_CURRENT/mysql/backup"
filenameSql=backup-$(date +%Y-%m-%d-%H.%M.%S).sql
filenameArchive=$backupDir/$filenameSql.zip
docker exec app-db-1 sh -c 'exec mysqldump --all-databases -uroot -p$MYSQL_ROOT_PASSWORD' > $backupDir/$filenameSql
zip -j $filenameArchive $backupDir/$filenameSql
rm -rf $backupDir/*.sql
