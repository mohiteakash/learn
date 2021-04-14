#!/bin/bash

if [ -z "$1" ]; then                #-z: check the condition for "string is zero length"
    echo "Usage: $0 filename.u"     #$0 is positional argument $0 will give output ./freqL.sh
    exit 1                          # exit script with general error
fi

   filename=$1                         #$1 is use as argument 

while read -n 1 c                    #read input file character by character
do
    echo "$c"                        #print each character
done < "$filename" | grep '[[:alpha:]]' | sort | uniq -c  | sort -nr


# grep [[:alpha:]]:-match all alphabetic charecter and equivalent
#sort:- sort alphabet and numeric character
#uniq -c :-precede each output line by the number of times it occur
#sort -nr:-compare acccording to string numeric value and reverse the result
