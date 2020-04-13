#!/bin/ksh
# insert records in mysql tables
# Replace xxxx with host name user ,password and database name
mysql  -u XXXX -pXXXX XXXX << EOF
create table msktest3 (sno int, name varchar(50));
insert into msktest3 values (1, 'test1');
EOF