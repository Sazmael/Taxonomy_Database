use Taxonomias;

go

insert into Reino(idReino) values ('Animal'),('Vegetal');

go

insert into Phylum (idPhylum,reino_idReino) values('Chordata','Animal'),('Tracheophyta','Vegetal');

go

insert into Clase (idClase,Phylum_idPhylum) values('mammalia','Chordata'),('Angiosperma','Tracheophyta');

go

insert into Orden (idOrden,Clase_idClase) values('Artiodactyla','mammalia'),('Primate','mammalia'),
('carnívora','mammalia'),('Glumifloral','Angiosperma'),
('Cetacea','mammalia');

go

insert into Familia (idFamilia,Orden_idOrden) values('Bovidae','Artiodactyla'),('Hominidae','Primate'),
('Canidae','carnívora'),('Felidae','carnívora'),
('Gramínea','Glumifloral'),('Balaenopteridae','Cetacea');

go

insert into Genero (idGenero,Familia_idFamilia) values('Bos','Bovidae'),('Homo','Hominidae'),('Canis','Canidae'),
('Felis','Felidae'),('Zea','Gramínea'),('Megaptera','Balaenopteridae');

go

insert into Especie (idEspecie,Genero_idGenero,Nombre_Cientifico,Nombre_Comun) values('Taurus','Bos','Bos Taurus','Vaca'),
('Sapiens','Homo','Homo Sapiens','Hombre'),
('familiaris','Canis','Canis familiaris','Perro'),
('silvestris','Felis','Felis silvestris','Gato'),
('Maíz','Zea','Zea Maíz','Maíz'),
('novaeangliae','Megaptera','Megaptera novaeangliae','Ballena Jorobada');

go
