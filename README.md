# SOS_ExtractCompareUpdate

[SQL Ops Studio](https://docs.microsoft.com/en-us/sql/sql-operations-studio/what-is) is a neat dev environment for SQL Server based on VSCode shell.  

I think of it like SQLOpsStudio is to SSMS as VSCode is to Visual Studio.

But what about the [SSDT tooling](https://msdn.microsoft.com/en-us/library/hh272686(v=vs.103).aspx) in Visual Studio?  Things like [Import Database](https://msdn.microsoft.com/en-us/library/hh864423(v=vs.103).aspx), Extract, Compare, Update Schema are wanting in SOS.

This simple project is to explore the command line capabilites for Extract, Compare, Update, Publish in the SOS terminal window using SSDT tools such as [SQLPackage.exe](https://msdn.microsoft.com/en-us/library/hh550080(v=vs.103).aspx) and [SQLCmd.exe](https://docs.microsoft.com/en-us/sql/tools/sqlcmd-utility).

Here is a suggestion to add such features to SOS:
[SSDT-style Import from database and sqlpackage.exe integration (extract, compare, update, publish, etc.)](https://github.com/Microsoft/sqlopsstudio/issues/389)

https://github.com/Microsoft/sqlopsstudio/issues/389


Clone this to a local folder
open in SOS
change paths and variables in environment.bat
in teminal cmd.exe
  execute Creatdbs
  change Databasename in /SQL/CreateDatabase.sqlcmd.sql
  execute CreateDbs again
  
  You now have two empty databases
  
  open Entity.sql and Execute on source database
  You now have a table called Entity in the source db
  
  now execute the following in terminal cmd.exe
    extract.cmd
    compare.cmd
    
  This will create dacpacs and a delta script showing the diffenece in schema between the two dbs
  
  exuecute update.cmd to apply the script
  
  now your databases are the same
  
  open and execute AlterTable.sql
  
  Change Update Version and then do 
    extract.cmd
    compare.cmd
    
Now you should have a new delta update script

execute update.cmd to apply the script

  
