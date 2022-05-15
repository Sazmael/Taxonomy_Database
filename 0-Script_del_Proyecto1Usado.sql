USE master
GO

DROP DATABASE IF EXISTS Taxonomias
GO

CREATE DATABASE Taxonomias
GO

USE Taxonomias
GO

CREATE TABLE reino(
	idReino varchar(30) PRIMARY KEY
)
GO

CREATE TABLE phylum(
	idPhylum varchar(30) PRIMARY KEY,
	reino_idReino varchar(30) FOREIGN KEY (reino_idReino) REFERENCES reino(idReino),
	
)
GO

CREATE TABLE clase(
	idClase varchar(30) PRIMARY KEY,
	Phylum_idPhylum varchar(30) FOREIGN KEY (Phylum_idPhylum) REFERENCES phylum(idPhylum)
)
GO

CREATE TABLE orden(
	idOrden varchar(30) PRIMARY KEY,
	Clase_idClase varchar(30) FOREIGN KEY (Clase_idClase) REFERENCES clase(idClase)
)
GO

CREATE TABLE familia(
	idFamilia varchar(30) PRIMARY KEY,
	Orden_idOrden varchar(30) FOREIGN KEY (Orden_idOrden) REFERENCES orden(idOrden)
)
GO

CREATE TABLE genero(
	idGenero varchar(30) PRIMARY KEY,
	Familia_idFamilia varchar(30) FOREIGN KEY (Familia_idFamilia) REFERENCES familia(idFamilia)
)
GO

CREATE TABLE especie(
	idEspecie varchar(30) PRIMARY KEY,
	Genero_idGenero varchar(30),
	nombre_cientifico varchar(45),
	nombre_comun varchar(45) FOREIGN KEY (Genero_idGenero) REFERENCES genero(idGenero)
)
GO

USE Taxonomias
GO 
ALTER DATABASE Taxonomias set TRUSTWORTHY ON; 
GO 
EXEC dbo.sp_changedbowner @loginame = N'sa', @map = false 
GO 
sp_configure 'show advanced options', 1; 
GO 
RECONFIGURE; 
GO 
sp_configure 'clr enabled', 1; 
GO 
RECONFIGURE; 
GO