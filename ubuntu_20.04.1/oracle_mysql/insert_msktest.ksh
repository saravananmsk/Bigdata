#!/bin/ksh
# insert records in mysql tables
mysql -h localhost -u root -pmysqltest msk2 << EOF
create table msktest2 (sno int, name varchar(50));
