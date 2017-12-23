rem --load environ variables
call environment

rem --create dacpac for source database schema
sqlpackage.exe /a:Extract /scs:%SourceConnString% /tf:%SourceDacpac%
rem --create dacpac for target database schema
sqlpackage.exe /a:Extract /scs:%TargetConnString% /tf:%TargetDacpac%