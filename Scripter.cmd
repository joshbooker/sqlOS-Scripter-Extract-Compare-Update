call environment
rem doc - https://github.com/Microsoft/mssql-scripter/blob/dev/doc/usage_guide.md#examples

SET SourcePath=%ProjectPath%\%DbsPath%\%Source%
SET Options=--file-per-object --exclude-use-database --script-drop-create --display-progress --connection-string %SourceConnString%
SET Options2=--file-per-object --exclude-use-database --script-drop-create --check-for-existence --display-progress --connection-string %SourceConnString%
SET Options3=--exclude-use-database --display-progress --connection-string %SourceConnString%

md %SourcePath%

rem - script CREATE database
call mssql-scripter -f %SourcePath%\CreateDB_%Source%.sql %Options3%

rem - script Tables
call mssql-scripter -f %SourcePath%\Tables\ --include-types Table %Options%

rem - script Views
call mssql-scripter -f %SourcePath%\Views\ --include-types View %Options%

rem - script Procedures
call mssql-scripter -f %SourcePath%\Procedures\ --include-types StoredProcedure %Options%

rem - script Functions
call mssql-scripter -f %SourcePath%\Functions\ --include-types UserDefinedFunction %Options%