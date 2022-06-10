CREATE DATABASE StarWars
GO
USE StarWars
GO
CREATE TABLE Galaxia(
IdGalaxia INT PRIMARY KEY IDENTITY(1,1),
Nombre VARCHAR(40),
)
GO

CREATE TABLE Sistema(
IdSistema INT PRIMARY KEY IDENTITY(1,1),
Nombre VARCHAR(40),
IdGalaxia int,
CONSTRAINT FK_IdGalaxia FOREIGN KEY(IdGalaxia) REFERENCES Galaxia(IdGalaxia)
)
GO

CREATE TABLE Planeta(
IdPlaneta INT PRIMARY KEY IDENTITY(1,1),
Nombre VARCHAR(40),
IdSistema INT,
CONSTRAINT FK_IdSistema FOREIGN KEY(IdSistema) REFERENCES Sistema(IdSistema)
)
GO

CREATE TABLE Especie(
IdEspecie INT PRIMARY KEY IDENTITY(1,1),
Nombre VARCHAR(40),
IdPlaneta INT,
CONSTRAINT FK_IdPlaneta FOREIGN KEY(IdPlaneta) REFERENCES Planeta(IdPlaneta)
)
GO

CREATE TABLE OrdenJedi(
IdOrdenJedi INT PRIMARY KEY IDENTITY(1,1),
Nombre VARCHAR(40),
Edad INT,
NivelMidiclorianosSangre INT,
DatosDeInteres VARCHAR(40),
IdEspecie int,
CONSTRAINT FK_IdEspecie FOREIGN KEY(IdEspecie) REFERENCES Especie(IdEspecie)
)
GO

CREATE TABLE SistemasAmenazados(
IdSistemasAmenazados INT PRIMARY KEY IDENTITY(1,1),
IdSistema INT,
Amenazado BIT,
CONSTRAINT FK_IdSistema1 FOREIGN KEY(IdSistema) REFERENCES Sistema(IdSistema)
)
GO

CREATE TABLE Maestro(
IdMaestro INT PRIMARY KEY IDENTITY(1,1),
IdOrdenJedi INT,
IdSistemasAmenazados INT,
Rango bit,
CONSTRAINT FK_IdOrdenJedi FOREIGN KEY(IdOrdenJedi) REFERENCES OrdenJedi(IdOrdenJedi),
CONSTRAINT FK_IdSistemasAmenazados FOREIGN KEY(IdSistemasAmenazados) REFERENCES SistemasAmenazados(IdSistemasAmenazados)
)
GO

CREATE TABLE Padawan(
IdPadawan INT PRIMARY KEY IDENTITY(1,1),
IdOrdenJedi INT,
IdMaestro INT,
CONSTRAINT FK_IdOrdenJedi1 FOREIGN KEY(IdOrdenJedi) REFERENCES OrdenJedi(IdOrdenJedi),
CONSTRAINT FK_IdMaestro FOREIGN KEY(IdMaestro) REFERENCES Maestro(IdMaestro)
)

GO

CREATE TABLE MiembrosConsejo(
IdMiembrosConsejo INT PRIMARY KEY IDENTITY(1,1),
Rango bit,
IdMaestro INT,
CONSTRAINT FK_IdMaestro1 FOREIGN KEY(IdMaestro) REFERENCES Maestro(IdMaestro)
)
GO

INSERT INTO Galaxia(Nombre) VALUES ('La galaxia')
GO

INSERT INTO Sistema(Nombre) VALUES('Abregado')
INSERT INTO Sistema(Nombre) VALUES('llenium')
INSERT INTO Sistema(Nombre) VALUES('Coruscant')
INSERT INTO Sistema(Nombre) VALUES('Desconocida')
INSERT INTO Sistema(Nombre) VALUES('Kashyyk')
GO

INSERT INTO Planeta(Nombre,IdSistema) VALUES ('D Qar', 2)
INSERT INTO Planeta(Nombre,IdSistema) VALUES ('Abregado-Rae', 1)
INSERT INTO Planeta(Nombre,IdSistema) VALUES ('Abregado-dai', 1)
INSERT INTO Planeta(Nombre,IdSistema) VALUES ('Abregado-fus', 1)
INSERT INTO Planeta(Nombre,IdSistema) VALUES ('Abregado-san', 1)
INSERT INTO Planeta(Nombre,IdSistema) VALUES ('Abregado-taki', 1)
INSERT INTO Planeta(Nombre,IdSistema) VALUES ('Coruscant', 3)
INSERT INTO Planeta(Nombre,IdSistema) VALUES ('Desconocida', 4)
INSERT INTO Planeta(Nombre,IdSistema) VALUES ('Tatooine', 2)
GO

INSERT INTO Especie(Nombre,IdPlaneta) VALUES ('Humano',3)
INSERT INTO Especie(Nombre,IdPlaneta) VALUES ('Desconocida',4)
INSERT INTO Especie(Nombre,IdPlaneta) VALUES ('Humano',9)
GO

INSERT INTO OrdenJedi(Nombre,Edad,NivelMidiclorianosSangre,DatosDeInteres,IdEspecie)
VALUES              ('Qui-Gon Jinn', 47, 10000, 'Estatura 1,93', 1)
INSERT INTO OrdenJedi(Nombre,Edad,NivelMidiclorianosSangre,DatosDeInteres,IdEspecie)
VALUES('Obi-Wan Kenobi', 47, 13400, 'Alias:El negociador', 1)
INSERT INTO OrdenJedi(Nombre,Edad,NivelMidiclorianosSangre,DatosDeInteres,IdEspecie)
VALUES('Yoda', 900, 17700, 'Estatura 66cm', 2)
 INSERT INTO OrdenJedi(Nombre,Edad,NivelMidiclorianosSangre,DatosDeInteres,IdEspecie)
VALUES('Dooku',20 , 8800, 'Estatura 1.93', 1)
INSERT INTO OrdenJedi(Nombre,Edad,NivelMidiclorianosSangre,DatosDeInteres,IdEspecie)
VALUES('Anakin Skywalker ',20 , 25000, 'Estatura 1.85', 3)
INSERT INTO OrdenJedi(Nombre,Edad,NivelMidiclorianosSangre,DatosDeInteres,IdEspecie)
VALUES('Mace Windu ',35 , 10000, 'Estatura 1.92', 3)
INSERT INTO OrdenJedi(Nombre,Edad,NivelMidiclorianosSangre,DatosDeInteres,IdEspecie)
VALUES('Luke Skywalker ',19 , 14500, 'Estatura 1.75', 3)
INSERT INTO OrdenJedi(Nombre,Edad,NivelMidiclorianosSangre,DatosDeInteres,IdEspecie)
VALUES('Darth Sidius ',88 , 21700, 'Alias: El Emperador', 2)
GO

INSERT INTO SistemasAmenazados(IdSistema,Amenazado)
VALUES(5,0)
INSERT INTO SistemasAmenazados(IdSistema,Amenazado)
VALUES(1,0)
INSERT INTO SistemasAmenazados(IdSistema,Amenazado)
VALUES(2,0)

INSERT INTO SistemasAmenazados(IdSistema,Amenazado)
VALUES(3,0)
INSERT INTO SistemasAmenazados(IdSistema,Amenazado)
VALUES(4,0)
GO


INSERT INTO Maestro(IdOrdenJedi,IdSistemasAmenazados,Rango)
VALUES (3,1,1)
INSERT INTO Maestro(IdOrdenJedi,IdSistemasAmenazados,Rango)
VALUES (2,2,1)
INSERT INTO Maestro(IdOrdenJedi,IdSistemasAmenazados,Rango)
VALUES (1,3,1)
INSERT INTO Maestro(IdOrdenJedi,IdSistemasAmenazados,Rango)
VALUES (6,4,1)
INSERT INTO Maestro(IdOrdenJedi,IdSistemasAmenazados,Rango)
VALUES (7,5,1)
GO

INSERT INTO Padawan(IdOrdenJedi,IdMaestro) VALUES(3,1)
INSERT INTO Padawan(IdOrdenJedi,IdMaestro) VALUES(3,1)
INSERT INTO Padawan(IdOrdenJedi,IdMaestro) VALUES(3,1)
INSERT INTO Padawan(IdOrdenJedi,IdMaestro) VALUES(3,2)
INSERT INTO Padawan(IdOrdenJedi,IdMaestro) VALUES(3,2)
INSERT INTO Padawan(IdOrdenJedi,IdMaestro) VALUES(3,3)
INSERT INTO Padawan(IdOrdenJedi,IdMaestro) VALUES(3,2)
GO


--MIEMBROS DE LA ORDEN JEDI
SELECT	Nombre,
		Edad,
		NivelMidiclorianosSangre,
		DatosDeInteres,
		IdEspecie 
		FROM OrdenJedi

--MIEMBROS DE LA ORDEN QUE PROCEDEN DE SISTEMAS MAS ALLA DEL EXTERIOR
SELECT	OrdenJedi.Nombre,
		OrdenJedi.Edad,
		OrdenJedi.NivelMidiclorianosSangre,
		Sistema.Nombre AS Sistema 
		FROM Maestro
		INNER JOIN SistemasAmenazados on SistemasAmenazados.IdSistemasAmenazados=Maestro.IdSistemasAmenazados
		INNER JOIN OrdenJedi on OrdenJedi.IdOrdenJedi=Maestro.IdOrdenJedi
		INNER JOIN Sistema on Sistema.IdSistema=SistemasAmenazados.IdSistema
		WHERE Sistema.IdSistema =4

--PADAWAN QUE ENTRENO EL YODA
SELECT COUNT(Maestro.IdMaestro) AS Padawans_Entrenados_Por_Yoda FROM Padawan
INNER JOIN OrdenJedi ON OrdenJedi.IdOrdenJedi = Padawan.IdOrdenJedi
INNER JOIN Maestro ON Maestro.IdMaestro = Padawan.IdMaestro
WHERE Padawan.IdMaestro=1


--NIVEL DE SANGRE MAYOR AL DE YODA Y QUE EL PLANETA SEA TATOOINE
SELECT OrdenJedi.Nombre,Edad,NivelMidiclorianosSangre,DatosDeInteres,Especie.Nombre AS Especie,Planeta.Nombre AS Planeta FROM OrdenJedi
INNER JOIN Especie ON Especie.IdEspecie = OrdenJedi.IdEspecie
INNER JOIN Planeta ON Planeta.IdPlaneta = Especie.IdPlaneta
WHERE NivelMidiclorianosSangre>17700 and Planeta.IdPlaneta = 9


ALTER PROCEDURE Informe

AS

SELECT
OrdenJedi.Nombre as NombreCaballero,
SistemasAmenazados.IdSistemasAmenazados,
Sistema.Nombre as NombreCombate,
Maestro.Rango as Rango

from Maestro
INNER JOIN SistemasAmenazados on SistemasAmenazados.IdSistemasAmenazados=Maestro.IdSistemasAmenazados
INNER JOIN OrdenJedi on OrdenJedi.IdOrdenJedi=Maestro.IdOrdenJedi
INNER JOIN Sistema on Sistema.IdSistema=SistemasAmenazados.IdSistema
ORDER BY OrdenJedi.Nombre ASC
GO

