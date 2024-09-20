use MusicListBD;

select count(*) from Temas;

select count(*) from TemasLocales;

select count(*) from TemasPorBanda;

select count(*) from TemasProyecto;

select * from Temas;

select * from TemasLocales;

select * from TemasPorBanda;

select * from TemasProyecto;


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

BEGIN TRANSACTION;
DELETE FROM TemasPorBanda WHERE Id_tema = 137;
DELETE FROM TemasProyecto WHERE Id_tema = 137;
DELETE FROM TemasLocales WHERE Id_tema = 137;
DELETE FROM Temas WHERE Id_tema = 137;
COMMIT;



---- Obtener el ID generado
--DECLARE @Id_tema INT;
--SET @Id_tema = SCOPE_IDENTITY();


---- Supongamos que tienes un ID de local que quieres insertar
--DECLARE @Id_local INT;
--SET @Id_local = 1; -- Este valor debería ser dinámico según tu lógica

--INSERT INTO TemasLocales (Id_local, Id_tema)
--VALUES (@Id_local, @Id_tema);

---- Supongamos que tienes un ID de configuración de banda que quieres insertar
--DECLARE @Id_Conf INT;
--SET @Id_Conf = 1; -- Este valor debería ser dinámico según tu lógica

--INSERT INTO TemasPorBanda (Id_Conf, Id_tema)
--VALUES (@Id_Conf, @Id_tema);

---- Supongamos que tienes un ID de proyecto que quieres insertar
--DECLARE @Id_proyecto INT;
--SET @Id_proyecto = 1; -- Este valor debería ser dinámico según tu lógica

--INSERT INTO TemasProyecto (Id_proyecto, Id_tema)
--VALUES (@Id_proyecto, @Id_tema);


--Transacción para asegurar atomicidad

BEGIN TRANSACTION;

BEGIN TRY
    -- Insertar en la tabla principal
    INSERT INTO Temas (Nombre, Id_Banda_interprete, Id_genero, Id_idioma, Año, Tonalidad, Programa_GT, Programa_VE, Tema_montado, Duracion)
    VALUES ('Nuevo Tema', 1, 1, 1, '2024', 'C', 'GT1', 'VE1', 1, '03:30');

    -- Obtener el ID generado
    DECLARE @Id_tema INT;
    SET @Id_tema = SCOPE_IDENTITY();

    -- Insertar en TemasLocales
    DECLARE @Id_local INT;
    SET @Id_local = 1; -- Este valor debería ser dinámico según tu lógica

    INSERT INTO TemasLocales (Id_local, Id_tema)
    VALUES (@Id_local, @Id_tema);

    -- Insertar en TemasPorBanda
    DECLARE @Id_Conf INT;
    SET @Id_Conf = 1; -- Este valor debería ser dinámico según tu lógica

    INSERT INTO TemasPorBanda (Id_Conf, Id_tema)
    VALUES (@Id_Conf, @Id_tema);

    -- Insertar en TemasProyecto
    DECLARE @Id_proyecto INT;
    SET @Id_proyecto = 1; -- Este valor debería ser dinámico según tu lógica

    INSERT INTO TemasProyecto (Id_proyecto, Id_tema)
    VALUES (@Id_proyecto, @Id_tema);

    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    -- Manejo de errores
    PRINT 'Error: ' + ERROR_MESSAGE();
END CATCH;


