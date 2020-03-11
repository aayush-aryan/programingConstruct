#!/bin/bash  -x
i=0;
while (( i<10 ))
do
   arr[i]=$(( $((RANDOM%900))+100 ));
	((i++));
done
echo "${arr[@]}";
