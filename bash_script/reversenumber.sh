#!/bin/bash

if [ $# -eq 1 ]; then
    if [ $1 -gt 0 ]; then
        num=$1
        revNum=0
        while [ $num -ne 0 ]
        do
            testnum=$(( $num %  10 ))
            revNum=$(( $revNum * 10 + $testnum ))
            num=$(( $num / 10 ))
        done
        echo "Reverse Number:  $revNum of $1"
    else
        echo "Input is less than 0, retry with a different number."
    fi
else
    echo "ERROR: Retry with one parameter."
fi
