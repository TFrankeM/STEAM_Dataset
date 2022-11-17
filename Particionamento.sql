/* Particionar banco de dados */

ALTER DATABASE [DBG8STEAM] ADD FILEGROUP Intervalo1

ALTER DATABASE [DBG8STEAM] ADD FILEGROUP Intervalo2

ALTER DATABASE [DBG8STEAM] ADD FILEGROUP Intervalo3

ALTER DATABASE [DBG8STEAM] ADD FILEGROUP Intervalo4

ALTER DATABASE [DBG8STEAM] ADD FILEGROUP Intervalo5


/* Inserir intervalos de dados nas partições */

CREATE PARTITION FUNCTION FunçãoPreço (INT)  
AS RANGE RIGHT FOR VALUES (100, 1000, 5000);  
GO  

CREATE PARTITION SCHEME EsquemaPreço  
AS PARTITION FunçãoPreço TO (Intervalo1, Intervalo2, Intervalo3, Intervalo4)


/* Relacionar cada intervalo a um arquivo compartilhado na conexão remota */

ALTER DATABASE [DBG8STEAM] ADD FILE (NAME = N'Intervalo1', FILENAME = N'E:\ArquivosCompartilhados\A2\Steam\Intervalo1.mdf', SIZE = 8192KB, MAXSIZE = 102400KB, FILEGROWTH = 5120KB) TO FILEGROUP [Intervalo1]
Go

ALTER DATABASE [DBG8STEAM] ADD FILE (NAME = N'Intervalo2', FILENAME = N'E:\ArquivosCompartilhados\A2\Steam\Intervalo2.mdf', SIZE = 8192KB, MAXSIZE = 102400KB, FILEGROWTH = 5120KB) TO FILEGROUP [Intervalo2]
Go

ALTER DATABASE [DBG8STEAM] ADD FILE (NAME = N'Intervalo3', FILENAME = N'E:\ArquivosCompartilhados\A2\Steam\Intervalo3.mdf', SIZE = 8192KB, MAXSIZE = 102400KB, FILEGROWTH = 5120KB) TO FILEGROUP [Intervalo3]
Go

ALTER DATABASE [DBG8STEAM] ADD FILE (NAME = N'Intervalo4', FILENAME = N'E:\ArquivosCompartilhados\A2\Steam\Intervalo4.mdf', SIZE = 8192KB, MAXSIZE = 102400KB, FILEGROWTH = 5120KB) TO FILEGROUP [Intervalo4]
Go

ALTER DATABASE [DBG8STEAM] ADD FILE (NAME = N'Intervalo5', FILENAME = N'E:\ArquivosCompartilhados\A2\Steam\Intervalo5.mdf', SIZE = 8192KB, MAXSIZE = 102400KB, FILEGROWTH = 5120KB) TO FILEGROUP [Intervalo5]
Go
