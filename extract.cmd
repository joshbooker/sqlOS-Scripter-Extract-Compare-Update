
SET PATH=%PATH%;"C:\Program Files (x86)\Microsoft SQL Server\130\DAC\bin"
SET Server=DESKTOP-R5ANG0N
SET DriveSpec=C:\
SET DacPath=SOURCE\SQLOps\LearningProject\DAC
SET Source=LEARNING
SET Target=LEARNING2

sqlpackage.exe /a:Extract /scs:Server=%Server%;Database=%Source%;TRUSTED_CONNECTION=True; /tf:%DriveSpec%\%DacPath%\%Source%_source.dacpac

sqlpackage.exe /a:Extract /scs:Server=%Server%;Database=%Target%;TRUSTED_CONNECTION=True; /tf:%DriveSpec%\%DacPath%\%Target%_target.dacpac