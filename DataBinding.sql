create database DataBinding;

use DataBinding;

create table Provincias
(
ID int primary key identity not null,
Nombre varchar(50)
)
go

create table Localidades
(
ID int primary key identity not null,
IDProvincia int not null,
Nombre varchar(50),
constraint pertenece_a foreign key(IDProvincia) references Provincias(ID)
)
