use master;
go

create database MusicListBD;

use MusicListBD;

create table temas
(
    Id_tema int identity(1,1) not null,
    Nombre varchar(50),
    Id_Banda_interprete int not null,
    Id_genero int not null,
    Id_idioma int not null,
    Año varchar(4),
    Tonalidad varchar(10),
    Programa_GT varchar(10),
    Programa_VE varchar(10),
    Tema_montado bit not null,
    Duracion varchar(5),
    constraint PK_Temas primary key (Id_tema),
    constraint Es_tocado_por foreign key (Id_Banda_interprete) references Banda_interprete(Id_Banda_interprete),
    constraint Pertenece_a foreign key (Id_genero) references Generos(Id_genero),
    constraint Se_Canta_en foreign key (Id_idioma) references Idiomas(Id_idioma)
);
go

create table Banda_interprete
(
    Id_Banda_interprete int identity(1,1) not null,
    Nombre varchar(25),
    constraint PK_Banda_interprete primary key (Id_Banda_interprete)
);
go

create table Config_Banda
(
    Id_Conf int identity(1,1) not null,
    Configuracion varchar(25),
    constraint PK_Config_Banda primary key (Id_Conf)
);
go

create table Generos
(
    Id_genero int identity(1,1) not null,
    Genero varchar(25),
    constraint PK_Generos primary key (Id_genero)
);
go

create table Idiomas
(
    Id_idioma int identity(1,1) not null,
    Idioma varchar(10),
    constraint PK_Idiomas primary key (Id_idioma)
);
go

create table Locales
(
    Id_local int identity(1,1) not null,
    Local varchar(25),
    constraint PK_Locales primary key (Id_local)
);
go

create table Proyecto
(
    Id_proyecto int identity(1,1) not null,
    Proyecto varchar(25),
    constraint PK_Proyecto primary key (Id_proyecto)
);
go

create table TemasLocales
(
    Id_TemasLocales int identity(1,1) not null,
    Id_local int not null,
    Id_tema int not null,
);
go

create table TemasPorBanda
(
    Id_TemasPorBanda int identity(1,1) not null,
    Id_Conf int not null,
    Id_tema int not null
);
go

create table TemasProyecto
(
    Id_TemasProyecto int identity(1,1) not null,
    Id_proyecto int not null,
    Id_tema int not null
);
go