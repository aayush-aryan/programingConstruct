#!/bin/bash -x
Ftime=1;
ptime=2
empRatePerhr=20;
totalDay=20
totalsalary=0;
for (( day=1; day<=$totalDay; day++ ))
do
employCheck=((RANDOM%2));
case $employCheck in
$Ftime)
empPhrs=8;
;;
$Ptime)
empPhrs=3;
;;
*)
salary=0
esac
salary=$(($empRatePerhr*$empPhrs));
totalsalary=$((salary+totalDay));
done
