USE [master]

-- ALTER DATABASE [kartaplavkitest_KN] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
-- GO

RESTORE DATABASE [kartaplavkitest_KN] 
FROM  DISK = N'\\srv1c-test-spb2\backup\baza.bak' 
WITH  FILE = 1,  
MOVE N'karta_plavki' TO N'D:\MSSQL\Data\kartaplavkitest_KN.mdf',  
MOVE N'karta_plavki_log' TO N'D:\MSSQL\Data\kartaplavkitest_KN_log.ldf',  
NOUNLOAD,  REPLACE,  STATS = 10
GO

-- ALTER DATABASE [kartaplavkitest_KN] SET MULTI_USER WITH ROLLBACK IMMEDIATE
-- GO
