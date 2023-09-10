#!/bin/bash

res=0

add() {
	res=$(($1 + $2))
}

sub() {
	res=$(($1 - $2))
}

mul() {
	res=$(($1 * $2))
}

div() {
	res=$(($1 / $2))
}

while :
do
	echo "Choose one operation:"
	echo "1 - Addition"
	echo "2 - Subtration"
	echo "3 - Multiplication"
	echo "4 - Division"
	
	read op
	
	echo -e "\nInform first operand:"
	read num1
	echo -e "\nInform second operand:"
	read num2
	echo -e "\nResult:"
	
	case $op in
		1) add $num1 $num2
		   echo "$num1 + $num2 = $res"
		;;
		2) sub $num1 $num2
		   echo "$num1 - $num2 = $res"
		;;
		3) mul $num1 $num2
		   echo "$num1 * $num2 = $res"
		;;
		4) div $num1 $num2
		   echo "$num1 / $num2 = $res"
		;;
	esac
done
