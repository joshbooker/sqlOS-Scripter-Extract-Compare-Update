rem --add DACFx directory to PATH variable - this is the directory which contains sqlpackage.exe
SET PATH="C:\SqlPackage";%PATH%;
rem --directory for mdf
SET DefaultDataPath="c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\"
rem --directory for ldf
SET DefaultLogPath="c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\"
rem --SQL Server Name
SET SourceServer=(local)
rem --SQL Server Name
SET TargetServer=(local)
rem --Path of this project
SET ProjectPath=C:\SOURCE\SQLOps\TestProject
rem --directory in project to output create scripts
SET DbsPath=DATABASES
rem --directory in project to output dacpac files
SET DacPath=DAC
rem --directory in project to output sql scripts
SET SQLPath=MIGRATIONS
rem --sourece database name
SET Source=TEST1
rem --target database name
SET Target=TEST4
rem --version string for Migration Script file name
SET MigrationTag=2018-11-10

SET SourceConnString=Server=%SourceServer%;Database=%Source%;TRUSTED_CONNECTION=True;
SET TargetConnString=Server=%TargetServer%;Database=%Target%;TRUSTED_CONNECTION=True;
SET SourceDacpac=%ProjectPath%\%DacPath%\%Source%_source.dacpac
SET TargetDacpac=%ProjectPath%\%DacPath%\%Target%_target.dacpac
SET OutFile=%ProjectPath%\%SqlPath%\%Target%_Migration_%MigrationTag%.sqlcmd.sql