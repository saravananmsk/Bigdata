# Import your libraries
import pyspark
from pyspark.sql import SparkSession
spark = SparkSession.builder \
    .appName("Spark SQL with DataFrame") \
    .getOrCreate()
# Start writing code
fct_customer_sales
map_customer_territory


result1=fct_customer_sales.select('cust_id').limit(2);
result=fct_customer_sales.limit(2)

fct_customer_sales.createOrReplaceTempView('fct_customer_sales')
map_customer_territory.createOrReplaceTempView('map_customer_territory')
resultsql=spark.sql( "select SUBSTRING('order_id', 1, 3) AS ExtractString ,length(order_value) from fct_customer_sales")

#resultsql= spark.sql("select territory_id, sum(order_value)  from fct_customer_sales fct full outer join map_customer_territory mct on fct.cust_id=mct.cust_id group by territory_id  having sum(order_value) >6500")

#where order_value>1300 and order_id='O174'")

#resultsql = spark.sql("SELECT * FROM fct_customer_sales WHERE order_value > 1300 AND order_id = 'O174'")

resultsql.toPandas()

# To validate your solution, convert your final pySpark df to a pandas df
#result1.toPandas()
#result.toPandas()