#!/bin/bash

DIRECTORIES="/home/akash/project/learn/bash_script:/home/akash/new"      #in DIR variable gives a path

                                                          # Count the number of arguments passed in
if [[ $# -le 0 ]]                                        # $# use for check the number of paramter/argum                                                              ent pass
then
    echo "Using default value for COUNT!"                #if passed argument is less than or equal to 0                                                           then print this 
else                                                    
	                                                #else compare with regualr expression
    if [[ $1 =~ ^-?[0-9]+([0-9]+)?$ ]]
    then
        COUNT=$1                                        # then count is $1
    fi
fi

while read -d ':' dir; do                               # read all files and folder and store in dir
    if [ ! -d "$dir" ]                                  # if not a directory in $dir
    then
        echo "**" Skipping $dir                          #then print skipping and list all dir
        continue
    fi
    files=`find $dir -type f | wc -l`                   #use command find to count all file and store in                                                        files variable
    if [ $files -lt $COUNT ];                           #check condition between files and count
    then
        echo "Everything is fine in $dir: $files"      # if files less than count then print this and sh                                                         ow directory name using $dir and show count fil                                                         e number using $file
    else
        echo "WARNING: Large number of files in $dir: $files!" #condition is false then print this and s                                                               how dir name using $dir and show file cou                                                                nt number using $file
    fi
done <<< "$DIRECTORIES:"                                        # $DIRECTORIES store absoulate path 
