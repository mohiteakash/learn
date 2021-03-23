#!/bin/bash
read -p "Do not enter negative number here : " n

if test $n -lt 0
then
    echo "You entered a negative number!!"
else
    echo “You are not following my instructions.”
fi
