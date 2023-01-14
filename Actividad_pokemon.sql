-- relacion pokemones, añadir:
-- primary key
-- foreign key

-- para agregar el id
ALTER TABLE generationc2.mis_pokemones ADD id int primary key auto_increment NOT NULL;


-- agregar foreign key
alter table mis_pokemones 
add foreign key (pokedex) references pokemonesKanto(pokedex);

-- agregar primary key
alter table mis_pokemones add primary key (id);

-- cosultar tipo 1 fuego, en mis pokemones
select tipo1* from mis_pokemones mp 
inner join pokedex d
on mis_pokemones = d.proveedor_id
where p.id = 1;

-- consultar los pokemones de tipo veneno en tipo 1 y 2
select p.tipo1, p.tipo2 from pokemoneskanto 
inner join mis_pokemones m
on pokedex.id = m.id
where tipo1, tipo2 = veneno;

-- pokemones que haya capturado en san..
select lugar * from mis_pokemones mp 
inner join mis_pokemones mp2 
on mis_pokemones = id
where p.id = 1;

-- de mis pokemones, los que tengan 1 habilidad
select p.nombre, p.tipo1, p.tipo2  
from  mis_pokemones mp  
inner join pokemoneskanto p 
on p.pokedex = mp.id
where p.tipo2 = "" ;




