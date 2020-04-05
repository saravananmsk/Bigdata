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
echo "import data from mysql to hdfs"
sh sqoop.ksh > sqoopimportlog.log
echo " sqoop import completed"
echo " hive command execution"
hive -e "create table msk_test1.hiveunixtest(sno int, name varchar(30))" > hivelog 2<&1;
echo "hive command execution completed"
echo " scala  program execution started"
scala HelloWorld.scala
echo "scala program execution completed"
echo " hbase program execution started"
sh hbase.ksh
echo "hbase program execution completed"
echo "pig progra, execution started"
pig testpigscript.pig > piglog 2>&1
echo "pig program execution completed"
