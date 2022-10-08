#!/bin/sh
if [ -z $1 ] || [ -z $2 ]
then
	echo "Invalid input"
	exit 0
else
       	if [ $1 -le 0 ] || [ $2 -le 0 ]
	then
		echo "Input must be greater than 0"
		exit 0
	fi
fi

for i in $(seq 1 $1)
do
	for j in $(seq 1 $2)
	do
		result=`expr $i \* $j`
		printf "$i*$j=$result\t"
	done
	printf "\n"
done
exit 0
