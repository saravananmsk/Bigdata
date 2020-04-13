import mysql.connector

mydb = mysql.connector.connect(
  host="cxln2.c.thelab-240901.internal",
  user="sqoopuser",
  passwd="NHkkP876rp",
  database="sqoopex"
)

mycursor = mydb.cursor()

sql = "INSERT INTO msk_test1 (sno) VALUES (%s)"
val = ("1")
mycursor.execute(sql,(val,))

mydb.commit()

print(mycursor.rowcount, "record inserted.")
