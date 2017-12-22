rem --load environ variables
call environment
rem --compare schema and create delta script called CompareUpdate_%CompareVersion%.sqlcmd.sql
sqlpackage.exe /a:Script /sf:%ProjectPath%\%DacPath%\%Source%_source.dacpac /tf:%ProjectPath%\%DacPath%\%Target%_target.dacpac /tdn:%Target% /op:%ProjectPath%\%SqlPath%\CompareUpdate_%CompareVersion%.sqlcmd.sql