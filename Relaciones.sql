-- Ejercicio: 
/* 1. tabla direcciones de estudiante, directivos, profesores...
 * 2. id, nombre, numero, ciudad
 * 3.agregar todas las tablas que ya tenemos, la relacion
 * 4.luego, minimo 2 inserciones en las tablas(2 datos de cada uno)
 * */ 

CREATE TABLE generationc2.direcciones (
	id INT NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT null,
	numero INT not null,
	ciudad varchar(100) NOT null,
	primary key (id)
);

insert into direcciones
(nombre, numero, ciudad)
value ("los lagos","1234", "santiago"),
("los aromos","1374", "valparaiso"),
("el salto","1265", "iquique");

select * from direcciones;

alter table direcciones 
add personaId INT;

alter table direcciones
add foreign key (personaId) references direcciones(id);


insert into direcciones
(nombre,apellido,cursoId)
values ("Jhon","Doe","1"),
("jane","Doe",2),
("luisa","morales","2"),
("juan","morales","3");

select * from direcciones;


