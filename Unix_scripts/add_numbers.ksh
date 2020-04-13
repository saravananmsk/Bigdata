#!/bin/ksh
echo " This is test program to add two numbers"
echo " first number"
read a
echo " second  number"
read b
c=`expr $a + $b`
echo " The vlue of c is $c"
echo "added additional line"
echo " additional line added to it"