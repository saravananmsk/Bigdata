-- table name listening_habits

create table listening_habits
(user_id int
,song_id int 
,listen_duration float);

--drop table lsitening_habits;

select * from listening_habits;
/*You're tasked with analyzing a Spotify-like dataset
that captures user listening habits.
For each user, calculate the total listening
time and the count of unique songs they've listened to. 
In the database duration values are displayed in seconds. 
Round the total listening duration to the nearest whole minute.

The output should contain three columns:
'user_id', 'total_listen_duration', and 'unique_song_count'.*/

/*user_id: int
song_id: int
listen_duration: float*/

select user_id 
,round((sum(listen_duration)/60),2) total_listen_duration
,count(distinct song_id) unique_song_count
from listening_habits
group by user_id
order by user_id

select object_id('song_listen_duration')

create or replace  procedure song_listen_duration 
as
v_count int;
begin
 select count(*) into v_count from all_objects where lower(object_name) ='song_listen_duration_tbl';
 if v_count >0 then
  execute immediate 'drop table song_listen_duration_tbl';
 end if;
execute immediate 'create table song_listen_duration_tbl as select user_id 
,round((sum(listen_duration)/60),2) total_listen_duration
,count(distinct song_id) unique_song_count
from listening_habits
group by user_id
order by user_id';
end;

execute song_listen_duration;

select * from song_listen_duration_tbl;

select * from song_listen_duration_tbl;
/




-- insert statements
user_id	song_id	listen_duration
insert into listening_habits values (101,	5001,	240);
insert into listening_habits values (101,5002,	0);
insert into listening_habits values (102,	5001,	300);
insert into listening_habits values (102,	5003,	0);
insert into listening_habits values (101,	5001,	240);
insert into listening_habits values (103,	5004,	180);
insert into listening_habits values (104,	5005,	360);
insert into listening_habits values (104,	5006,	0);
insert into listening_habits values (105,	5007,	210);
insert into listening_habits values (103,	5004,	180);
insert into listening_habits values (106,	5008,	200);
insert into listening_habits values (107,	5009,	220);
insert into listening_habits values (108,	5010,	250);
insert into listening_habits values (108,	5006,	260);
insert into listening_habits values (109,	5011,	0);

commit;
select * from lsitening_habits;
 