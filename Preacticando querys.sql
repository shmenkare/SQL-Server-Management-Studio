use MusicListDb;

select * from Temas;
select Genero from Temas;
select idioma from Temas;
select * from Temas order by Nombre desc; 
select distinct A�o from Temas; 
select Nombre, a�o from Temas where A�o < 1970;
select * from temas where Nombre != 'Mr Jones'
select * from temas where A�o between 1950 and 1980 order by A�o asc;