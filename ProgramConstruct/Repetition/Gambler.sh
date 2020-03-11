#!/bin/bash -x
cash=100;
goal=200;
bets=0;
win=0;
while (( $cash>0 && $cash<$goal ))
	do
	if [ $((RANDOM%2)) -eq 1 ]
		then
				((cash++));
   			((win++));
		else
				((cash--));
fi
     		((bets++));
done
echo "Number Of times won the bets : $win"
echo "Number of bets : $bets"
