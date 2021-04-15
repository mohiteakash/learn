#!/bin/bash

f="/home/mtsouk/connections.data"

if [ ! -f $f ]                        #check condition  not a file in $f
then
  echo $f does not exist!             #if condition is true then print this
  exit
fi

touch ${f}                             #create file
MAXSIZE=$((4096*1024))                 #set a maxsize      maxsize is deped upon user

size=`du -b ${f} | tr -s '\t' ' ' | cut -d' ' -f1`  #du command is used for file space usages
					            #tr is use for transform or delete charechter
if [ ${size} -gt ${MAXSIZE} ]                #check greater than condition between size and maxsize
then
    echo Rotating!                           # print rotatiing
    timestamp=`date +%s`                     #store epach time in timestamp variable
    mv ${f} ${f}.$timestamp                  #
    touch ${f}                               #create file
fi
