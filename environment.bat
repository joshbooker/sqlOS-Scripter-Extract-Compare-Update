rem --add SSDT directory to PATH variable - this is the directory which contains sqlpackage.exe
SET PATH=%PATH%;"C:\Program Files (x86)\Microsoft SQL Server\130\DAC\bin"
rem --directory for mdf
SET DefaultDataPath="c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\"
rem --directory for ldf
SET DefaultLogPath="c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\"
rem --SQL Server Name
SET Server=DESKTOP-R5ANG0N
rem --Path of this project
SET ProjectPath=C:\SOURCE\SQLOps\LearningProject
rem --directory in project to output create scripts
SET DbsPath=DATABASES
rem --directory in project to output dacpac files
SET DacPath=DAC
rem --directory in project to output sql scripts
SET SQLPath=SQL
rem --sourece database name
SET Source=TEST1
rem --target database name
SET Target=TEST2
rem --version string for CompareUpdate Script file name
SET CompareVersion=2017-12-28