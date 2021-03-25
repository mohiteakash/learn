#!/bin/sh
echo -en "please guess the magic number: "
read X
echo $X | grep "[^0-9]" > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
	echo "sorry,wanted a number"
else 
	if [ "$X" -eq "7"]; then 
		echo "you enterd the magical number!"
	fi
fi
