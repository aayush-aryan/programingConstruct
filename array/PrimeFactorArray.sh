#!/bin/bash -x

read -p "enter the number :" number;
        for (( index=2; index<=$number; index++ ));
        do
                while  (( $number%$index==0 ))
                do
               	  arr_Prime_Factor[count++]=$index;
						  number=$(($number/$index));
					 done
			done
	echo ${arr_Prime_Factor[@]};
