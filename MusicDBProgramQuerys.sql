USE MusicListDB;

SELECT * FROM Temas;
SELECT * FROM Config_Banda;
SELECT * FROM Proyecto;

--Temas por idioma

SELECT t.Nombre, bi.Nombre Banda, g.Genero, i.Idioma, Año, Tonalidad, Programa_GT, Programa_VE, Tema_montado, Duracion 
FROM Temas t JOIN Banda_interprete bi ON t.Id_Banda_interprete = bi.Id_Banda_interprete 
JOIN Generos g ON t.Id_genero = g.Id_genero
JOIN Idiomas i ON T.Id_idioma = I.Id_idioma
WHERE T.Id_idioma = 2;

--Temas por Banda/Interprete

SELECT t.Nombre, bi.Nombre Banda, g.Genero, i.Idioma, Año, Tonalidad, Programa_GT, Programa_VE, Tema_montado, Duracion 
FROM Temas t JOIN Banda_interprete bi ON t.Id_Banda_interprete = bi.Id_Banda_interprete 
JOIN Generos g ON t.Id_genero = g.Id_genero
JOIN Idiomas i ON T.Id_idioma = I.Id_idioma
WHERE bi.Nombre = 'U2';

--Temas por Conf de banda

SELECT t.Nombre, bi.Nombre Banda, g.Genero, i.Idioma, Año, Tonalidad, Programa_GT, Programa_VE, Tema_montado, Duracion 
FROM Temas t JOIN Banda_interprete bi ON t.Id_Banda_interprete = bi.Id_Banda_interprete 
JOIN Generos g ON t.Id_genero = g.Id_genero
JOIN Idiomas i ON T.Id_idioma = I.Id_idioma
JOIN TemasPorBanda tb ON tb.Id_tema = t.Id_tema
JOIN Config_Banda cb ON cb.Id_Conf = tb.Id_Conf
WHERE cb.Configuracion = 'Trio';

--Temas por proyecto

SELECT t.Nombre, bi.Nombre Banda, g.Genero, i.Idioma, Año, Tonalidad, Programa_GT, Programa_GT, Tema_montado, Duracion
FROM Temas t JOIN Banda_interprete bi ON t.Id_Banda_interprete = bi.Id_Banda_interprete
JOIN Generos g ON t.Id_genero = g.Id_genero
JOIN Idiomas i ON t.Id_idioma = i.Id_idioma
JOIN TemasProyecto tp ON t.Id_tema = tp.Id_tema 
JOIN Proyecto p ON tp.Id_proyecto = p.Id_proyecto 
WHERE p.Nombre = 'Quinta Esencia';

--Transaccion delete

BEGIN TRANSACTION;
DELETE FROM TemasPorBanda WHERE Id_tema = 136;
DELETE FROM TemasProyecto WHERE Id_tema = 136;
DELETE FROM TemasLocales WHERE Id_tema = 136;
DELETE FROM Temas WHERE Id_tema = 136;
COMMIT;

--Transaccion Insert

begin transaction;

insert into Temas values ('Master',1,1,1,'1999','D menor','GT1', 'VE1',1,'03:15');

DECLARE @Id_tema INT;
SET @Id_tema = SCOPE_IDENTITY();

INSERT INTO TemasLocales (Id_local, Id_tema)
VALUES (2, @Id_tema);

INSERT INTO TemasPorBanda (Id_Conf, Id_tema)
VALUES (2, @Id_tema);

INSERT INTO TemasProyecto (Id_proyecto, Id_tema)
VALUES (2, @Id_tema);

commit;

--Temas montados

--Temas por año