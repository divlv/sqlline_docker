# Dockerized Sqlline with MSSQL JDBC driver

This is Dockerized version of Sqlline commandline tool with built in MSSQL JDBC driver.

[Sqlline](https://github.com/julianhyde/sqlline) is a command-line utility for running SQL statements against relational databases via JDBC connection.

This image consists of:

* Base image: adoptopenjdk/openjdk11:jdk-11.0.3_7-slim
* SQLLine version: 1.9.0
* JDBC driver version: 8.2.2.jre11

# Usage

Let's execute SQL queries from `queries.sql` file, located in the current directory:

```
docker run --rm  -v $(pwd):/r dimedrol/sqlline:latest -u "jdbc:sqlserver://mssqlserver.example.com:1433;databaseName=mydatabase" -n "mydbuser@mssqlserver" -p "billy26lifespan93Haas" -f /r/queries.sql
```

* `/r` path used just to make command shorter
* Sample command above was tested on Azure MSSQL database service, so actual database login looks like `login@servername`


dimedrol/sqlline:latest