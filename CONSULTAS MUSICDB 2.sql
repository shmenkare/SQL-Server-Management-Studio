use MusicListDB;

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

INSERT INTO TemasProyecto VALUES(1,10)

SELECT * FROM Config_Banda;
