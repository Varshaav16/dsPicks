#!/bin/bash
read -a comm
if [ ${comm[0]} == "verify" ]
then
    test_file="test_${comm[1]}"
    python3 $test_file > output.txt 2>&1
    res=$(head -c 1 output.txt)
    if [ $res == '.' ]
    then
        echo "Your submission has been accepted!"
    else
        echo "Your submission has not been accepted!"
    fi
else
    echo "Command not found. Try again!"
fi
