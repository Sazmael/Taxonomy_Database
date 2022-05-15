use Taxonomias;

go

/*Borrar la taxonomia de vaca*/
delete from Especie
from Reino
join Phylum on Reino.idReino = Phylum.reino_idReino
join Clase on Phylum.idPhylum = Clase.Phylum_idPhylum 
join Orden on Clase.idClase = Orden.Clase_idClase 
join Familia on  Orden.idOrden = Familia.Orden_idOrden 
join Genero on Familia.idFamilia = Genero.Familia_idFamilia
join Especie on Genero.idGenero = Especie.Genero_idGenero
where Nombre_Comun='Vaca';

go

delete from genero

where idGenero='Bos';

go

delete from familia

where idFamilia='Bovidae';

go

delete from orden

where idOrden ='Artiodactyla';

go

