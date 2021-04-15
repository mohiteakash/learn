#!/bin/bash

if [[ $# -le 0 ]]				# $# use for check the number of paramter/argum                                                              ent pass

then
    printf "Not enough arguments!\n"             ##if passed argument is less than or equal to 0                                                           then print this 
    exit
fi

TIMEOUT=$1                                      #TIMEOUT is $1
VARIABLE=0                                      #store 0 in variable

while :
do
  ((VARIABLE = VARIABLE + 1))                      #increment variable by 1

  read -t $TIMEOUT -p "Do you want to Quit(Y/N): "  # -t is use for time out and -p is use for promot wi                                                      thout a trailing newline before attempting to read

  if [ $VARIABLE -gt $TIMEOUT ]; then                #check greater than condition between var and time
    echo "Timing out - user response took too long!" #if condition is true then print this
    break                                            #break stetment break the script 
  fi

  case $REPLY in                                   #use case statement 
  [yY]*)
    echo "Quitting!"                               #user type Y then print this
    break                                          
    ;;
  [nN]*)
    echo "Do not quit!"                           #user type N then print this
    ;;
  *) echo "Please choose Y or N!"                # print this statment
     ;;
  esac
done
