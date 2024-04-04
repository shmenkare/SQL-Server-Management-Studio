USE master

CREATE DATABASE Practica;

USE Practica;

CREATE TABLE Users
(
userId INT NOT NULL PRIMARY KEY IDENTITY,
userName VARCHAR(25),
passW VARCHAR(8)
)

INSERT INTO Users VALUES('Orion Ra','34511');
INSERT INTO Users VALUES('Shmenkare','666345');
INSERT INTO Users VALUES('Maria','123478');
INSERT INTO Users VALUES('Pedro','extra345');
INSERT INTO Users VALUES('Calos','pote25');
INSERT INTO Users VALUES('Alison','01478');
INSERT INTO Users VALUES('Charles','pomo45');
INSERT INTO Users VALUES('Juan','pacha85');
INSERT INTO Users VALUES('Poncio','pilatos15');
INSERT INTO Users VALUES('Herodes','Grande34');

SELECT * FROM Users;

SELECT username, passW FROM Users WHERE userName = 'Orion ra' AND passW = '34511';
