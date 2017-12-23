rem --load environment variables
call environment
rem --execute delta script to update target database
sqlcmd -i "%ProjectPath%\%SqlPath%\CompareUpdate_%CompareVersion%.sqlcmd.sql"