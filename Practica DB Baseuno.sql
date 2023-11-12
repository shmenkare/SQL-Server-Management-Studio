USE master;
go

CREATE DATABASE Baseuno
ON

PRIMARY 
(
NAME = Baseuno,
FILENAME = 'F:\Mis Documentos\CURSOS\PROGRAMING\SQL\PRACTICE DATA BASES\Baseuno.mdf',
SIZE = 3MB,
MAXSIZE = UNLIMITED,
FILEGROWTH = 1MB
)
LOG ON
(
NAME = Baseuno_log,
FILENAME = 'F:\Mis Documentos\CURSOS\PROGRAMING\SQL\PRACTICE DATA BASES\Baseuno_log.mdf',
SIZE = 1MB,
MAXSIZE = 100MB,
FILEGROWTH = 10%
);
go
ALTER DATABASE Baseuno
ADD FILE
(
NAME = Basedos,
FILENAME = 'F:\Mis Documentos\CURSOS\PROGRAMING\SQL\PRACTICE DATA BASES\Basedos.ndf',
SIZE = 3MB,
MAXSIZE = 200MB,
FILEGROWTH = 10%
);

ALTER DATABASE Baseuno
REMOVE FILE Basedos;

ALTER DATABASE Baseuno
MODIFY FILE
(
NAME = Baseuno, 
NEWNAME= Baseuno1
);

ALTER DATABASE Baseuno11
MODIFY NAME = Baseuno;

DROP DATABASE Baseuno;
