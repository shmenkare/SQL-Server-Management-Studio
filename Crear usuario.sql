USE [PracticaYT]
GO
CREATE USER [Pedro] FOR LOGIN [BUILTIN\Usuarios]
GO
USE [PracticaYT]
GO
ALTER AUTHORIZATION ON SCHEMA::[db_datareader] TO [Pedro]
GO
USE [PracticaYT]
GO
EXEC sp_addrolemember N'db_datareader', N'Pedro'
GO
