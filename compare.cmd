
SET PATH=%PATH%;"C:\Program Files (x86)\Microsoft SQL Server\130\DAC\bin"
SET Server=DESKTOP-R5ANG0N
SET DriveSpec=C:\
SET DacPath=SOURCE\SQLOps\LearningProject\DAC
SET SQLPath=SOURCE\SQLOps\LearningProject\SQL
SET Source=LEARNING
SET Target=LEARNING2

sqlpackage.exe /a:Script /sf:%DriveSpec%\%DacPath%\%Source%_source.dacpac /tf:%DriveSpec%\%DacPath%\%Target%_target.dacpac /tdn:%Target% /op:%DriveSpec%\%SqlPath%\CompareUpdate.sql