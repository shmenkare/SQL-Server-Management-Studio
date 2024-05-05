CREATE DATABASE Tienda;
GO

USE Tienda;
GO

CREATE TABLE Productos
(
    id INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    Cantidad INT NOT NULL
);
GO

CREATE TABLE Clientes
(
    id INT NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(50) NOT NULL,
    telefono VARCHAR(50) NOT NULL,
);
GO

CREATE TABLE Ventas
(
    id INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
    idCliente INT NOT NULL,
    idProducto INT NOT NULL,
    Cantidad INT NOT NULL
);
GO

CREATE TABLE Vendedores
(
    id INT NOT NULL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);
GO

CREATE TABLE Vender
(
    id INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
    idVendedor INT NOT NULL,
    idProducto INT NOT NULL
)

ALTER TABLE Ventas 
ADD CONSTRAINT Vende FOREIGN KEY (idCliente) REFERENCES Clientes(id);
GO

ALTER TABLE Ventas 
ADD CONSTRAINT Obtiene FOREIGN KEY (idProducto) REFERENCES Productos(id);
GO

ALTER TABLE Vender 
ADD CONSTRAINT VendeProducto FOREIGN KEY (idVendedor) REFERENCES Vendedores(id);
GO

ALTER TABLE Vender 
ADD CONSTRAINT ObtieneProducto FOREIGN KEY (idProducto) REFERENCES Productos(id);
GO


--drop database Tienda

select * from Clientes
