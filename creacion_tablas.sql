-- crear tablas
CREATE TABLE generationc2.Administrativos (
	id INT primary KEY NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE generationc2.profesores (
	id INT primary KEY NOT null AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE generationc2.estudiantes  (
	id INT primary KEY NOT null AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;

-- modificando tabla
CREATE TABLE generationc2.directivos (
	id INT NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT null,
	primary key (id)
);

-- describir tabla, muestra toda la informacion
describe profesores;

-- para consultar los datos dentro de la tabla
select * from directivos;

-- TAREA
CREATE TABLE generationc2.Mascotas (
	id INT primary KEY NOT NULL AUTO_INCREMENT,
	Tipo varchar(100) NOT NULL,
	nombre varchar(100) NOT NULL
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;

insert into mascotas (nombre,apellido)
values ("perro","Tomas");

insert into mascotas (nombre,apellido)
values ("gato","benito");

insert into mascotas (nombre,apellido)
values ("Hamster","pedrito");

insert into mascotas (nombre,apellido)
values ("pez","nemo");

select * from mascotas;







