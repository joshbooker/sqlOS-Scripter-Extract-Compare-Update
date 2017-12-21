USE [master]
GO

:setvar DatabaseName "TEST2"
:setvar DefaultFilePrefix "TEST1"
:setvar DefaultDataPath "c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\"
:setvar DefaultLogPath "c:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
--USE [$(DatabaseName)];

CREATE DATABASE [$(DatabaseName)]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'$(DatabaseName)', FILENAME = N'$(DefaultDataPath)$(DatabaseName).mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'$(DatabaseName)_log', FILENAME = N'$(DefaultLogPath)$(DatabaseName).ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [$(DatabaseName)] SET  READ_WRITE 
GO

