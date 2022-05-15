use Taxonomias;

go

/*Mostrar nombre_comun de hombre sin cambiar*/
select *from Especie
where Nombre_Cientifico = 'Homo Sapiens';

go

/*Cambiar el nombre_comun de Hombre a Hombre/Mujer*/
Update Especie
set Nombre_Comun = 'Hombre/Mujer'

where Nombre_Comun='Hombre';

go

/*Mostrar nombre_comun de hombre cambiado a Hombre/Mujer*/
select *from Especie
where Nombre_Cientifico = 'Homo Sapiens';

go
