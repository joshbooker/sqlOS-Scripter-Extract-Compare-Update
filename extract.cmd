call environment

sqlpackage.exe /a:Extract /scs:Server=%Server%;Database=%Source%;TRUSTED_CONNECTION=True; /tf:%ProjectPath%\%DacPath%\%Source%_source.dacpac

sqlpackage.exe /a:Extract /scs:Server=%Server%;Database=%Target%;TRUSTED_CONNECTION=True; /tf:%ProjectPath%\%DacPath%\%Target%_target.dacpac