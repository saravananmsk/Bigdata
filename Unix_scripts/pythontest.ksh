#!/bin/ksh
echo "pyhtontest execution started"
python pythontest.py
echo "pythontest execution completed"
echo "perl test started"
perl perltest.pl
echo "perl test completed"
echo "Java program started"
javac Simple.java
java Simple
echo "Java program completed"
echo " Execute the awk"
sh ./awktest.ksh
echo " execution of awk completed"
echo "Execute the sed test"
sh ./sedtest.ksh
echo " Execute the sed test completed"
echo "\n"
echo " To execute the C program in unix shell"
gcc sampleprogram.c -o sampleprogram
./sampleprogram
echo " Execution of the C program completed in unix shell"
echo " To execute the C++ program in unix shell"
g++ -o hello hello.cpp
./hello
echo "Execution of C++ program completed in unix shell"
