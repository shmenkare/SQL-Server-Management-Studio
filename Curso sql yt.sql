USE master;
GO

create database PracticaYT
on
primary
(
name = PracticaYT,
filename = 'F:\Mis Documentos\CURSOS\PROGRAMING\SQL\PRACTICE DATA BASES\PracticaYT.mdf',
size = 3mb,
maxsize = unlimited,
filegrowth = 1mb
)
log on  
(
name = PracticaYT_log,
filename = 'F:\Mis Documentos\CURSOS\PROGRAMING\SQL\PRACTICE DATA BASES\PracticaYT_log.ldf',
size = 3mb,
maxsize = 100mb,
filegrowth = 10%
);
go

use PracticaYT;
go

--create table empleado
--( 
--idEmpleado int,
--Nombre varchar(20),
--Puesto varchar(20)
--);
--go

/* Sentencias DML mas usadas
SELECT
INSERT
DELETE
UPDATE
   Sentencias DDL mas usadas
CREATE
DROP
ALTER */

--create table alumno
--( 
--idAlumno int primary key,
--Nombre varchar(20),
--Edad int
--);
--go

--create table Calificaciones
--( 
--idAlumno int primary key,
--Nombre varchar(20),
--Calificacion float
--);
--go 

insert into Calificaciones values(5, 'Eduardo', 7.6);

update Calificaciones set Nombre= 'Maria' where idAlumno=3;

delete from Calificaciones where idAlumno = 3;

select * from Calificaciones;