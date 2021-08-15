# -*- coding: utf-8 -*-

import cx_Oracle
with cx_Oracle.connect(user='system', password='oracle',
                       dsn="xe",
                       encoding="UTF-8") as connection:
    cursor = connection.cursor()
    cursor.callproc('p_msk_insert');