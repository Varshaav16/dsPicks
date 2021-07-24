#! /bin/bash

echo "........."
echo "'*'Welcome to our command line tool'*'"

echo $'\nPress \e[1;31m[help] \e[0m to read the instructions. Press \e[1;31m[Ctrl+C] \e[0m to exit'

read comm

if [ $comm == "help" ]
then
    ./help.sh
else
    echo "Command not found. Try again."
    ./main.sh
fi