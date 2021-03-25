#!/bin/sh
echo "what is your name?"
read user_name
echo "hello $user_name"
echo "i will create you a file called ${user_name}_file"
touch "${user_name}_file"
