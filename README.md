# SOS_ExtractCompareUpdate

[SQL Ops Studio](https://docs.microsoft.com/en-us/sql/sql-operations-studio/what-is) is a neat dev environment for SQL Server based on VSCode shell.  

I think of it like SQLOpsStudio is to SSMS as VSCode is to Visual Studio.

But what about the [SSDT tooling](https://msdn.microsoft.com/en-us/library/hh272686(v=vs.103).aspx) in Visual Studio?  Things like [Import Database](https://msdn.microsoft.com/en-us/library/hh864423(v=vs.103).aspx), Extract, Compare, Update Schema are wanting in SOS.

This simple project is to explore the command line capabilites for Extract, Compare, Update, Publish in the SOS terminal window using SSDT tools such as [SQLPackage.exe](https://msdn.microsoft.com/en-us/library/hh550080(v=vs.103).aspx) and [SQLCmd.exe](https://docs.microsoft.com/en-us/sql/tools/sqlcmd-utility).
