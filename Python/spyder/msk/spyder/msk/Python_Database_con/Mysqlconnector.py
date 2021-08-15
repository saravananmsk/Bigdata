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
