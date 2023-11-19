create table race(
    race_id serial primary key,
    race_name text
);

create table health(
    health_id serial primary key,
    hitpoints int not null,
    armor int,
    shield int
);

create table damage(
    damage_id serial primary key,
    value int not null,
    splash boolean not null,
    ground boolean not null,
    air boolean not null,
    range int not null
);

create table building(
    building_id serial primary key,
    health_id int not null references health,
    damage_id int references damage,
    vespene_gas int,
    minerals int,
    supply int,
    race_id int not null references race
);

create table unit(
    unit_id serial primary key,
    unit_name text not null,
    on_ground boolean not null,
    health_id int not null references health,
    damage_id int references damage,
    building_id int references building,
    vespene_gas int,
    minerals int,
    supply int,
    race_id int not null references race
);

create table hero(
    hero_id serial primary key,
    hero_name text not null,
    health_id int not null references health,
    damage_id int not null references damage,
    race_id int not null references race
);

create table unit_monologue(
    unit_monologue_id serial primary key,
    content text not null,
    unit_id int not null references unit
);

create table hero_monologue(
    hero_monologue_id serial primary key,
    content text not null,
    hero_id int not null references hero
);

create table unit_hero(
    unit_id int not null references unit,
    hero_id int not null references hero,
    primary key(unit_id, hero_id)
);

create table map(
    map_id serial primary key,
    map_name text not null,
    width int not null,
    height int not null
);

create table resource_type(
    resource_type_id serial primary key,
    resource_name text not null
);

create table resource_patch(
    resource_patch_id serial primary key,
    map_id int not null references map,
    resource_type_id int not null references resource_type,
    quantity int not null,
    x int not null,
    y int not null
);

create table obstacle(
    obstacle_id serial primary key,
    obstacle_name text not null,
    x int not null,
    y int not null,
    map_id int not null references map
);
