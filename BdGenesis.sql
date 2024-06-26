/*
   miércoles, 24 de abril de 20241:54:48 a. m.
   Usuario: 
   Servidor: COMMANDER10
   Base de datos: BdGenesis
   Aplicación: 
*/

/* Para evitar posibles problemas de pérdida de datos, debe revisar este script detalladamente antes de ejecutarlo fuera del contexto del diseñador de base de datos.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Producto SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Vendedor
	DROP CONSTRAINT FK__Vendedor__Sucurs__398D8EEE
GO
ALTER TABLE dbo.Vendedor
	DROP CONSTRAINT FK__Vendedor__Direct__3A81B327
GO
ALTER TABLE dbo.Cliente
	DROP CONSTRAINT FK__Cliente__RepVent__3F466844
GO
ALTER TABLE dbo.Venta
	DROP CONSTRAINT FK__Venta__Vendedor__4316F928
GO
ALTER TABLE dbo.Sucursal
	DROP CONSTRAINT FK__Sucursal__Direct__45F365D3
GO
ALTER TABLE dbo.Vendedor ADD CONSTRAINT
	Director FOREIGN KEY
	(
	Director
	) REFERENCES dbo.Vendedor
	(
	DNI
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Vendedor SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Vendedor ADD CONSTRAINT
	Trabajan FOREIGN KEY
	(
	Sucursal
	) REFERENCES dbo.Sucursal
	(
	Codigo
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Sucursal ADD CONSTRAINT
	Dirige FOREIGN KEY
	(
	Director
	) REFERENCES dbo.Vendedor
	(
	DNI
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Sucursal SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Venta
	DROP CONSTRAINT FK__Venta__Cliente__4222D4EF
GO
ALTER TABLE dbo.Cliente ADD CONSTRAINT
	Atiende FOREIGN KEY
	(
	RepVentas
	) REFERENCES dbo.Vendedor
	(
	DNI
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Cliente SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Venta ADD CONSTRAINT
	Efectua FOREIGN KEY
	(
	Cliente
	) REFERENCES dbo.Cliente
	(
	DNI
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Venta ADD CONSTRAINT
	Realiza FOREIGN KEY
	(
	Vendedor
	) REFERENCES dbo.Vendedor
	(
	DNI
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Venta SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Detallev ADD CONSTRAINT
	Vdetalle FOREIGN KEY
	(
	Factura
	) REFERENCES dbo.Venta
	(
	Nrofactura
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Detallev ADD CONSTRAINT
	FK_Detallev_Producto FOREIGN KEY
	(
	MarcaP,
	ModeloP
	) REFERENCES dbo.Producto
	(
	Marca,
	Modelo
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Detallev SET (LOCK_ESCALATION = TABLE)
GO
COMMIT


