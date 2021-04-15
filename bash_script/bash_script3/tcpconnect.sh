#!/bin/bash

C=$(/bin/netstat -nt | tail -n +3 | grep ESTABLISHED | wc -l)

#provide full path of netstat to make script secure
#tail is the last part of content in file. +3 skip the 3rd line
#connect to established connection 
#wc -l cout number of lines

D=$(date +"%m %d")          #print month and day of month

T=$(date +"%H %M")          #print hour of day and minute of hour

printf "%s %s %s\n" "$C" "$D" "$T"
