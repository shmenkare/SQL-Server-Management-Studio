CREATE PROCEDURE EliminarArticulos

    @Id_pro INT

as

DELETE FROM Articulo WHERE Id_pro = @Id_pro
