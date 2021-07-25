#! /bin/bash
echo "........."
echo "Welcome to the pseudo code template."

declare -A problems
problems=( ["1"]="\e[1;31mFind K Pairs with Smallest Sums \e[0m \nYou are given two integer arrays nums1 and nums2 sorted in ascending order and an integer k.\nDefine a pair (u, v) which consists of one element from the first array and one element from the second array.\nReturn the k pairs (u1, v1), (u2, v2), ..., (uk, vk) with the smallest sums.\n\n\e[1;33mExample1:  \e[0m\nInput: nums1 = [1,7,11], nums2 = [2,4,6], k = 3\nOutput: [[1,2],[1,4],[1,6]]\nExplanation: The first 3 pairs are returned from the sequence: [1,2],[1,4],[1,6],[7,2],[7,4],[11,2],[7,6],[11,4],[11,6]\n\n\e[1;33mExample2:  \e[0m\nInput: nums1 = [1,1,2], nums2 = [1,2,3], k = 2\nOutput: [[1,1],[1,1]]\nExplanation: The first 2 pairs are returned from the sequence: [1,1],[1,1],[1,2],[2,1],[1,2],[2,2],[1,3],[1,3],[2,3]\n\nPlease keep the file name as \e[1;31mfind_K_pairs_with_smallest_sums.py\e[0m and when you are done, enter \e[1;31mverify filename.py \e[0m " ["2"]="\e[1;31mFind the Town Judge \e[0m \nIn a town, there are n people labeled from 1 to n. There is a rumor that one of these people is secretly the town judge.\n\nIf the town judge exists, then:\n\nThe town judge trusts nobody.\nEverybody (except for the town judge) trusts the town judge.\nThere is exactly one person that satisfies properties 1 and 2.\nYou are given an array trust where trust[i] = [ai, bi] representing that the person labeled ai trusts the person labeled bi.\n\nReturn the label of the town judge if the town judge exists and can be identified, or return -1 otherwise.\n\n\e[1;33mExample1:  \e[0m\nInput: n = 2, trust = [[1,2]]\nOutput: 2\n\n\e[1;33mExample2:  \e[0m\nInput: n = 3, trust = [[1,3],[2,3]]\nOutput: 3\n\n\nPlease keep the file name as \e[1;31mfind_the_town_judge.py\e[0m and when you are done, enter \e[1;31mverify filename.py \e[0m")

echo $'\nPress \e[1;31msearch\e[0m to find the problem statement.'

read comm

while [ $comm != "exit" ]
do
    echo $'\nPress \e[1;31ma number between 1-2\e[0m to find the problem statement. Press \e[1;31m[back] \e[0m to go back. Press \e[1;31m[Ctrl + C] \e[0m to exit the script.'
    read comm

    if [ -v problems[$comm] ]
    then
        echo ".........."
        echo -e ${problems[$comm]}
    elif [ $comm == "back" ]
    then 
        ./help.sh
    else
        echo "Problem number not found try again. Try again"
    fi
done

