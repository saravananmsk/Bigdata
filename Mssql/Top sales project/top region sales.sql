drop table fct_customer_sales;

create table msk.fct_customer_sales(
cust_id varchar(10)
,prod_sku_id varchar(10)
,order_value int
,order_id varchar(10)
,order_date datetime );


create table msk.map_customer_territory(
cust_id varchar(4)
,territory_id varchar(2));



insert into msk.map_customer_territory values ('C273','T3');
insert into msk.map_customer_territory values ('C274','T3');
insert into msk.map_customer_territory values ('C275','T1');
insert into msk.map_customer_territory values ('C276','T1');
insert into msk.map_customer_territory values ('C277','T1');
insert into msk.map_customer_territory values ('C278','T2');
insert into msk.map_customer_territory values ('C279','T2');
insert into msk.map_customer_territory values ('C280','T4');
insert into msk.map_customer_territory values ('C281','T4');
insert into msk.map_customer_territory values ('C282','T4');
insert into msk.map_customer_territory values ('C283','T4');
insert into msk.map_customer_territory values ('C284','T5');
insert into msk.map_customer_territory values ('C285','T5');
insert into msk.map_customer_territory values ('C286','T3');
insert into msk.map_customer_territory values ('C287','T3');
 
 select count(*) from msk.fct_customer_sales;

insert into  msk.fct_customer_sales values ('C285','P472',899, 'O118','2021-06-30 00:00:00');
insert into  msk.fct_customer_sales values('C282','P487',500,'O125', '2021-07-02 00:00:00');
insert into  msk.fct_customer_sales values('C282','P476',999,'O146', '2021-07-07 00:00:00');
insert into  msk.fct_customer_sales values('C284','P487',500,'O149', '2021-07-12 00:00:00');
insert into  msk.fct_customer_sales values('C285','P478',700,'O150', '2021-07-13 00:00:00');
insert into  msk.fct_customer_sales values('C287','P489',189,'O151', '2021-07-15 00:00:00');
insert into  msk.fct_customer_sales values('C284','P482',725,'O156', '2021-07-19 00:00:00');
insert into  msk.fct_customer_sales values('C281','P482',725,'O164', '2021-07-22 00:00:00');
insert into  msk.fct_customer_sales values('C282','P480',300,'O172', '2021-07-23 00:00:00');
insert into  msk.fct_customer_sales values('C281','P477',1400,'O174','2021-07-26 00:00:00');
insert into  msk.fct_customer_sales values('C273','P487',500,'O181','2021-07-27 00:00:00');
insert into  msk.fct_customer_sales values('C287','P482',725,'O186','2021-07-30 00:00:00');
insert into  msk.fct_customer_sales values('C280','P482',725,'O190','2021-08-09 00:00:00');
insert into  msk.fct_customer_sales values('C282','P482',725,'O202','2021-08-10 00:00:00');
insert into  msk.fct_customer_sales values('C280','P475',1200,'O203','2021-08-11 00:00:00');
insert into  msk.fct_customer_sales values('C285','P487',500,'O219', '2021-08-12 00:00:00');
insert into  msk.fct_customer_sales values('C282','P486',420,'O228', '2021-08-12 00:00:00');
insert into  msk.fct_customer_sales values('C285','P479',1020,'O242','2021-08-13 00:00:00');
insert into  msk.fct_customer_sales values('C276','P477',1400,'O244','2021-08-18 00:00:00');
insert into  msk.fct_customer_sales values('C283','P476',999,'O246', '2021-06-28 00:00:00'   );
insert into  msk.fct_customer_sales values('C274','P474',1500,'O110','2021-08-18 00:00:00'   );
insert into  msk.fct_customer_sales values('C285','P474',1500,'O275','2021-08-19 00:00:00');
insert into  msk.fct_customer_sales values('C273','P482',725,'O276', '2020-08-19 00:00:00'   );
insert into  msk.fct_customer_sales values('C280','P474',1500,'O290','2021-08-23 00:00:00');
insert into  msk.fct_customer_sales values('C277','P480',300,'O293', '2021-08-30 00:00:00');
insert into  msk.fct_customer_sales values('C284','P482',725,'O313', '2021-08-31 00:00:00'   );
insert into  msk.fct_customer_sales values('C287','P479',1020,'O315','2021-09-08 00:00:00');
insert into  msk.fct_customer_sales values('C277','P484',899,'O322', '2021-09-10 00:00:00'   );
insert into  msk.fct_customer_sales values('C275','P479',1020,'O336','2021-09-13 00:00:00'   );
insert into  msk.fct_customer_sales values('C275','P475',1200,'O337','2021-09-13 00:00:00');
insert into  msk.fct_customer_sales values('C283','P482',725,'O368', '2021-09-14 00:00:00');
insert into  msk.fct_customer_sales values('C283','P486',420,'O371', '2021-09-20 00:00:00');
insert into  msk.fct_customer_sales values('C282','P482',725,'O381', '2021-09-23 00:00:00');
insert into  msk.fct_customer_sales values('C273','P487',500,'O385', '2021-10-01 00:00:00');
insert into  msk.fct_customer_sales values('C285','P472',899,'O398', '2021-10-04 00:00:00'   );
insert into  msk.fct_customer_sales values('C283','P475',1200,'O399','2021-10-04 00:00:00'   );
insert into  msk.fct_customer_sales values('C279','P479',1020,'O423','2021-10-06 00:00:00');
insert into  msk.fct_customer_sales values('C273','P472',899,'O430', '2021-10-06 00:00:00');
insert into  msk.fct_customer_sales values('C274','P476',999,'O438', '2021-10-08 00:00:00');
insert into  msk.fct_customer_sales values('C278','P478',700,'O445', '2021-10-11 00:00:00');
insert into  msk.fct_customer_sales values('C278','P472',899,'O487', '2021-10-12 00:00:00');
insert into  msk.fct_customer_sales values('C285','P486',420,'O500', '2021-10-15 00:00:00');
insert into  msk.fct_customer_sales values('C273','P487',500,'O513', '2021-10-18 00:00:00');
insert into  msk.fct_customer_sales values('C284','P489',189,'O518', '2021-10-19 00:00:00');
insert into  msk.fct_customer_sales values('C283','P486',420,'O523', '2021-10-22 00:00:00'   );
insert into  msk.fct_customer_sales values('C283','P477',1400,'O566','2021-10-25 00:00:00');
insert into  msk.fct_customer_sales values('C284','P472',899,'O567', '2021-10-29 00:00:00');
insert into  msk.fct_customer_sales values('C277','P482',725,'O571', '2021-11-03 00:00:00');
insert into  msk.fct_customer_sales values('C280','P482',725,'O599', '2021-11-04 00:00:00');
insert into  msk.fct_customer_sales values('C278','P480',300,'O618', '2021-11-05 00:00:00');
insert into  msk.fct_customer_sales values('C277','P489',189,'O620', '2021-11-09 00:00:00');
insert into  msk.fct_customer_sales values('C281','P482',725,'O626', '2021-11-11 00:00:00');
insert into  msk.fct_customer_sales values('C283','P480',300,'O645', '2021-11-15 00:00:00');
insert into  msk.fct_customer_sales values('C284','P487',500,'O657', '2021-11-19 00:00:00'   );
insert into  msk.fct_customer_sales values('C275','P479',1020,'O680','2021-11-22 00:00:00'   );
insert into  msk.fct_customer_sales values('C281','P479',1020,'O681','2021-11-22 00:00:00');
insert into  msk.fct_customer_sales values('C285','P480',300,'O713', '2021-11-23 00:00:00');
insert into  msk.fct_customer_sales values('C284','P476',999,'O728', '2011-11-24 00:00:00');
insert into  msk.fct_customer_sales values('C274','P485',629,'O745', '2021-11-25 00:00:00'   );
insert into  msk.fct_customer_sales values('C286','P474',1500,'O747','2021-11-26 00:00:00');
insert into  msk.fct_customer_sales values('C286','P484',899,'O752', '2021-11-29 00:00:00');
insert into  msk.fct_customer_sales values('C277','P472',899,'O776', '2021-11-30 00:00:00');
insert into  msk.fct_customer_sales values('C281','P484',899,'O788', '2021-12-01 00:00:00'   );
insert into  msk.fct_customer_sales values('C275','P474',1500,'O796','2021-12-03 00:00:00'   );
insert into  msk.fct_customer_sales values('C280','P475',1200,'O831','2021-12-10 00:00:00');
insert into  msk.fct_customer_sales values('C285','P480',300,'O834', '2021-12-13 00:00:00');
insert into  msk.fct_customer_sales values('C286','P487',500,'O835', '2021-12-15 00:00:00');
insert into  msk.fct_customer_sales values('C281','P476',999,'O844', '2021-12-15 00:00:00');
insert into  msk.fct_customer_sales values('C284','P486',420,'O853', '2021-12-16 00:00:00');
insert into  msk.fct_customer_sales values('C283','P478',700,'O858', '2021-12-16 00:00:00');
insert into  msk.fct_customer_sales values('C285','P489',189,'O881', '2021-12-20 00:00:00');
insert into  msk.fct_customer_sales values('C285','P484',899,'O887', '2021-12-20 00:00:00');
insert into  msk.fct_customer_sales values('C286','P489',189,'O893', '2021-12-24 00:00:00');
insert into  msk.fct_customer_sales values('C287','P485',629,'O906', '2021-12-24 00:00:00');
insert into  msk.fct_customer_sales values('C280','P477',1400,'O922','2021-12-31 00:00:00');
insert into  msk.fct_customer_sales values('C276','P478',700,'O951', '2022-01-03 00:00:00');
insert into  msk.fct_customer_sales values('C283','P486',420,'O963', '2022-01-11 00:00:00');
insert into  msk.fct_customer_sales values('C281','P489',189,'O991','2022-01-11 00:00:00');
