-- Creacion de las tablas

-- tabla de usuarios
CREATE TABLE usuarios (
	id INT primary KEY NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	correo varchar(100) NOT null,
	contraseña varchar(100) not null
);

-- tabla de emociones
CREATE TABLE emociones (
	id INT primary KEY NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	descripcion varchar(100) not null,
	color varchar(100) not null,
	tipo INT not null,	
	pregunta varchar(100) not null
);

select * from emociones;

-- tabla de respuestas
CREATE TABLE respuestas (
	id INT primary KEY NOT NULL AUTO_INCREMENT,
	emocion_id INT not null,
	fecha date not null,
	texto varchar(100) not null,
	usuario_id INT not NULL,
	foreign key (usuario_id) references usuarios(id),
	foreign key (emocion_id) references emociones(id)
);

select * from respuestas;
-- Insertamos los registros en cada tabla

-- registros de usuarios
insert into usuarios (nombre, correo, contraseña)
values 
("Camilo", "cami@gmail.com", "1234"),
("Luisa", "luisa@gmail.com", "contraseña123"),
("Ana", "ana@gmail.com", "pswd123")
;

-- registros de emociones
insert into emociones (nombre, descripcion, pregunta, color, tipo)
values 
("Triste", "tristeza", "¿porque estas triste?", "azul", 6),
("Enojado", "furioso", "¿porque estas enojado?", "rojo", 1),
("Sorprendido", "sorpresa", "¿qué te sorprende?", "naranja", 2),
("Disgusto", "disgusto", "cuenta por qué estás disgustado", "verde", 3),
("Miedo", "miedo", "tranquilo, cuéntamo por qué", "gris", 4),
("Felicidad", "feliz", "¡Genial! Describe tu emoción", "amarillo", 5)
;

-- registros de respuestas
insert into respuestas (emocion_id, texto, fecha, usuario_id)
values
(1, "estoy muy triste", '2022-10-08', 1),
(2, "no avanzamos en el proyecto", '2022-10-08', 1),
(3, "celebré mi cumpleaños", '2022-11-08', 2),
(2, "no me gusta bañarme", '2022-11-12', 2),
(2, "no me gustan las guatitas", '2022-11-15', 2),
(6, "estoy muy feliz!", '2022-11-18', 3)
;

-- Consultamos datos

-- consulta usuarios
select * from usuarios;

-- consulta emociones
select * from emociones;

-- consulta respuestas
-- * significa que muestre todas las columnas

-- selecciona todas las columnas de la tabla respuestas 
select * from respuestas
-- muestre el usuario_id 1, que relaciona usuario con tabla respuestas.
where usuario_id = '1';

-- consultar cantidad de veces que los usuarios se sintieron 
select COUNT(emocion_id) from respuestas
-- muestra la emocion 2 relacionada con los usuarios
where emocion_id = '2';


-- consultar en la tabla respuestas, que emociones (emocion_id) sintio el usuario 2 (usuario_id) 
select emocion_id from respuestas
where usuario_id = '2';
































