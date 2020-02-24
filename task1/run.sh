#!/bin/bash
#$1 - путь к директории 
#$2 - расширение для поиска
#$3 - название папки для бэкапа
#$4 - имя архива для бэкапа
cd $1
mkdir $3
for var in $(find . -type f -name "*.$2")
do 
	mkdir -p $3/$var
	cp $var $3/$var
done
tar -zcf $4 $3
echo "done"