use Taxonomias;

go

/*Crear procedimiento y paramatros a recibir*/
create procedure dbo.sp_inserta_registro
@idReino varchar(30), @idPhylum  varchar(30), @idClase varchar(30), @idOrden  varchar(30),@idFamilia varchar(30), 
@idGenero varchar(30),@idEspecie varchar(30), @Nombre_Cientifico varchar(30), @Nombre_Comun varchar(30)

AS
BEGIN

/*Crear las inserciones en la tabla*/
insert into Reino(idReino)
SELECT  @idReino

insert into Phylum (idPhylum,reino_idReino)
SELECT @idPhylum, @idReino

insert into Clase (idClase,Phylum_idPhylum)
select @idClase, @idPhylum

insert into Orden (idOrden,Clase_idClase)
select @idOrden, @idClase

insert into Familia (idFamilia,Orden_idOrden)
select @idFamilia, @idOrden

insert into Genero (idGenero,Familia_idFamilia)
select @idGenero, @idFamilia

insert into Especie (idEspecie,Genero_idGenero,Nombre_Cientifico,Nombre_Comun)
select @idEspecie, @idGenero, @Nombre_Cientifico, @Nombre_Comun


END

go

/*Ejecutar proceso y insertarle los datos*/
EXEC sp_inserta_registro 'Plantae','Asteridae','Magnoliopsida','Asterales','Asteraceae','Bellis','B. perennis','Bellis perennis','Margarita'

go

/*Mostrar taxonomia ingresada de la margarita con el procedimiento*/
select Reino.idReino 'Reino',Phylum.idPhylum 'Phylum', Clase.idClase 'Clase', Orden.idOrden 'Orden', Familia.idFamilia 'Familia', Genero.idGenero 'Genero',Especie.idEspecie 'Especie',Especie.Nombre_Cientifico 'Nombre_Cientifico',Especie.Nombre_Comun 'Nombre_Comun'
from Reino 
join Phylum on Reino.idReino = Phylum.reino_idReino
join Clase on Phylum.idPhylum = Clase.Phylum_idPhylum 
join Orden on Clase.idClase = Orden.Clase_idClase 
join Familia on  Orden.idOrden = Familia.Orden_idOrden 
join Genero on Familia.idFamilia = Genero.Familia_idFamilia
join Especie on Genero.idGenero = Especie.Genero_idGenero
where Nombre_Comun='Margarita';

go
