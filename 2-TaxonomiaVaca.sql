use Taxonomias;

go

/*Unir tablas para mostrar la taxonomia de vaca*/
select Reino.idReino 
from Reino 
join Phylum on Reino.idReino = Phylum.reino_idReino
join Clase on Phylum.idPhylum = Clase.Phylum_idPhylum 
join Orden on Clase.idClase = Orden.Clase_idClase 
join Familia on  Orden.idOrden = Familia.Orden_idOrden 
join Genero on Familia.idFamilia = Genero.Familia_idFamilia
join Especie on Genero.idGenero = Especie.Genero_idGenero
where Nombre_Comun='Maíz';

go

