#! /bin/bash
echo "........."
echo "Welcome to the help file"

echo $'\e[1;31m \n[study] \e[0m-> \e[1;33m read about a topic \e[0m'
echo $'\e[1;31m[pseudo-code] \e[0m-> \e[1;33m get the template for basic fucntions \e[0m'
echo $'\e[1;31m[practice] \e[0m-> \e[1;33m practice by getting a problem statement \e[0m'

echo $'\nPress \e[1;31m[Ctrl+C] \e[0m to exit'


read comm

if [ $comm == "study" ]
then
    ./scrape.sh
elif [ $comm == "pseudo-code" ]
then
    ./pseudo-code.sh
elif [ $comm == "practice" ]
then
    ./practice.sh
else
    echo "Command not found. Try again."
    ./main.sh
fi