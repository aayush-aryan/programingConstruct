#!/bin/bash -x
function myFunction() {
	return $1
 }
	myFunction $(( RANDOM ))
		return $?
	if [ $result -eq 1 ]
		then
		echo "success";
		else
			echo "failure";
fi
