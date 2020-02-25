#!/bin/bash
#$1 - путь к директории 
#$2 - расширение для поиска
#$3 - название папки для бэкапа
#$4 - имя архива для бэкапа
mkdir $3
for var in $(find $1 -type f -name "*.$2")
do 
	mkdir -p $3/$var
	cp $var $3/$var
done
tar -zcf $4 $3
echo "done"