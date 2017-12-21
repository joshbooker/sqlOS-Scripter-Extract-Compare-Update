
call environment

sqlpackage.exe /a:Script /sf:%ProjectPath%\%DacPath%\%Source%_source.dacpac /tf:%ProjectPath%\%DacPath%\%Target%_target.dacpac /tdn:%Target% /op:%ProjectPath%\%SqlPath%\CompareUpdate_%CompareVersion%.sqlcmd.sql