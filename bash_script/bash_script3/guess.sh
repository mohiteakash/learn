#!/bin/bash

NUMGUESS=0					#assign a value to NUMGUESS is 0

echo "$0 - Guess a number between 1 and 20" 	#argument $0 and print this sentence

(( secret = RANDOM % 20 + 1 ))			#store a calculated value in secret

while [[ guess -ne secret ]]			#check condition between guess and secret 
						#"-ne":-if value are not equal condition is true
do
    (( NUMGUESS = NUMGUESS + 1 ))               # add numgess+1 and store in numguess every wrong guess                                                  numgess is increment by 1

 read -p "Enter guess: " guess		#if condition is false read -p read a guess number and						        print
                                       
    if (( guess < $secret )); then          #if guess value lower then secret then echo print tryheigher
                echo "Try higher..."
    elif (( $guess > $secret )); then       #if guess value heigher then secret then echo print trylower

        echo "Try lower..."
fi
done

printf "Yes! You guessed it in $NUMGUESS guesses.\n" #print given statement with numguess value print la                                                      st increment value 
