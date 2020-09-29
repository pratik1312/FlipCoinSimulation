##!/bin/bash -x
x=$((RANDOM%2))
echo $x
if [ $x -eq 0 ]
then
	echo "Head"
else
	echo "Tails"
fi
