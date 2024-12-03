CREATE PROCEDURE ActualizaClientes

@Id_Cli int, @Nom_Cli varchar(100), @Ape_Cli varchar(100)

AS

IF NOT EXISTS (SELECT Id_Clientes FROM Cliente WHERE Id_Clientes = @Id_Cli)
INSERT INTO Cliente (Id_Clientes, Nom_Cli, Ape_Cli) VALUES (@Id_Cli, @Nom_Cli, @Ape_Cli)
ELSE
UPDATE Cliente SET Nom_Cli = @Nom_Cli, Ape_Cli = @Ape_Cli WHERE Id_Clientes = @Id_Cli
