use master;
go

create database Administracion
on
primary
(
name = Administracion,
filename = 'F:\Mis Documentos\CURSOS\PROGRAMING\SQL\PRACTICE DATA BASES\Administracion.mdf',
size = 3mb,
maxsize = unlimited,
filegrowth = 1mb
)
log on
(
name = Administracion_log,
filename = 'F:\Mis Documentos\CURSOS\PROGRAMING\SQL\PRACTICE DATA BASES\Administracion_log.ldf',
size = 3mb,
maxsize = 100mb,
filegrowth = 10%
);
go

use Administracion;
go

create table cliente
(
id_clientes int,
Nom_cli varchar(50),
Ape_cli varchar(50)
);
go

create table Articulo
(
id_pro int,
Nom_pro varchar(50),
Precio float
);
go

create table Usuarios
(
id_usuario int not null,
Nom_usu varchar(50),
account varchar(50),
password varchar(50)
);
go

insert into Usuarios values(1,'Pedro','pedro01','123456');
go

insert into Usuarios values(2,'Juan','juan01','123');