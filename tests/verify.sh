#! /bin/bash

read -a comm
if [ ${comm[0]} == "verify" ]
then
    test_file="tests_${comm[1]}"
    status=python3 $test_file
    echo "works"
else
    echo "Command not found. Try again!"
fi