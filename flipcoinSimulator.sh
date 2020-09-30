##!/bin/bash -x
MAXCOUNT=21
headcount=0
tailcounter=0
while [[ $headcount -ne $MAXCOUNT && $tailcounter -ne $MAXCOUNT ]]
do
x=$(($(($RANDOM%2)) + 1))
if [ $x -eq 1 ]
then
	((headcount++))
else
	((tailcounter++))
fi
done
if [ $headcount -eq $MAXCOUNT ]
then
	echo "Head Wins"
	echo "Head winning time : "$headcount
	echo "Tail winning time : "$tailcounter
	diff=$(($headcount-$tailcounter))
	echo "Head wins by difference: "$diff
else
	echo "Tail wins"
	echo "Tail winning time : "$tailcounter
	echo "Head winning time : "$headcount
	diff=$(($tailcounter-$headcount))
        echo "Tail wins by difference: "$diff

fi
if [ $headcount -eq $tailcounter ]
then
	echo "Its a tie"
fi
