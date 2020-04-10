#!/bin/ksh
#shell script to check whether entered number is even or odd
echo " Enter the number"
read a
if echo $a | grep -q "^[0-9]*$"
then 
echo " Entered number is $a"
b=`expr $a % 2`
echo "Value of b is $b"
if [ "$b" = 0 ]
then
echo " you have entered even number"
elif [ "$b" -ne 0 ]
then
echo " you have entered odd number"
fi
else
echo " please enter valid number"
fi