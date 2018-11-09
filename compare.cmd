rem --load environ variables
call environment

rem --compare schema and create delta script called Migration_%MigrationTag%.sqlcmd.sql
sqlpackage.exe /a:Script /sf:%SourceDacpac% /tf:%TargetDacpac% /tdn:%Target% /op:%OutFile%