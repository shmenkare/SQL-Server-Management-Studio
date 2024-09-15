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

--Temas montados

--Temas por año