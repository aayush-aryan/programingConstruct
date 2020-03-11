read -p "enter the number :" n;
	for (( i=2; i<=$n/2; i++ ));
		do
		if  (( $(($n%$i))==0 ))
		then
		echo $i;
fi;
done;
