#!/bin/bash

for f in "$@"                  #$@ all data in f
do
    if [ ! -f $f ]		#using -f check file or not
    then
      echo $f does not exist!   #$f is dir or anything print does not exisist

         continue                  #if file is exisist then continue
  fi
    echo "Converting $f.";       #print converting $f as filename
 newFile=$(expand -t 2 "$f");    #create variable newfile 
				 #in newfile variable we can use expand -t 4 
				 #expand converting tab to spaces we can use 4 spaces they depend upon 
				 # user we can use 3 2 anything 

    echo "$newFile" > "$f";      #replace the current file with new output because newouput store in 
                                 #newfile. newfile data redirect in current file means that the original                                 file will change
done
