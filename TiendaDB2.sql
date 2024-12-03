create database Tiendas
go

use Tiendas
go

create table Clientes
(
IdCliente int not null identity(1,1)primary key,
Nombre varchar(50),
Direccion varchar(50),
Tenefono varchar(25)
);
go

create table Productos
(
IdProducto int not null identity(1,1)primary key,
Nombre varchar(50),
Cantidad int not null,
Precio float not null
);
go

create table Ventas
(
NroOperacion int not null identity(1,1)primary key,
Cliente int not null,
Producto int not null,
CantidadVendida int not null
);
go

alter table Ventas
add constraint Compra foreign key(Cliente) references Clientes(IdCliente);
go

alter table Ventas
add constraint SeVende foreign key(Producto) references Productos(IdProducto);
go

insert into Clientes values
('Orion Ra','El paraiso','04128060958'),
('Karol','El hatillo','555555555'),
('Pepe','Casalta','8893939399');
go

insert into Productos values
('Telefono',50,200),
('Computadora',30,599.99),
('Monitor',100,648.56);
go

insert into Ventas values
(1,3,15);

select * from Clientes
go

select * from Productos

CREATE TABLE Facturas
(
NroFactura int IDENTITY(1,1) NOT NULL PRIMARY KEY ,
	VentaConcretada bit NOT NULL
);