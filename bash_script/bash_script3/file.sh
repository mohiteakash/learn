#!/bin/bash

f="/home/akash/dev.txt"

if [ ! -f $f ]
then
  echo $f does not exist!
else 
	echo exist
  exit
fi
