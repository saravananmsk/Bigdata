#!/bin/bash

# Add MySQL to PATH
export PATH="$PATH:/c/Program Files/MySQL/MySQL Server 8.0/bin"

# MySQL executable (Git Bash path)
MYSQL="/c/Program Files/MySQL/MySQL Server 8.0/bin/mysql.exe"

# Execute SQL
"$MYSQL" -h localhost -u root -pmysqldev msk <<EOF
CREATE TABLE msktest2 (
    sno INT,
    name VARCHAR(50)
);
EOF
