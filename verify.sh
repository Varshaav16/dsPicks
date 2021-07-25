#!/bin/bash

test_file="test_$1"
echo $test_file
python3 ./$test_file > output.txt 2>&1
res=$(head -c 1 output.txt)
if [ $res == '.' ]
then
    echo "Your submission has been accepted!"
    curl -s "http://artscene.textfiles.com/vt100/fishy.vt" | pv -q -L 700
else
    echo "Your submission has not been accepted!"
fi
