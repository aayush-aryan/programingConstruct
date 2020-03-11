#!/bin/bash -x
echo "press 1 for Feet to inch";
echo "press 2 for feet to meter";
echo "press 3 for Inch to feet";
echo "press 4 for meter to feet";
read -p "enter a number b/w 1 to 4 :" n;
read -p "enter the value : " v;
case $n in
	1) echo $( echo "scale=2; 12*$v;" | bc );;
	2) echo $( echo "scale=4; 0.3048*$v;" | bc );;
	3) echo $( echo "scale=2; $v/12;" | bc );;
	4) echo $( echo "scale=4; $v/0.3048;" | bc );;
	*) echo "Invalid number :";;
	esac
