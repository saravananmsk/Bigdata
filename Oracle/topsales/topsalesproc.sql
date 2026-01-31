create or replace procedure topsales as
--msk.fct_customer_sales
--msk.map_customer_territory
/* this project to
get the top sales in the company

Write a query to return Territory and corresponding Sales Growth. Compare growth between periods Q4-2021 vs Q3-2021.
If Territory (say T123) has Sales worth $100 in Q3-2021 and Sales worth $110 in Q4-2021,
then the Sales Growth will be 10% [ i.e. = ((110 - 100)/100) * 100 ]
Output the ID of the Territory and the Sales Growth. Only output these territories that had any sales in both quarters.*/

--select top 3 * from msk.fct_customer_sales;
--select top 3 * from .map_customer_territory;


--step1
v_count int;
begin
SELECT COUNT(*)
 INTO v_count
    FROM user_tables
    WHERE lower(table_name) = 'topsales_1'; -- Replace 'YourTableName' with the name of your table
    
    -- Drop the table if it exists
    IF v_count > 0 THEN
        EXECUTE IMMEDIATE 'DROP TABLE topsales_1'; -- Replace 'YourTableName' with the name of your table
    END IF;
    execute immediate 'create table topsales_1 as 
select fcs.cust_id,mct.territory_id, fcs.order_value,
	case when  EXTRACT(MONTH FROM fcs.order_date) between 7 and 9 and EXTRACT(YEAR FROM fcs.order_date)=2021 then ''Q3-2021''
		when EXTRACT(MONTH from fcs.order_date) between 10 and 12 and EXTRACT(YEAR FROM fcs.order_date)=2021 then ''Q4-2021''
		end order_date1 
	from fct_customer_sales fcs join map_customer_territory mct
	on fcs.cust_id=mct.cust_id';
    
SELECT COUNT(*)
    INTO v_count
    FROM user_tables
    WHERE lower(table_name) = 'topsales_2'; -- Replace 'YourTableName' with the name of your table
    
    -- Drop the table if it exists
    IF v_count > 0 THEN
        EXECUTE IMMEDIATE 'DROP TABLE topsales_2'; -- Replace 'YourTableName' with the name of your table
    END IF;

execute immediate 'create table topsales_2 as select ts.territory_id,
sum(case when order_date1 =''Q3-2021'' then order_value else 0 end) as Q3sales ,
sum(case when order_date1 =''Q4-2021'' then order_value else 0  end) as Q4sales  
from topsales_1 ts 
group by ts.territory_id';


SELECT COUNT(*)
    INTO v_count
    FROM user_tables
    WHERE lower(table_name) = 'topsales_3'; -- Replace 'YourTableName' with the name of your table
    
    -- Drop the table if it exists
    IF v_count > 0 THEN
        EXECUTE IMMEDIATE 'DROP TABLE topsales_3'; -- Replace 'YourTableName' with the name of your table
    END IF;

execute immediate 'create table topsales_3 as
select territory_id,Q3sales, Q4sales  from topsales_2 
where Q3sales >0 and Q4sales>0';



SELECT COUNT(*)
    INTO v_count
    FROM user_tables
    WHERE lower(table_name) = 'topsales_4'; -- Replace 'YourTableName' with the name of your table
    
    -- Drop the table if it exists
    IF v_count > 0 THEN
        EXECUTE IMMEDIATE 'DROP TABLE topsales_4'; -- Replace 'YourTableName' with the name of your table
    END IF;

execute immediate 'create table topsales_4 as select territory_id
, ROUND((CAST(Q4sales AS FLOAT) - Q3sales) / Q3sales * 100,2) as salesgrowth
from topsales_3';


end;
    





execute topsales;


--select * from topsales_4;
