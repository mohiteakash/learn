#!/bin/bash


if [[ $# -le 0 ]]                 # test that at least one argument was passed
then
    printf "Not enough arguments!\n" # if no argyment pass then print this
    exit
fi

  count=1                               #count store 1

for arg in "$@"			      #use for loop "$@" store all argument that where enterd on command                                        line
do
    if [[ $arg =~ ^-?[0-9]+([0-9]+)?$ ]]   #test script argument is valid integer or not
    then
        n[$count]=${arg}                      #if found valid integer then adding in "n" array
        let "count += 1"                      #add a +1 in count 
    else
          echo "$arg is not a valid integer!"	#if vaild inreger not found print this
 fi
done

sort -n <(printf "%s\n" "${n[@]}")            #sort -n:- sort print every element in array 
					      #print all the element in "n" array  
					      # <:- tell sort -n to use output of printf as input
