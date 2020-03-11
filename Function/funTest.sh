#!/bin/bash -x
function myfunc() {
if [ $1 -eq  1]
then
	echo $1
}
result="$( myfunc $((RANDOM%2)) )"
if [ $result -eq 1 ]
then
	echo success
else
	echo failure
fi
