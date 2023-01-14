-- relacion muchos a muchos
create table productos(
	id int primary key not null auto_increment,
	nombre varchar(100) not null,
	descripcion varchar(100) not null
);

insert into productos (nombre,descripcion)
values ("madera","de roble");

insert into productos(nombre,descripcion)
values ("cristales","para ventanas");

insert into productos (nombre,descripcion)
values ("utencilios","para cocina");

insert into productos (nombre,descripcion)
values ("herramientas","industriales");

insert into productos (nombre,descripcion)
values ("llantas","para autos");

insert into productos (nombre,descripcion)
values ("puertas","para casas");

create table pedidos(
	id int primary key not null auto_increment,
	fecha date not null,
	monto int not null,
	cliente_id int
);

-- tabla intermedia; pedidos_productos
-- id, fk tabla 1, fk tabla 2 = estructura basica
-- id, pedido_id, producto_id

-- otra forma de crear foreign key
-- relacionando pedidos con productos
create table pedidos_productos(
	id int primary key not null auto_increment,
	pedido_id int not null,
	producto_id int not null,
	foreign key (producto_id) references productos(id),
	foreign key (pedido_id) references pedidos(id)
);

insert into pedidos (fecha,monto)
values ('22-11-09',1500);

-- la tabla intermedia permite duplicidad
insert into pedidos_productos (pedido_id, producto_id)
values 
(1,1),
(1,1)
;


alter table pedidos_productos 
add cant_productos int, add subtotal int;

alter table productos 
add valor_unitario int;

select * from pedidos;
select * from productos;
select * from pedidos_productos;












