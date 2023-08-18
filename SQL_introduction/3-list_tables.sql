-- Write a script that lists all the tables of a database in your MySQL server.
#!/bin/bash

# Check if a database name is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <database_name>"
    exit 1
fi

# Get the database name from the first argument
database_name=$1

# MySQL command to list tables in the specified database
mysql -u your_username -p -e "USE $database_name; SHOW TABLES;"
