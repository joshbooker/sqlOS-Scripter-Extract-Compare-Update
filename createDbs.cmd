rem --load environment variables
call environment
rem --execute create database script
sqlcmd -i "%ProjectPath%\%SqlPath%\createDatabase.sqlcmd.sql"

