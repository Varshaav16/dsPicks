#! /bin/bash
echo "........."
echo "Welcome to the pseudo code template."

echo $'\nPress \e[1;31m[search] \e[0m to find a code. Press \e[1;31m[back] \e[0m to go back. Press \e[1;31m[exit] \e[0m to exit the script.'

declare -A codes
codes=( ["sum-k-number"]="sumOfKNumbers.py" ["factorial-n"]="factorialN.py" ["gcd"]="gcd.py" ["lcm"]="lcm.py")

read comm
if [ $comm == "search" ]
then 
    echo $'\e[1;31m \n[sum-k-number] \e[0m-> \e[1;33m get the sum of first k natural numbers \e[0m'
    echo $'\e[1;31m[factorial-n] \e[0m-> \e[1;33m get the value of n! \e[0m'
    echo $'\e[1;31m[gcd] \e[0m-> \e[1;33m get the gretest common divisor of 2 numbers \e[0m'
    echo $'\e[1;31m[lcm] \e[0m-> \e[1;33m get the least common multiple of 2 numbers \e[0m'

    echo $'\nPress \e[1;31m[back] \e[0m to go back. Press \e[1;31m[exit] \e[0m to exit the script.'
fi

while [ $comm != "exit" ]
do
    read comm

    if [ -v codes[$comm] ]
    then
        echo ".........."
        cat ./pseudo-codes/${codes[$comm]}
        echo ".........."
    elif [ $comm == "back" ]
    then
        exec ./help.sh
    else
        echo "Command not found. Try again"
    fi

    echo $'\e[1;31m \n[sum-k-number] \e[0m-> \e[1;33m get the sum of first k natural numbers \e[0m'
    echo $'\e[1;31m[factorial-n] \e[0m-> \e[1;33m get the value of n! \e[0m'
    echo $'\e[1;31m[gcd] \e[0m-> \e[1;33m get the gretest common divisor of 2 numbers \e[0m'
    echo $'\e[1;31m[lcm] \e[0m-> \e[1;33m get the least common multiple of 2 numbers \e[0m'

    echo $'\nPress \e[1;31m[back] \e[0m to go back. Press \e[1;31m[exit] \e[0m to exit the script.'
done