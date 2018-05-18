rem --load environment variables
call environment
rem --execute delta script to update target database
sqlcmd -S %TargetServer% -i "%OutFile%"