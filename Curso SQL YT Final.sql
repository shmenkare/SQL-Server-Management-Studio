USE master;
go
CREATE DATABASE golesfifa
ON PRIMARY
(
NAME = golesfifa,
FILENAME = 'F:\Mis Documentos\CURSOS\PROGRAMING\SQL\PRACTICE DATA BASES 11\golesfifa.mdf',
SIZE = 5MB,
MAXSIZE = UNLIMITED,
FILEGROWTH = 10%
);
GO

USE golesfifa;
GO

CREATE TABLE equipo
(
id_equipo int PRIMARY KEY,
nombre_e VARCHAR(30)
);
GO

CREATE TABLE jugador	
(
id_jugador int PRIMARY KEY,
nombre_j VARCHAR(50)
);
GO

CREATE TABLE contrato	
(
id_equipo int NOT NULL,
id_jugador int NOT NULL,
cantGoles int 
PRIMARY KEY(id_equipo,id_jugador),
FOREIGN KEY(id_equipo)REFERENCES equipo(id_equipo),
FOREIGN KEY(id_jugador)REFERENCES jugador(id_jugador)
);
GO

INSERT INTO equipo VALUES(1, 'REAL MADRID');
INSERT INTO equipo VALUES(2, 'BARCELONA');
INSERT INTO equipo VALUES(3, 'MANCHESTER UNITED');
INSERT INTO equipo VALUES(4, 'AC MILAN');
INSERT INTO equipo VALUES(5, 'JUVENTUS');

SELECT * FROM equipo;

INSERT INTO jugador VALUES(1, 'NEYMAR');
INSERT INTO jugador VALUES(2, 'MESSI');
INSERT INTO jugador VALUES(3, 'CRISTIANO');
INSERT INTO jugador VALUES(4, 'AGUERO');
INSERT INTO jugador VALUES(5, 'KANTE');

SELECT * FROM jugador;

INSERT INTO contrato VALUES(1,2,10);
INSERT INTO contrato VALUES(2,2,5);
INSERT INTO contrato VALUES(3,3,9); 
INSERT INTO contrato VALUES(5,4,10);
INSERT INTO contrato VALUES(5,1,3);

SELECT * FROM contrato;

SELECT nombre_j, nombre_e, cantGoles 
FROM jugador J, equipo E, contrato C
WHERE J.id_jugador = C.id_jugador
AND E.id_equipo = C.id_equipo
AND J.nombre_j = 'MESSI'
AND E.nombre_e = 'REAL MADRID';

