-- To load the file from local to hdfs 
-- To access data using hive by creating external table
--- To skip the header from the file while loading the data in hive
--To create external table 
-- To create schema


csvtestfile.txt
user_name|id|loc|ots|
user_CBS|Idfs|Cnts|Hgt
gag256|62156254196|HJSD|Xcz
ghw722|71575621689|BSGS|X06
kiw22w|73531818189|HSGK|X62
jughew|67126771671|NSGH|X23
31dshs|91265635716|HJSD|X12
hdhj6w|71251615426|KJSH|X16
ksdh80|91673287761|NSHS|X11


hdfs dfs -mkdir hivetestcsv

hdfs dfs -put csvtestfile.txt hivetestcsv/
create schema if not exists bdp;

CREATE EXTERNAL TABLE IF NOT EXISTS bdp.rm_hd_table1
     (u_name STRING,
     idf BIGINT,
     Cn STRING,
     Ot STRING)     
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
LOCATION '/user/saravananmsk1536/hivetestcsv/' ;


CREATE EXTERNAL TABLE IF NOT EXISTS bdp.rm_hd_table1_rmhdr
     (u_name STRING,
     idf BIGINT,
     Cn STRING,
     Ot STRING)     
ROW FORMAT DELIMITED FIELDS TERMINATED BY '|'
LINES TERMINATED BY '\n'
LOCATION '/user/saravananmsk1536/hivetestcsv/' 
TBLPROPERTIES("skip.header.line.count"="2");

