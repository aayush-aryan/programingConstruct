#!/bin/bash -x
isPalindrome() {
     sum=0;
     num=$1;
     while (( $num>0 ))
     do
        rem=$(($num%10));
        sum=$(( $rem + $(( $sum * 10 )) ));
        num=$(( $num/10 ));
     done
     echo $sum;
}
read -p "Enter number: " number;
reverseNumber="$( isPalindrome $number )";
if [ $number -eq $reverseNumber ]
then
    echo $number is Palindrome
else
    echo $number is not Palindrome
fi
