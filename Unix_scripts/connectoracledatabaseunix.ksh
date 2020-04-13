#!/bin/ksh
#This script is written to test connectivity with oracle database
sqlplus system/oracle@xe <<EOF
create table test_10_Dec_18 (sno number, name varchar2(50));
insert into test_10_Dec_18 values  (1,'test1');
commit;
EOF