USE MusicListDB;

select * from temas;

select t.Nombre, bi.Nombre from Temas t, Banda_interprete bi 
where t.Id_Banda_interprete = bi.Id_Banda_interprete;

update Temas set Id_Banda_interprete = '78' where Id_Banda_interprete = '83';
update Temas set Id_idioma = '2' where Nombre = 'Jonny B goode';

select * from Config_Banda
select * from TemasPorBanda

select Nombre, Genero from Temas t, Generos g where t.Id_genero = g.Id_genero;

select t.Nombre, i.idioma, i.Id_idioma from Temas t, Idiomas i 
where t.Id_idioma = i.Id_idioma order by Idioma asc;

select g.Genero, count(t.Nombre) temas from Generos g 
join Temas t on g.Id_genero = t.Id_genero group by Genero;

SELECT c.Configuracion, COUNT(t.nombre) temas 
FROM Config_Banda c 
JOIN TemasPorBanda tb ON c.Id_Conf = tb.Id_Conf 
JOIN Temas t ON tb.Id_Tema = t.Id_Tema 
GROUP BY c.Configuracion;


select COUNT(*)from Temas

select Nombre, Genero from Temas t Join Generos g on t.Id_genero = g.Id_genero

select * from TemasPorBanda

select t.Nombre, cb.Configuracion from Temas t join TemasPorBanda tb on t.Id_tema = tb.Id_tema 
join Config_Banda cb on cb.Id_Conf = tb.Id_Conf where t.Nombre = 'Yellow';

select t.nombre, b.Nombre Banda from Temas t join Banda_interprete b 
on t.Id_Banda_interprete = b.Id_Banda_interprete where t.Tema_montado = 1;

INSERT INTO TemasPorBanda VALUES(3,15);

UPDATE TemasPorBanda SET Id_Conf = 2 WHERE Id_tema = 2;

UPDATE TPB
SET TPB.Id_Conf = 5, TPB.Id_Tema = T.id_Tema
FROM TemasPorBanda AS TPB
JOIN Temas AS T ON TPB.Id_Tema = T.id_Tema
WHERE T.id_Tema = 125;

DELETE FROM TemasPorBanda WHERE Id_tema =3;

SELECT * FROM TemasPorBanda;

SELECT * FROM Config_Banda;

SELECT cb.Configuracion, t.Nombre FROM Config_Banda cb 
INNER JOIN TemasPorBanda tb ON cb.Id_Conf = tb.Id_Conf
INNER JOIN Temas t ON t.Id_tema = tb.Id_tema
WHERE t.Nombre = 'Creep';
                      
SELECT t.Nombre, p.Nombre AS Proyecto FROM Temas AS t
INNER JOIN TemasProyecto AS tp ON tp.Id_tema = t.Id_tema
INNER JOIN Proyecto AS p ON p.Id_proyecto = tp.Id_proyecto
WHERE p.Nombre = 'Quinta Esencia';

SELECT t.Nombre, cb.Configuracion FROM temas AS t
INNER JOIN TemasPorBanda AS tb ON tb.Id_tema = t.Id_tema
INNER JOIN Config_Banda AS cb ON cb.Id_Conf = tb.Id_Conf
WHERE Configuracion = 'banda completa';


SELECT t.Nombre, cb.Configuracion FROM temas AS t
INNER JOIN TemasPorBanda AS tb ON tb.Id_tema = t.Id_tema
INNER JOIN Config_Banda AS cb ON cb.Id_Conf = tb.Id_Conf
WHERE Configuracion = 'trio';

DELETE t
FROM Temas t
JOIN TemasPorBanda tb ON t.Id_tema = tb.Id_tema
JOIN TemasProyecto tp ON t.Id_tema = tp.Id_tema
JOIN TemasLocales tl ON t.Id_tema = tl.Id_tema
WHERE t.Id_tema =126;