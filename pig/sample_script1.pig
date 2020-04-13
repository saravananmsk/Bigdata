employee = LOAD 'hadoop://localhost:9000/pig1/test/employee.txt' USING
PigStorage(',') as (id:int,name:chararray,age:int);
Dump employee;
