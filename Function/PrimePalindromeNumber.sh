#!/bin/bash -x
isPrimeNumber(){
	flag=1
	if [ $number -lt 2 ]
	then
		flag=0;
	fi
	for (( count=2; count<$number/2; count++ ))
	do
		if [ $((number%$count)) -eq 0 ]
		then
			flag=0;
			break;
		fi
		done
		echo $flag
}
# declaring a method for getting palidrome Number;
isPalidrome(){
reverseNumber=0;
	while (( $number > 0 ))
	do
		remainder=$(($number%10))
      reverseNumber=$(( $reverseNumber*10 + $remainder ))
      number=$(($number/10))
	done
echo $reverseNumber
}
read -p "enter the number to check prime and Palindrome :" number
# calling isPrimeNumber function
# -1
CheckedNumber="$(isPrimeNumber $number)"
#PalindromeChecked=$((isPalidrome $number))
#PalidromePrimeNumber="$(isPrimeNumber $PalindromeChecked)"
if [ $CheckedNumber -eq 1 ]
then
echo "Number is Prime Number :"
PalindromeChecked="$(isPalidrome $number)" 
	if [ $PalindromeChecked -eq $number ]
	then
	echo "number is prime as well as Palindrome"
	else
		echo "number is prime but not palindrome"
	fi
else
	echo "number is not prime number :"
fi

