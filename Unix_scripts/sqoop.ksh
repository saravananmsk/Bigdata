#!/bin/ksh
echo "enter target directory"
read a
date1=`date '+%Y%m%d%H%M%S'`
sqoop import --connect jdbc:mysql://cxln2.c.thelab-240901.internal/sqoopex --table msk_testtable1 --username sqoopuser --password NHkkP876rp --target-dir test01042020/sqoop/$a > log/sqooplog$date1 2>&1
