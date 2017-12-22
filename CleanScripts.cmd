call environment
SET SourcePath=%ProjectPath%\%DbsPath%\%Source%
rem - delete all generated scripts in source db directory
del %SourcePath%\CreateDB_*.sql /q
del %SourcePath%\Tables\*.Table.sql /q
del %SourcePath%\Views\*.View.sql /q
del %SourcePath%\Procedures\*.StoredProcedure.sql /q
del %SourcePath%\Functions\*.UserDefinedFunction.sql /q