alter procedure msk.topsales as
--msk.fct_customer_sales
--msk.map_customer_territory
/* this project to
get the top sales in the company

Write a query to return Territory and corresponding Sales Growth. Compare growth between periods Q4-2021 vs Q3-2021.
If Territory (say T123) has Sales worth $100 in Q3-2021 and Sales worth $110 in Q4-2021,
then the Sales Growth will be 10% [ i.e. = ((110 - 100)/100) * 100 ]
Output the ID of the Territory and the Sales Growth. Only output these territories that had any sales in both quarters.*/

--select top 3 * from msk.fct_customer_sales;
--select top 3 * from msk.map_customer_territory;


--step1
if OBJECT_ID('msk.topsales_1','U') is not null
	drop table msk.topsales_1;
select fcs.cust_id,mct.territory_id, fcs.order_value,
	case when month(fcs.order_date) between 7 and 9 and year(fcs.order_date)=2021 then 'Q3-2021'
		when month(fcs.order_date) between 10 and 12 and year(fcs.order_date)=2021 then 'Q4-2021'
		end order_date1 into msk.topsales_1
	from msk.fct_customer_sales fcs join msk.map_customer_territory mct
	on fcs.cust_id=mct.cust_id;

if OBJECT_ID('msk.topsales_2','U') is not null
	drop table msk.topsales_2;
select ts.territory_id,
sum(case when order_date1 ='Q3-2021' then order_value else 0 end) as Q3sales ,
sum(case when order_date1 ='Q4-2021' then order_value else 0  end) as Q4sales  
into  msk.topsales_2
from msk.topsales_1 ts 
group by ts.territory_id 



if OBJECT_ID('msk.topsales_3','U') is not null
	drop table msk.topsales_3;
select territory_id,Q3sales, Q4sales into msk.topsales_3 from msk.topsales_2 
where Q3sales >0 and Q4sales>0;



if OBJECT_ID('msk.topsales_4','U') is not null
	drop table msk.topsales_4;
select territory_id
, ROUND((CAST(Q4sales AS FLOAT) - Q3sales) / Q3sales * 100,2) as salesgrowth
into msk.topsales_4 from msk.topsales_3;

go

execute msk.topsales;


select * from msk.topsales_4;
