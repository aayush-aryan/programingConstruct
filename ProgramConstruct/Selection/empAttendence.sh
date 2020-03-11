#!/bin/bash -x
ftime=1;
htime=2;
empRatePerhr=20;
employCheck=$((RANDOM%3));
case $randomCheck in
$ftime)
empPhrs=8;
;;
$htime)
  empPhrs=3;
;;
*)
  salary=0;
;;
esac
salary=$(($empRatePerhr*$empPhrs));
