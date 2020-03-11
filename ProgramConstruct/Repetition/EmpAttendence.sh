#!/bin/bash  -x
ftime=0;
ptime=1;
empRatePrhr=40;
totalDay=20;
totalSalary=0;
totalHrs=40;
day=1;
while (($day -le $totalDay ))
do
 	((day++))
employCheck=&((RANDOM%2));
case $employCheck in
	$ftime)
	emphrs=8;
	;;
	$ptime)
	emphrs=4;
	;;
*)	salary=0
	;;
	esac
salary=$(($empRatePrhr*$emphrs*$totalDay ));
totalSalary=$(($totalSalary+$salary));
done

