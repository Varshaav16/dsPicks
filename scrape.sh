#! /bin/bash
echo "........."
echo "Welcome to the study material"

echo $'\nPress the following commands \e[0m to search the respective topic'
echo $'\e[1;31m \n[array] \e[0m-> \e[1;33m read about array \e[0m'
echo $'\e[1;31m[hashtable] \e[0m-> \e[1;33m read about hash tables \e[0m'
echo $'\e[1;31m[heap] \e[0m-> \e[1;33m read about heaps \e[0m'

echo $'\nPress \e[1;31m[Ctrl+C] \e[0m to exit'

read comm
python3 ./scrape.py $comm
