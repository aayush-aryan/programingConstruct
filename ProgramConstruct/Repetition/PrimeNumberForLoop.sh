#!/bin/bash  -x
read -p "enter the number :" n;
flag=1;
 if (( $n<=2 ))
 then
   echo "$n is not a prime number ";	
fi

for (( i=2; i<=$n/2; i++ ))
	do
 if [ $n%$i -eq 0 ];
   then
      echo "$n : is not prime number";
		flag=0;
      break;
  fi
done
		if [ $flag -eq 1 ]
     then
		echo "$n :is prime number";
  		fi
