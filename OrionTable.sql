use master;
go

create database Orion
on
primary
(
name = Orion,
filename = 'F:\Mis Documentos\CURSOS\PROGRAMING\SQL\PRACTICE DATA BASES\Orion.mdf',
size = 3mb,
maxsize = unlimited,
filegrowth = 1mb
)
log on
(
name = Orion_log,
filename = 'F:\Mis Documentos\CURSOS\PROGRAMING\SQL\PRACTICE DATA BASES\Orion_log.ldf',
size = 1mb,
maxsize = 100mb,
filegrowth = 10%
);
go
use Orion;

create table usuario 
(
id_usuario int not null,
nombre varchar(50) not null,
cargo varchar(50) not null,
);
go
insert into usuario values (1, 'Orion Ra', 'CEO');
go
insert into usuario values (2, 'Shmenkare', 'DIR');
go

create table productos 
(
id_product int not null,
nombre varchar(50) not null,
precio int,
);
go
insert into productos values (1, 'GUITARRA IBANEZ', '1500');
go
insert into productos values (2, 'PEDALERA BOSS', '800');

insert into productos values(3,'Bajo fender','2000');

insert into usuarios values(4,'Juan','obrero');
go
SELECT * FROM usuarios;
go
select * from productos;
go

