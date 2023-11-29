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

SELECT * FROM Calificaciones;

--OPERADORES

 /*
 = IGUALDAD
 < MENOR QUE
 > MAYOR QUE
 <= MAYOR IGUAL QUE
 >= MENOR IGUAL QUE
 != DIFERENTE DE
 <>
 */

SELECT * FROM Calificaciones WHERE Calificacion != 9;

 INSERT INTO Calificaciones VALUES(6, 'Marco', 7);
 INSERT INTO Calificaciones VALUES(7, 'Maria', 7.8);
 INSERT INTO Calificaciones VALUES(8, 'Ruben', 6.9);
 INSERT INTO Calificaciones VALUES(9, 'Daniel', 9);
 INSERT INTO Calificaciones VALUES(10, 'daniela', 8.5);

 --OPERADOR LIKE
SELECT * FROM Calificaciones WHERE Nombre LIKE 'M%';

--VALOR NULL
 INSERT INTO Calificaciones VALUES(11,NULL, 7);
SELECT * FROM Calificaciones WHERE Nombre IS NOT NULL;

SELECT * FROM Calificaciones WHERE Nombre IS NULL;

--DISTINCT
 INSERT INTO Calificaciones VALUES(13, 'Pedro', 8);
SELECT DISTINCT Calificacion FROM Calificaciones;

--OPERADOR AND Y OR NOT

SELECT * FROM Calificaciones WHERE Nombre = 'Daniela' AND Calificacion < 9;
SELECT * FROM Calificaciones WHERE Nombre = 'Daniela' OR Calificacion > 9;
SELECT * FROM Calificaciones WHERE NOT Nombre = 'Daniela';

--COMANDO BETWEEN

SELECT * FROM Calificaciones; 

SELECT * FROM Calificaciones WHERE Calificacion BETWEEN 6 AND 8 AND NOT Nombre = 'Pedro';

--COMNANDO ORDE BY

SELECT * FROM Calificaciones ORDER BY Calificacion ASC; 
SELECT * FROM Calificaciones ORDER BY Calificacion DESC; 

-- ALIAS

SELECT idAlumno AL, Nombre NM, Calificacion CAL FROM Calificaciones CAL WHERE CAL.Nombre = 'RUBEN';

-- TRUNCATE

INSERT INTO empleado VALUES(1,'Daniel','Director');
INSERT INTO empleado VALUES(2,'Uriel','SubDirector');
INSERT INTO empleado VALUES(3,'Martin','Gerente');
INSERT INTO empleado VALUES(3,'Rosa','Gerente');
INSERT INTO empleado VALUES(3,'Martha','Gerente');

SELECT * FROM empleado;

TRUNCATE TABLE empleado;

--DROP
DROP TABLE empleado;

USE master;

DROP DATABASE PracticaYT;
