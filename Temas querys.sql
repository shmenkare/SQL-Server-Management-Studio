use MusicListDB;

select * from temas where Genero = 2;

update temas set Proyecto = 1 where Proyecto = 2;

select Nombre, NomProyecto from Temas JOIN Proyecto ON Nombre = 'Sanitarios';

SELECT Nombre, NomProyecto FROM Temas JOIN Proyecto ON Id_proyecto = 2;