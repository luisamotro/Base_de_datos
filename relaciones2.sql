-- relaciones
CREATE TABLE proveedor(
	id INT primary KEY NOT NULL AUTO_INCREMENT,
	nombre varchar(100) NOT NULL,
	rut varchar(100) NOT NULL
);

-- distintos proveedores con muchas direcciones cada uno

insert into proveedor (nombre,rut)
values ("maderas SPA","1234567");

insert into proveedor (nombre,rut)
values ("metales SPA","4567890");

insert into proveedor (nombre,rut)
values ("vidrios SPA","2345678");

-- proveedor sin direccion
insert into proveedor (nombre,rut)
values ("utencilios SPA","945678");


select * from proveedor;

select * from direcciones;

-- SQL JOINs
-- sirve para encontrar los registros en comun (ON) entre dos tablas
-- la tabla A la establezco yo, la B se establece despues
-- "p" es el alias

-- hace la combinacion de cada proveedor con todas las direcciones
-- muestra los proveedores que existen con direcciones
select * from proveedor p
inner join direcciones d
on p.id = d.proveedor_id; 

-- filtrar solo el proveedor 1
select * from proveedor p
inner join direcciones d
on p.id = d.proveedor_id
where p.id = 1;

-- filtrar solo las direcciones del proveedor 1
select d.* from proveedor p
inner join direcciones d
on p.id = d.proveedor_id
where p.id = 1;

-- filtar solo datos especificos de las direcciones
select d.id,d.calle,d.numero from proveedor p
inner join direcciones d
on p.id = d.proveedor_id
where p.id = 1;

-- mostrar solo el proveedor, lo duplica segun la cant de direcciones que tenga (3)
select p.* from proveedor p
inner join direcciones d
on p.id = d.proveedor_id
where p.id = 1;


-- LEFT JOIN
-- mostrara todos los proveedores y su relacion con direccion ya sea que haya  o no
select * from proveedor p
left join direcciones d
on p.id = d.proveedor_id;

-- RIGHT JOIN
-- muestra solo los proveedores con direccion 
select * from proveedor p
right join direcciones d
on p.id = d.proveedor_id;

-- un proveedor tiene muchas direcciones, por eso se crea la foreign key

CREATE TABLE direcciones(
	id INT primary KEY NOT NULL AUTO_INCREMENT,
	calle varchar(100) NOT NULL,
	numero INT not null,
	comuna varchar(100) not null,
	sector varchar(100) not null,
	ciudad varchar(100) not null,
	codigo_postal INT,
	proveedor_id INT not NULL
);

-- se establece la foreign key
-- constraint, es para agregar un nombre la relacion, es decir, a la FK
alter table direcciones 
add constraint fk_proveedor_id
foreign key (proveedor_id) REFERENCES proveedor(id);

-- inserciones
-- direcciones por cada proveedor (numero del final/FK), ya sea del 1, 2 o 3er proovedor

insert into direcciones (calle,numero,comuna,sector,ciudad,codigo_postal,proveedor_id)
values ("aromos",1234,"champa", "paine","santiago",345,1);

insert into direcciones (calle,numero,comuna,sector,ciudad,codigo_postal,proveedor_id)
values ("piedras",1374,"la reina", "norte","santiago",375,1);

insert into direcciones (calle,numero,comuna,sector,ciudad,codigo_postal,proveedor_id)
values ("dario",2354,"bosque", "sur","santiago",234,1);

insert into direcciones (calle,numero,comuna,sector,ciudad,codigo_postal,proveedor_id)
values ("rosas",6354,"boston", "norte","santiago",456,2);

insert into direcciones (calle,numero,comuna,sector,ciudad,codigo_postal,proveedor_id)
values ("pintue",7356,"campo", "sur","santiago",678,2);

insert into direcciones (calle,numero,comuna,sector,ciudad,codigo_postal,proveedor_id)
values ("letra",6366,"ciudad", "norte","santiago",386,3);

select * from direcciones;
















