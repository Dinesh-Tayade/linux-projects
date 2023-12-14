#!/bin/bash

#variables..

Path=/home/dinesh/archive
Path2=/home/dinesh/myscripts
days=10
run=0

#check if the directory is present or not..

if [[ -d $Path ]]
then
        echo "directory exists..$Path" &> /dev/null
elif [[ ! -d $path ]]
then 
	echo "directory does not exists :$Path-->creating directory :$Path"
	mkdir $Path
fi

#Create folder "archive" if not present.

if [[ -d $Path/archive_folder.sh ]]
then
        echo "folder exists..$Path/archive_folder.sh" &> /dev/null

elif [[ ! -d $Path/archive_folder.sh ]]
then    
	echo "folder does not exists :$Path/archive_folder.sh---> creating folder :$Path/archive_folder.sh"
	mkdir $Path/archive_folder.sh
fi

#finding the list of files older than 10 days..

for i in `find $Path2 -type f -mtime 4 `
do 
	if [[ $run -eq 0 ]]
	then 
		echo "[$(date)] :moving $i into ---> $Path/archive_folder.sh"
                cp $i $Path/archive_folder.sh || exit 1
         fi
	 echo "-------------------------------------------------------------"
done
