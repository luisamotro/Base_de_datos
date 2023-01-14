-- Insertar datos en tablas
-- insert into NOMBRE_TABLA(NOMBRE_COLUMNA1,NOMBRE_COLUMNA2..)values (VALOR1,VAL2..);

insert into directivos (nombre,apellido)
values ("Maggi","Fernandez");

insert into directivos (nombre,apellido)
values ("Rafael","Guerrero");

-- Consultar
select *
from directivos;

-- where id = 2 

-- insertar mas de un registro
insert into directivos (nombre,apellido)
values ("lau","Soto"), ("Andrea", "Montecinos");
select * from directivos;

-- Modificar la DATA
-- drop database genertacionc2; para eliminar la base de datos

-- eliminar la tabla
-- drop table directivos;

-- elimina SOLO el contenido de la tabla
-- truncate table directivos;

-- modificar una columna especifica(dato especifico)
-- (alter table para borrar columnas completas)
-- update nombre_tabla set nombre_columna = nuevo_dato where condicion

update directivos set nombre = "Laura" WHERE id = 3; -- Where id = 3; para cambiar el dato especifico
select * FROM directivos;

-- mostrar columnas especificas
select nombre, id 
from directivos;

-- alias
select d.nombre as gato, d.id as rut 
from directivos;

-- filtrar
insert into directivos 
select d.id,d.nombre, d.apellido
from directivos d
where d.nombre = "Andrea";





select d.id,d.nombre, d.apellido
from directivos d
where d.nombre = "Andrea"
and d.apellido = "montecinos";

-- filtrar por parte de palabra/numero; LIKE coincidencias
insert into directivos (nombre, apellido)
values ("Andres","Soto"), ("Ana", "Rubio");

select d.nombre, d.apellido, d.id
from directivos d
where d.nombre like 'an%'; -- anne, andre..muestra los que empiezan con an

-- comienza por cualquier texto, pero finaliza por a
select d.nombre, d.apellido, d.id
from directivos d
where d.nombre like '%a';

-- muestra todas las coincidencias que tengan a
select d.nombre, d.apellido, d.id
from directivos d
where d.nombre like '%a%';

-- FOREIGN KEY

-- creacion de tabla
    CREATE TABLE generationc2.cursos (
	id INT NOT NULL AUTO_INCREMENT,
	nombre varchar(100)NOT NULL,
	cant_alumnos INT NOT null,
	especialidad varchar(100),
	primary key (id)
);

-- insert into cursos
insert into cursos
(nombre, cant_alumnos, especialidad)
value ("cohorte 1","30", "java"),
("cohorte 2","34", "java"),
("cohorte 3","35", "java");

select * from cursos;

-- agregar la fk a estudiante
-- 1. creacion de columna
alter table estudiantes 
add cursoId INT;

-- 2.luego para que serelacionen  las tablas
alter table estudiantes -- a la tabla fk
add foreign key (cursoId) references cursos(id);
-- (aparece MUL, de MUltiples valores)

-- 3.crear registro 
insert into estudiantes 
(nombre,apellido,cursoId)
values ("Jhon","Doe","1"),
("jane","Doe",2),
("luisa","morales","2"),
("juan","morales","3");

select * from estudiantes;




