import cx_Oracle
with cx_Oracle.connect(user='system', password='oracle',
                       dsn="xe",
                       encoding="UTF-8") as connection:
    cursor = connection.cursor()
    cursor.execute("insert into test123 values (:1, :2)",
                   ( "Some string",20))
    connection.commit()