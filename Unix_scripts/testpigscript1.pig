A = LOAD 'test01042020/pig/pigtest.txt' using PigStorage(' ') as (FName: chararray, MobileNo: chararray, City: chararray, Profession: chararray);
 
B = FOREACH A generate FName, Profession;
 
DUMP B;
