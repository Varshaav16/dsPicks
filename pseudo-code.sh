#! /bin/bash
echo "........."
echo "Welcome to the pseudo ccode template."

echo $'\e[1;31m \n[sum-k-number] \e[0m-> \e[1;33m get the sum of first k natural numbers \e[0m'
echo $'\e[1;31m[factorial-n] \e[0m-> \e[1;33m get the value of n! \e[0m'
echo $'\e[1;31m[gcd] \e[0m-> \e[1;33m get the gretest common divisor of 2 numbers \e[0m'
echo $'\e[1;31m[lcm] \e[0m-> \e[1;33m get the least common multiple of 2 numbers \e[0m'

echo $'\nPress \e[1;31m[search] \e[0m to find a code. Press \e[1;31m[exit] \e[0m to exit'

declare -A codes
codes=( ["sum-k-number"]="sumOfKNumbers.py" ["factorial-n"]="factorialN.py" ["gcd"]="gcd.py" ["lcm"]="lcm.py")

read comm
while [ $comm != "exit" ]
do
    if [ -v codes[$comm] ]
    then
        echo "true"
        echo $'Press \e[1;31m[exit] \e[0m to exit'
    else
        echo "Command not found. Try again"
    fi
    read comm
done