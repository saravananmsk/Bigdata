#!/bin/ksh
# insert records in mysql tables
mysql -h XXXX -u XXXXX -pXXXXX databasename << EOF
create table msktest2 (sno int, name varchar(50));
EOF