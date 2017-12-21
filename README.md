# SOS_ExtractCompareUpdate

[SQL Ops Studio](https://docs.microsoft.com/en-us/sql/sql-operations-studio/what-is) is a neat dev environment for SQL Server based on VSCode shell.  

I think of it like SQLOpsStudio is to SSMS as VSCode is to Visual Studio.

But what about the [SSDT tooling](https://msdn.microsoft.com/en-us/library/hh272686(v=vs.103).aspx) in Visual Studio?  Things like [Import Database](https://msdn.microsoft.com/en-us/library/hh864423(v=vs.103).aspx), Extract, Compare, Update Schema are wanting in SOS.

This simple project is to explore the command line capabilites for Extract, Compare, Update, Publish in the SOS terminal window using SSDT tools such as [SQLPackage.exe](https://msdn.microsoft.com/en-us/library/hh550080(v=vs.103).aspx) and [SQLCmd.exe](https://docs.microsoft.com/en-us/sql/tools/sqlcmd-utility).

Here is a suggestion to add such features to SOS:
[SSDT-style Import from database and sqlpackage.exe integration (extract, compare, update, publish, etc.)](https://github.com/Microsoft/sqlopsstudio/issues/389)

https://github.com/Microsoft/sqlopsstudio/issues/389

##How To:
-Clone this repo to a local folder
-Open the directory in SOS
-change paths and variables in environment.bat
-in cmd terminal:
--execute 'Creatdbs.cmd'
--change DatabaseName in /SQL/CreateDatabase.sqlcmd.sql
--execute CreateDbs.cmd again
You now have two empty databases
  
-open Entity.sql and execute on source database
You now have a table called Entity in the source db
  
-execute the following in cmd terminal
--`extract.cmd`
--`compare.cmd`
This will create dacpacs and a delta script called 'CompareUpdate_%UpdateVersion%.sqlcmd.sql showing the diffenece in schema between the two dbs. Swell!
  
  -In cmd terminal, execute `update.cmd` to apply the delta script to the target db
  Now your databases are the same.  Woot!
  
  -Open and execute AlterTable.sql
  
-Change UpdateVersion in environment.bat
-Then execute the following in cmd terminal
--`extract.cmd`
--`compare.cmd`
Now you should have a new delta update script

-execute update.cmd to apply the script

  
