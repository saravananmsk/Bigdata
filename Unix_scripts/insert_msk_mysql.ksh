#!/bin/bash
# insert records in mysql tables
export PATH=$PATH:"/c/Program Files/MySQL/MySQL Server 8.0/bin"
mysql="C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe" 
"$mysql" -h localhost -u root -p mysqldev msk << EOF
create table msktest2 (sno int, name varchar(50));
EOF
