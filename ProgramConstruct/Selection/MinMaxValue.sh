#!/bin/bash -x
num1=$((RANDOM%900 +100));
num2=$((RANDOM%900 +100));
num3=$((RANDOM%900 +100));
num4=$((RANDOM%900 +100));
num5=$((RANDOM%900 +100));
if [ $num1 -lt $num2 ]
   then
        max=$num2;
        min=$num1;
else
       max=$num1;
       min=$num2;
fi
if [ $max -lt $num3 ]
   then max=$num3;
elif [ $max -lt $num4 ]
   then
        max=$num4;
elif [ $max -lt $num5 ]
   then max=$num5;
else
    max=$max;
fi
if [ $min -gt $num3 ]
   then min=$num3;
elif [ $min -gt $num4 ]
   then min=$num4;
elif [ $min -gt $num5 ]
   then min=$num5;
else
   min=$min
fi
echo max $max and min $min;
