create table EXTERNAL TABLE external_msk_employee_parquet
(
id string,
name string,
occupation string,
age string)
STORED AS PARQUET LOCATION '/test02042021/sqoop' ; 