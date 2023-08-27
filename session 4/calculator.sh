#! /bin/bash

choice=$1
first=$2
second=$3

echo 1. Addition $'\n'2. Subtraction $'\n'3. Multiplication $'\n'4. Division $'\n'5. Exit

while true
do
  read -p "Enter your choice: " choice

if [[ $choice != 5 ]]
then
	read -p "Enter the first number: " first
	read -p "Enter the second number: " second

	case $choice in
	1 )
		echo "$first + $second = $(($first + $second))"
                ;;
	2 )
                echo "$first - $second = $(($first - $second))"
                ;;
        3 )
                echo "$first * $second = $(($first * $second))"
                ;;
        4 )
                echo "$first / $second = $(($first / $second))"
		;;
	esac

else 
	echo Exiting...
	break
fi

done
