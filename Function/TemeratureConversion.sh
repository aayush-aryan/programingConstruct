#!/bin/bash -x
fahrenheightToCelcius(){
		degF=$1;
	degC=$(echo "scale=4; ($degF-32)*5/9;" | bc);
	echo $degC;
}
celciusToFarenheight() {
	degF=$1;
	degF=$(echo "scale=4; ($degC*9/5) +32;" | bc);
	echo $degF;
}
echo "press 1 for Farenheight to Celcius :"
echo "press 2 for Celcius to Farenheight :"
read -p "Enter the value" input;
degFToDegC=1;
degCToDegF=2;
	case $input in
			$degFToDegc) read -p "enter the value between 32F to 212F" degF;
		if [ $degF -gt 32 ] && [ $degF -lt 212 ]
		then
		degC="$( fahrenheightToCelcius $degF )"; # calling the function and storing its value
				echo "CelciusValue = "$degC C;
		else
			echo "Invalid Input";
		fi
      	;;
			$degCToDegF) read -p "enter the value b/w 0c to 100C" degC;
		if [ $degC -gt 0 ] && [ $degC -lt 100 ]
		then
		degF="$( celciusToFarenheight $degC );
			echo "FarenHeightValue= "$degF F;
      else
			echo "Invalid Input"
		fi
			;;
			*) echo "Invalid Input"
			;;
	esac
