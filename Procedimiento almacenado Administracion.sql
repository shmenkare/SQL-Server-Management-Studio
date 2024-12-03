
create procedure ActualizaArticulos

@Id_pro int, @Nom_pro varchar(100), @precio float

as

--Actualiza articulos

if not exists (select Id_pro from Articulo where Id_pro = @Id_pro)
insert into Articulo (id_pro, Nom_pro, Precio) values(@id_pro, @Nom_pro, @Precio)
else
update Articulo set id_pro = @Id_pro, Nom_pro= @Nom_pro, Precio= @Precio



