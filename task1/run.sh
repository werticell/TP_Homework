#!/bin/bash
#$1 - путь к директории 
#$2 - расширение для поиска
#$3 - название папки для бэкапа
#$4 - имя архива для бэкапа
mkdir $3
count=0
for var in $(find $1 -type f -name "*.$2")
do 
	mkdir $3/newFolderDoesntExist$count
	cp -r $var $3/newFolderDoesntExist$count
	count=$((count + 1))
done
tar -zcf $4 $3
echo "done" 