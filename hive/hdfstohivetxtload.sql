hadoop fs -cat 03042021/external_file.csv
1,test,10
2,test2,20
3,test3,30


create EXTERNAL TABLE msk_test1.external_msk_test
(
id string,
name string,
age string)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
LOCATION '/user/saravananmsk1536/03042021/' ;


select * from msk_test1.external_msk_test;

-- create parquet table

create table msk_test1.msk_test1_parquet
(id string,
name string,
age string)
STORED AS PARQUET;

insert into msk_test1.msk_test1_parquet select * from msk_test1.external_msk_test;

describe formatted msk_test1.msk_test1_parquet


CREATE TABLE hbase_table_employee
  (
     id       INT,
     ename       STRING,
     age	int
  )
STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler'
WITH SERDEPROPERTIES ("hbase.columns.mapping" = ":key,cf:ename,cf:designation,cf:manager,cf:hire_date,cf:sal,cf:deptno")
TBLPROPERTIES ("hbase.table.name" = "employee_hbase");