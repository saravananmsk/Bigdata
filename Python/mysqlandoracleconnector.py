import mysql.connector

mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="mysqltest",
  database="msk"
)

mycursor = mydb.cursor()

sql = "INSERT INTO csvdataload1 (sno,name1,deptname,deptno) VALUES (%s,%s,%s,%s)"
val = ("1","Test1","Finance","10")
mycursor.execute(sql,val)

mydb.commit()

print(mycursor.rowcount, "record inserted.")

import pandas as pd
data=pd.read_csv("csvdataload.csv")
data.head()
print(data.head())

import cx_Oracle
connection_string = "system/oracle@xe"
connection = cx_Oracle.Connection(connection_string)
cursor = cx_Oracle.Cursor(connection)
sql = "INSERT INTO csvdataload1 VALUES (1,'Test1','Finance',10)"
cursor.execute(sql)
connection.commit()