#!/bin/bash -x
k=0;
   while (( k<10 ))
   do
      arr[k]=$((RANDOM%900 + 100));
            ((k++));
done
echo "${arr[@]}";
n="${#arr[@]}";
for (( i=0; i<$(($n-1)); i++ ))
do
	for (( j=$(($i+1)); j<$n; J++ ))
	do
          if (( ${arr[i]}<${arr[j]} ))
            then
		temp=${arr[i]}
		arr[i]=${arr[j]}
		arr[j]=$temp;
	 fi
       done
done
echo "${#arr[@]}"
echo 2nd heighest element of array : "{arr[$(($n-1))]";
echo 3rd heighest element of array : "{arr[1]}";


