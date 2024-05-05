USE MusicListDB;

SELECT * FROM Temas;
SELECT * FROM Banda_interprete;
SELECT Id_Banda_interprete FROM Banda_interprete WHERE Nombre = 'Los 007';

INSERT INTO Temas VALUES(126,'perreo',2,8,2,'1091','Original',NULL,NULL,1,'03:25');

ALTER TABLE Temas ADD Duracion_tema VARCHAR(5);

ALTER TABLE Temas DROP COLUMN Duracion;

DELETE FROM Temas where Id_tema = 126;

UPDATE Temas SET Duracion = '03:58' WHERE Id_tema= 123;

DROP TABLE TemasLocales;
DROP TABLE TemasProyecto;
DROP TABLE ConfTemas;

CREATE TABLE TemasLocales
(
Id_local INT NOT NULL,
Id_tema INT NOT NULL,
PRIMARY KEY (Id_local, Id_tema),
FOREIGN KEY(Id_local)REFERENCES Locales(Id_local), 
FOREIGN KEY(Id_tema)REFERENCES Temas(Id_tema),
);

CREATE TABLE TemasProyecto
(
Id_proyecto INT NOT NULL,
Id_tema INT NOT NULL,
PRIMARY KEY(Id_proyecto,Id_tema),
FOREIGN KEY(Id_proyecto)REFERENCES Proyecto(Id_proyecto),
FOREIGN KEY(Id_tema)REFERENCES Temas(Id_tema),
);

CREATE TABLE ConfTemas
(
Id_Conf INT NOT NULL,
Id_tema INT NOT NULL,
PRIMARY KEY(Id_Conf,Id_tema),
FOREIGN KEY(Id_Conf)REFERENCES Config_Banda(Id_Conf),
FOREIGN KEY(Id_tema)REFERENCES Temas(Id_tema),
);

SELECT Temas.Nombre,Idiomas.Idioma from Temas, Idiomas where Idiomas.Idioma= 'Ingles';

ALTER TABLE Temas
ADD
FOREIGN KEY(Id_Banda_interprete) REFERENCES Banda_interprete(Id_Banda_interprete),
FOREIGN KEY(Id_genero) REFERENCES Generos(Id_genero),
FOREIGN KEY(Id_idioma) REFERENCES Idiomas(Id_idioma);

create table temas_new
(
Id_tema int not null identity,
Nombre varchar(50),
Id_Banda_interprete int not null,
Id_genero int not null,
Id_idioma int not null,
Año varchar(4),
Tonalidad varchar(10),
Programa_GT varchar(10),
Programa_VE varchar(10),
Tema_montado bit not null,
Duracion varchar(5)
);

INSERT INTO temas_new SELECT 
Nombre,Id_Banda_interprete,Id_genero,Id_idioma,
Año,Tonalidad,Programa_GT,Programa_VE,Tema_montado,Duracion FROM Temas;

create table Banda_interprete_new
(
Id_Banda_interprete int not null identity,
Banda_interprete varchar(25),
primary key(Id_Banda_interprete)
);

create table Generos_new
(
Id_genero int not null identity,
Genero varchar(25),
primary key(Id_genero)
);

create table Idiomas_new
(
Id_idioma int not null identity,
Idioma varchar(10),
primary key(Id_idioma)
);

create table Config_Banda_new
(
Id_Conf int not null identity,
Configuracion varchar(25),
primary key(Id_Conf)
);

create table Locales_new
(
Id_local int not null identity,
Nombre varchar(25),
primary key(Id_local)
);

create table Proyecto_new
(
Id_proyecto int not null identity,
NomProyecto varchar(25),
primary key(Id_proyecto)
);

insert into Banda_interprete_new select Banda_interprete from Banda_interprete;
insert into Generos_new select Genero from Generos;
insert into Idiomas_new select Idioma from Idiomas;
insert into Config_Banda_new select Configuracion from Config_Banda;
insert into Locales_new select Nombre from Locales;
insert into Proyecto_new select NomProyecto from Proyecto;

drop table Temas;
drop table Banda_interprete;
drop table Generos;
drop table Idiomas;
drop table Config_Banda;
drop table Locales;
drop table Proyecto;

exec sp_rename
Banda_interprete_new,
Banda_interprete

exec sp_rename
Generos_new,
Generos

exec sp_rename
Idiomas_new,
Idiomas

exec sp_rename
Config_Banda_new,
Config_Banda;

exec sp_rename
Locales_new,
Locales;

exec sp_rename
Proyecto_new,
Proyecto;






