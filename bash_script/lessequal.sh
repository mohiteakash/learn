#!/bin/bash
read -p "Enter backup level : " n
if test $n -le 6
then
    echo "Incremental backup requested."
fi
if test $n -eq 7
then
    echo "Full backup requested."

else

    echo “You are not following my instructions.”
fi
