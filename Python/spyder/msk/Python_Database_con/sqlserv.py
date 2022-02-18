# -*- coding: utf-8 -*-
"""
Created on Fri Feb 18 00:26:06 2022

@author: Admin
"""

import pyodbc
conn = pyodbc.connect("Driver={SQL Server Native Client 11.0};"
                      "Server=localhost;"
                      "Database=master;"
                      "Trusted_Connection=yes;")

cursor = conn.cursor()
cursor.execute('SELECT * FROM msk.test1')

for row in cursor:
    print('row = %r' % (row,))