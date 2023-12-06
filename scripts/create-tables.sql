create table race(
    race_id serial primary key,
    race_name text
);

create table health(
    health_id serial primary key,
    hitpoints int not null check (hitpoints>=0 and hitpoints<=10000),
    armor int check (armor>=0 and armor<=10000 or null),
    shield int check (shield>0 and shield<=10000 or null)
);

create table damage(
    damage_id serial primary key,
    value int not null check (value>=0 and value<=10000),
    splash boolean not null,
    ground boolean not null,
    air boolean not null,
    range int not null check (range>=0 and range<=10000)
);

create table building(
    building_id serial primary key,
    health_id int not null references health,
    damage_id int references damage,
    vespene_gas int check (vespene_gas>0 and vespene_gas<=10000 or null),
    minerals int check (minerals>0 and minerals<=10000 or null),
    supply int check (supply>0 and supply<=10000 or null),
    race_id int not null references race
);

create table unit(
    unit_id serial primary key,
    unit_name text not null,
    on_ground boolean not null,
    health_id int not null references health,
    damage_id int references damage,
    building_id int references building,
    vespene_gas int check (vespene_gas>0 and vespene_gas<=10000 or null),
    minerals int check (minerals>0 and minerals<=10000 or null),
    supply int check (supply>0 and supply<=10000 or null),
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
    width int not null check (width>0 and width<=10000),
    height int not null check (height>0 and height<=10000)
);

create table resource_type(
    resource_type_id serial primary key,
    resource_name text not null
);

create table resource_patch(
    resource_patch_id serial primary key,
    map_id int not null references map,
    resource_type_id int not null references resource_type,
    quantity int not null check (quantity>0 and quantity<=10000),
    x int not null check (x>=0 and x<=10000),
    y int not null check (y>=0 and y<=10000)
);

create table obstacle(
    obstacle_id serial primary key,
    obstacle_name text not null,
    x int not null,
    y int not null,
    map_id int not null references map
);
