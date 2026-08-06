#!/bin/ksh
# insert records in mysql tables
mysql -h localhost -u root -pmysqltest << EOF
create database msk2
