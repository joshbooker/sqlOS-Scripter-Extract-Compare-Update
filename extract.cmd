rem --load environ variables
call environment
rem --create dacpac for source database schema
sqlpackage.exe /a:Extract /scs:Server=%Server%;Database=%Source%;TRUSTED_CONNECTION=True; /tf:%ProjectPath%\%DacPath%\%Source%_source.dacpac
rem --create dacpac for target database schema
sqlpackage.exe /a:Extract /scs:Server=%Server%;Database=%Target%;TRUSTED_CONNECTION=True; /tf:%ProjectPath%\%DacPath%\%Target%_target.dacpac