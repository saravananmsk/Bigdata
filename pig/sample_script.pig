employee = LOAD '/home/hduser/Desktop/employee.txt' USING
PigStorage(',') as (id:int,name:chararray,age:int);
Dump employee;
