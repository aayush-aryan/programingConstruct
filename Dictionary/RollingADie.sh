#!/bin/bash -x
declare -A outcomeDie;
indexDie=1;
outcomeDie[$indexDie]=0;
while ((  ${outcomeDie[$indexDie]}!=10 ))
do
	indexDie=$((RANDOM%6+1));
	outcomeDie[$indexDie]=$(( ${outcomeDie[$indexDie]}+1 ));
done
numberThatReachedMaxiTime=$indexDie;
minCount=10;
echo "Value      Frequency  "
for (( indexDie=1; indexDie<=6; indexDie++ ))
do
	echo "  $indexDie   --->    ${outcomeDie[$indexDie]}"
   if [ $minCount -gt ${outcomeDie[$indexDie]} ]
	then
			minCount=${outcomeDie[$indexDie]}
			numberThatReachedMinTime=$indexDie;
	fi
done
echo Number that reached minimum time is $numberThatReachedMinTime
echo Number that reached maximum time is $numberThatReachedMaxiTime
