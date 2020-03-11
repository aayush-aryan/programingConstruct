#!/bin/bash -x
read -p "enter the number to compute factorial :" n;
temp=$n;
fact=1;
for (( i=$n; i>0; i-- ))
	do
		fact=$(($fact*$n));
			((n--));
done;
echo factorial of $temp = $fact;
