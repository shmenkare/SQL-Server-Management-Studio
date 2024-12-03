CREATE PROCEDURE EliminarCliente

    @Id_Cli INT

AS

DELETE FROM Cliente WHERE Id_Clientes = @Id_Cli
