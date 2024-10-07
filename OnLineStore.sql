use master;
go

create database OnLineStore;
go

use OnLineStore;
go

create table Departamentos
(
Id_Dep int identity not null,
Nombre varchar(25) not null,
Descrip varchar(250)
);
go

create table Productos
(
Id_Prod int identity not null,
Nombre varchar(50) not null,
Cantidad int not null,
Precio float not null,
Seleccionado bit
);
go

create table Clientes
(
Id_Client int identity not null ,
Doc_CLi varchar(15) not null,
Nombre varchar(50) not null,
Dir varchar(150),
Tlf varchar(25)
);
go

create table Ventas
(
Id_Venta int identity(1,1) not null,
Tot_Prod int not null,
Tot_Venta float not null
);
go

create table Pedido
(
Id_Pedido int identity(1,1) primary key not null,
Pedido varchar(10) not null
);
go

create table Carrito
(
Id_Pedido int not null,
Id_Prod int not null,
Nombre varchar(50) not null,
Cantidad_Item int not null,
Subtotal float not null
);
go



--MODIFICAR TABLAS

alter table Departamentos
add 
constraint PK_Id_Dep primary key(Id_Dep);
go

alter table Productos
add 
Id_Dep int,
constraint PK_Id_Prod primary key(Id_Prod),
constraint Pertenece_a foreign key(Id_Dep) references Departamentos(Id_Dep);
go

alter table Clientes
add
constraint PK_Id_Client primary key(Id_Client),
constraint DocUnico unique (Doc_cli);
go

alter table Ventas
add Id_Prod int not null,
Id_Client int not null,
constraint PK_Id_Venta primary key(Id_Venta),
constraint Compra_un foreign key (Id_Client) references Clientes(Id_Client),
constraint Es_comprado_por foreign key(Id_Prod) references Productos(Id_Prod);
go

alter table Carrito
add 
--constraint PK_carrito primary key(Id_Prod, Id_Pedido),
constraint Pedido_nro foreign key(Id_Pedido) references Pedido(Id_Pedido),
constraint Agregado_al_carrito foreign key(Id_Prod) references Productos(Id_Prod);
go

alter table Productos
add Seleccionado bit;

alter table Productos
add constraint DF_valor_default default null
for Seleccionado;

alter table Productos
drop constraint DF_valor_default; 

drop table Carrito;





exec sp_rename 'Productos.I_Prod','Id_Prod','column';



use master;
go

drop database OnLineStore;



select * from Departamentos;

SELECT TOP 1 Id_Dep FROM Departamentos ORDER BY Id_Dep DESC;

SELECT p.Id_Prod, p.Nombre, p.Cantidad, p.Precio, d.Nombre AS Departamento
FROM Productos p
INNER JOIN Departamentos d ON d.Id_Dep = p.Id_Dep;

select * from clientes

delete from Clientes where Id_Client = 1

alter table Clientes
drop constraint DocUnico;

alter table Clientes
alter column Doc_CLi varchar(15) not null;

alter table Clientes
add constraint DocUnico unique (Doc_CLi);

alter table Clientes
alter column Tlf varchar(25);

select * from Clientes;

delete from Clientes where Id_Client = 2

-- Luego, resetea el valor de la ID a 1
DBCC CHECKIDENT ('Clientes', RESEED, 0);

select * from Productos;

update Productos set Precio = 15.99 where Id_Prod = 7;

select Nombre from Clientes where Doc_Cli = '11666345';

select v.Id_Venta as Factura, c.Nombre as Nombre_Ciente, v.Tot_Prod as Total_Productos, v.Tot_Venta as Total_Venta from Ventas v inner join Clientes c on v.Id_Client = c.Id_Client

select * from Ventas;

insert into Ventas (Tot_Prod,Tot_Venta,Id_Prod, Id_Client) values(3,75,1,1);

alter table Ventas
drop column Cant_prod;

drop table Ventas;

insert into Pedido values('Realizado');

DBCC CHECKIDENT ('Pedido', RESEED, 0);

insert into Carrito values(1,2,'Plancha',2,30);

