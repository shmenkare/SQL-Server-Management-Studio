use MusicListDb;

select * from Temas;
select Genero from Temas;
select idioma from Temas;
select * from Temas order by Nombre desc; 
select distinct Año from Temas; 
select Nombre, año from Temas where Año < 1970;
select * from temas where Nombre != 'Mr Jones'
select * from temas where Año between 1950 and 1980 order by Año asc;