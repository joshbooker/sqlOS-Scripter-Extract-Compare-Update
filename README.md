# sqlOS-Scripter-Extract-Compare-Update

[SQL Ops Studio](https://docs.microsoft.com/en-us/sql/sql-operations-studio/what-is) is a neat dev environment for SQL Server based on VSCode shell.  

I think of it like SqlOpsStudio is to SSMS as VSCode is to Visual Studio.

But what about the [SSDT tooling](https://msdn.microsoft.com/en-us/library/hh272686(v=vs.103).aspx) in Visual Studio?  Things like [Import Database](https://msdn.microsoft.com/en-us/library/hh864423(v=vs.103).aspx), Extract, Compare, Update Schema are wanting in sqlOS.

This simple project is to explore the command line capabilites for Extract, Compare, Update, Publish in the sqlOS terminal window using [mssql-scripter](https://github.com/Microsoft/mssql-scripter/blob/dev/doc/usage_guide.md) and SSDT tools such as [SQLPackage.exe](https://msdn.microsoft.com/en-us/library/hh550080(v=vs.103).aspx) and [SQLCmd.exe](https://docs.microsoft.com/en-us/sql/tools/sqlcmd-utility).

Here is a suggestion to add such features to sqlOS:
[SSDT-style Import from database and sqlpackage.exe integration (extract, compare, update, publish, etc.)](https://github.com/Microsoft/sqlopsstudio/issues/389)

https://github.com/Microsoft/sqlopsstudio/issues/389
## **Prerequisites:**
- Install the following:
  - [SSDT DACFx](https://www.microsoft.com/en-us/download/details.aspx?id=56356)
  - [mssql-scripter](https://github.com/Microsoft/mssql-scripter/blob/dev/doc/installation_guide.md)

## **Setup:**

- Clone this repo to a local directory  
- Open the directory in sqlOS
- change paths and variables in `environment.bat`

## **Usage:**

### **Generate Create Scripts:**
- execute the following in cmd terminal
  - `Scripter.cmd`

Now you have one Create script per object in the source database organized in your project directory like so:
  - DATABASES
    - DatabaseName
      - Functions
        - `dbo.FunctionName.UserDefinedFunction.sql`
      - Procedures
        - `dbo.ProcedureName.StoredProcedure.sql`
      - Tables
        - `dbo.TableName.Table.sql`
      - View
        - `dbo.ViewName.View.sql`

**Swell!**

### **Extract, Compare, Update:** 
- execute the following in cmd terminal
  - `Createdbs.cmd`
  
You now have two empty databases.
  
- open `Entity.sql` and execute on source database

You now have a table called `Entity` in the source db.
  
- execute the following in cmd terminal
  - `extract.cmd`
  - `compare.cmd`
  
This will create dacpacs and a delta script called `CompareUpdate_%UpdateVersion%.sqlcmd.sql` showing the diffenece in schema between the two dbs.   
**Neat!**
  
- execute the following in cmd terminal
  - `update.cmd` 
  
This will apply the delta script to the target db.
Now your databases are the same.   
**Woot!**
  
- Open `AlterTable.sql` and execute on source database
- Change UpdateVersion variable in `environment.bat`
- execute the following in cmd terminal
  - `extract.cmd`
  - `compare.cmd`
  
Now you should have a new delta update script.

- execute the following in cmd terminal
  - `update.cmd` 

Now your databases are the same again.

If you extract and compare again you'll get a delta script that doesn't make any changes.
