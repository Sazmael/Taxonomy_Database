use Taxonomias

go

/*Crear la funcion con el parametro del nombre común*/
CREATE FUNCTION fnc_get_reino(@Nombre_Comun VARCHAR(30)) RETURNS VARCHAR(30)
as
BEGIN

DECLARE @getreino VARCHAR(30)

/*CONSULTA*/

select @getreino = Reino.idReino 
from Reino 
join Phylum on Reino.idReino = Phylum.reino_idReino
join Clase on Phylum.idPhylum = Clase.Phylum_idPhylum 
join Orden on Clase.idClase = Orden.Clase_idClase 
join Familia on  Orden.idOrden = Familia.Orden_idOrden 
join Genero on Familia.idFamilia = Genero.Familia_idFamilia
join Especie on Genero.idGenero = Especie.Genero_idGenero
where Nombre_Comun= @Nombre_Comun and reino.idReino = 'animal';

RETURN @getreino

END

go

/*Mostrar el Reino del ser vivo seleccionado por su nombre común*/
select nombre_comun as Nombre, dbo.fnc_get_reino('Gato') as Reino from especie where nombre_comun = 'Gato'
go
