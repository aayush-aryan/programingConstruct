#!/bin/bash -x
read -p "enter 1st number:" a;
read -p "enter 2nd number:" b;
read -p "enter 3rd number:" c;
result1=$(( $a+$b*$c ));
d1=$( echo "scale=2; $a/$b;" | bc );
result2=$( echo "scale=2; $c+$d1;" | bc );
d2=$( echo "scale=2; $a%$b;" | bc );
result3=$( echo "scale=2; $d2+$c;" | bc );
result4=$(( $a*$b+$c ));
echo  $result1 $result2 $result3 $result4 
