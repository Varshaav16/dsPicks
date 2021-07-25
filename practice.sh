#! /bin/bash
echo "........."
echo "Welcome to the pseudo code template."

declare -A problems
problems=( ["1"]=$'\e[1;31mFind K Pairs with Smallest Sums \e[0m\nYou are given two integer arrays nums1 and nums2 sorted in ascending order and an integer k.\nDefine a pair (u, v) which consists of one element from the first array and one element from the second array.\nReturn the k pairs (u1, v1), (u2, v2), ..., (uk, vk) with the smallest sums.' ["2"]=$'\e[1;31mFind the Town Judge \e[0m\nIn a town, there are n people labeled from 1 to n. There is a rumor that one of these people is secretly the town judge.\nIf the town judge exists, then:\nThe town judge trusts nobody.\nEverybody (except for the town judge) trusts the town judge.\nThere is exactly one person that satisfies properties 1 and 2.\nYou are given an array trust where trust[i] = [ai, bi] representing that the person labeled ai trusts the person labeled bi.\nReturn the label of the town judge if the town judge exists and can be identified, or return -1 otherwise.')

echo $'\nPress \e[1;31msearch\e[0m to find the problem statement.'

read comm

while [ $comm != "exit" ]
do
    echo $'\nPress \e[1;31ma number between 1-2\e[0m to find the problem statement. Press \e[1;31m[back] \e[0m to go back. Press \e[1;31m[exit] \e[0m to exit the script.'
    read comm

    if [ -v problems[$comm] ]
    then
        echo ".........."
        echo ${problems[$comm]}
    elif [ $comm == "back" ]
    then 
        ./help.sh
    else
        echo "Problem number not found try again. Try again"
    fi
done

