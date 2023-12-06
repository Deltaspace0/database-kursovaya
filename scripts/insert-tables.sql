insert into race(race_name) values('Zerg');
insert into race(race_name) values('Protoss');
insert into race(race_name) values('Terran');

-- production buildings
insert into health(hitpoints, armor, shield) values(1250, null, null); -- hatchery
insert into health(hitpoints, armor, shield) values(750, null, 750); -- nexus
insert into health(hitpoints, armor, shield) values(500, null, 500); -- gateway
insert into health(hitpoints, armor, shield) values(500, null, 500); -- robotics facility
insert into health(hitpoints, armor, shield) values(600, null, 600); -- stargate
insert into health(hitpoints, armor, shield) values(1500, null, null); -- command center
insert into health(hitpoints, armor, shield) values(1000, null, null); -- barracks
insert into health(hitpoints, armor, shield) values(1250, null, null); -- factory
insert into health(hitpoints, armor, shield) values(1300, null, null); -- starport

-- static defense buildings
insert into health(hitpoints, armor, shield) values(300, null, null); -- sunken colony
insert into health(hitpoints, armor, shield) values(400, null, null); -- spore colony
insert into health(hitpoints, armor, shield) values(100, null, 100); -- photon cannon
insert into health(hitpoints, armor, shield) values(200, null, null); -- missile turret

-- units
insert into health(hitpoints, armor, shield) values(40, 0, null); -- drone
insert into health(hitpoints, armor, shield) values(200, 0, null); -- overlord
insert into health(hitpoints, armor, shield) values(35, 0, null); -- zergling
insert into health(hitpoints, armor, shield) values(80, 0, null); -- hydralisk
insert into health(hitpoints, armor, shield) values(120, 0, null); -- mutalisk
insert into health(hitpoints, armor, shield) values(150, 2, null); -- guardian
insert into health(hitpoints, armor, shield) values(400, 1, null); -- ultralisk
insert into health(hitpoints, armor, shield) values(20, 0, 20); -- probe
insert into health(hitpoints, armor, shield) values(100, 1, 60); -- zealot
insert into health(hitpoints, armor, shield) values(100, 1, 80); -- dragoon
insert into health(hitpoints, armor, shield) values(100, 0, 80); -- reaver
insert into health(hitpoints, armor, shield) values(80, 1, 60); -- shuttle
insert into health(hitpoints, armor, shield) values(150, 0, 100); -- scout
insert into health(hitpoints, armor, shield) values(100, 1, 80); -- corsair
insert into health(hitpoints, armor, shield) values(60, 0, null); -- scv
insert into health(hitpoints, armor, shield) values(40, 0, null); -- marine
insert into health(hitpoints, armor, shield) values(50, 1, null); -- firebat
insert into health(hitpoints, armor, shield) values(150, 1, null); -- tank
insert into health(hitpoints, armor, shield) values(80, 0, null); -- vulture
insert into health(hitpoints, armor, shield) values(125, 1, null); -- goliath
insert into health(hitpoints, armor, shield) values(120, 0, null); -- wraith
insert into health(hitpoints, armor, shield) values(200, 2, null); -- valkyrie
insert into health(hitpoints, armor, shield) values(150, 1, null); -- dropship

-- heroes
insert into health(hitpoints, armor, shield) values(160, 2, null); -- hunter killer
insert into health(hitpoints, armor, shield) values(800, 4, null); -- torrasque
insert into health(hitpoints, armor, shield) values(240, 3, 240); -- fenix
insert into health(hitpoints, armor, shield) values(300, 2, 200); -- artanis
insert into health(hitpoints, armor, shield) values(200, 3, null); -- jim raynor
insert into health(hitpoints, armor, shield) values(300, 3, null); -- edmund duke

-- static defense buildings
insert into damage(value, splash, ground, air, range) values(40, false, true, false, 7); -- sunken colony
insert into damage(value, splash, ground, air, range) values(15, false, false, true, 7); -- spore colony
insert into damage(value, splash, ground, air, range) values(20, false, true, true, 7); -- photon cannon
insert into damage(value, splash, ground, air, range) values(20, false, false, true, 7); -- missile turret

-- units
insert into damage(value, splash, ground, air, range) values(5, false, true, false, 1); -- drone
insert into damage(value, splash, ground, air, range) values(5, false, true, false, 1); -- zergling
insert into damage(value, splash, ground, air, range) values(10, false, true, true, 4); -- hydralisk
insert into damage(value, splash, ground, air, range) values(9, false, true, true, 3); -- mutalisk
insert into damage(value, splash, ground, air, range) values(20, false, true, false, 8); -- guardian
insert into damage(value, splash, ground, air, range) values(20, false, true, false, 1); -- ultralisk
insert into damage(value, splash, ground, air, range) values(5, false, true, false, 1); -- probe
insert into damage(value, splash, ground, air, range) values(16, false, true, false, 1); -- zealot
insert into damage(value, splash, ground, air, range) values(20, false, true, true, 4); -- dragoon
insert into damage(value, splash, ground, air, range) values(100, true, true, false, 8); -- reaver
insert into damage(value, splash, ground, air, range) values(28, false, true, true, 4); -- scout
insert into damage(value, splash, ground, air, range) values(5, true, false, true, 5); -- corsair
insert into damage(value, splash, ground, air, range) values(5, false, true, false, 1); -- scv
insert into damage(value, splash, ground, air, range) values(6, false, true, true, 4); -- marine
insert into damage(value, splash, ground, air, range) values(16, false, true, false, 2); -- firebat
insert into damage(value, splash, ground, air, range) values(70, true, true, false, 12); -- tank
insert into damage(value, splash, ground, air, range) values(20, false, true, false, 5); -- vulture
insert into damage(value, splash, ground, air, range) values(12, false, true, true, 8); -- goliath
insert into damage(value, splash, ground, air, range) values(8, false, true, true, 5); -- wraith
insert into damage(value, splash, ground, air, range) values(6, true, false, true, 6); -- valkyrie

-- heroes
insert into damage(value, splash, ground, air, range) values(20, false, true, true, 5); -- hunter killer
insert into damage(value, splash, ground, air, range) values(50, false, true, false, 1); -- torrasque
insert into damage(value, splash, ground, air, range) values(45, false, true, true, 6); -- fenix
insert into damage(value, splash, ground, air, range) values(50, false, true, true, 5); -- artanis
insert into damage(value, splash, ground, air, range) values(40, false, true, false, 6); -- jim raynor
insert into damage(value, splash, ground, air, range) values(150, true, true, false, 15); -- edmund duke

insert into building(building_name, health_id, damage_id, vespene_gas, minerals, supply, race_id) values('Hatchery', 1, null, null, 300, 1, 1);
insert into building(building_name, health_id, damage_id, vespene_gas, minerals, supply, race_id) values('Nexus', 2, null, null, 400, 9, 2);
insert into building(building_name, health_id, damage_id, vespene_gas, minerals, supply, race_id) values('Gateway', 3, null, null, 150, null, 2);
insert into building(building_name, health_id, damage_id, vespene_gas, minerals, supply, race_id) values('Robotics Facility', 4, null, 200, 200, null, 2);
insert into building(building_name, health_id, damage_id, vespene_gas, minerals, supply, race_id) values('Stargate', 5, null, 150, 150, null, 2);
insert into building(building_name, health_id, damage_id, vespene_gas, minerals, supply, race_id) values('Command Center', 6, null, null, 400, 10, 3);
insert into building(building_name, health_id, damage_id, vespene_gas, minerals, supply, race_id) values('Barracks', 7, null, null, 150, null, 3);
insert into building(building_name, health_id, damage_id, vespene_gas, minerals, supply, race_id) values('Factory', 8, null, 100, 200, null, 3);
insert into building(building_name, health_id, damage_id, vespene_gas, minerals, supply, race_id) values('Starport', 9, null, 100, 150, null, 3);
insert into building(building_name, health_id, damage_id, vespene_gas, minerals, supply, race_id) values('Sunken Colony', 10, 1, null, 125, null, 1);
insert into building(building_name, health_id, damage_id, vespene_gas, minerals, supply, race_id) values('Spore Colony', 11, 2, null, 125, null, 1);
insert into building(building_name, health_id, damage_id, vespene_gas, minerals, supply, race_id) values('Photon Cannon', 12, 3, null, 150, null, 2);
insert into building(building_name, health_id, damage_id, vespene_gas, minerals, supply, race_id) values('Missile Turret', 13, 4, null, 75, null, 3);

insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Drone', true, 14, 5, 1, null, 50, 1, 1);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Overlord', false, 15, null, 1, null, 100, -8, 1);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Zergling', true, 16, 6, 1, null, 25, 1, 1);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Hydralisk', true, 17, 7, 1, 25, 75, 1, 1);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Mutalisk', false, 18, 8, 1, 100, 100, 2, 1);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Guardian', false, 19, 9, 1, 200, 150, 2, 1);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Ultralisk', true, 20, 10, 1, 200, 200, 4, 1);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Probe', true, 21, 11, 2, null, 50, 1, 2);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Zealot', true, 22, 12, 3, null, 100, 2, 2);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Dragoon', true, 23, 13, 3, 50, 125, 2, 2);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Reaver', true, 24, 14, 4, 100, 200, 4, 2);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Shuttle', false, 25, null, 4, null, 200, 2, 2);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Scout', false, 26, 15, 5, 125, 275, 3, 2);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Corsair', false, 27, 16, 5, 100, 150, 2, 2);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('SCV', true, 28, 17, 6, null, 50, 1, 3);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Marine', true, 29, 18, 7, null, 50, 1, 3);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Firebat', true, 30, 19, 7, 25, 50, 1, 3);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Tank', true, 31, 20, 8, 100, 150, 2, 3);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Vulture', true, 32, 21, 8, null, 75, 2, 3);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Goliath', true, 33, 22, 8, 50, 100, 2, 3);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Wraith', false, 34, 23, 9, 100, 150, 2, 3);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Valkyrie', false, 35, 24, 9, 125, 250, 3, 3);
insert into unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id) values('Dropship', false, 36, null, 9, 100, 100, 2, 3);

insert into hero(hero_name, health_id, damage_id, race_id) values('Hunter Killer', 37, 25, 1);
insert into hero(hero_name, health_id, damage_id, race_id) values('Torrasque', 38, 26, 1);
insert into hero(hero_name, health_id, damage_id, race_id) values('Fenix', 39, 27, 2);
insert into hero(hero_name, health_id, damage_id, race_id) values('Artanis', 40, 28, 2);
insert into hero(hero_name, health_id, damage_id, race_id) values('Jim Raynor', 41, 29, 3);
insert into hero(hero_name, health_id, damage_id, race_id) values('Edmund Duke', 42, 30, 3);

insert into unit_hero values(4, 1);
insert into unit_hero values(7, 2);
insert into unit_hero values(10, 3);
insert into unit_hero values(13, 4);
insert into unit_hero values(16, 5);
insert into unit_hero values(19, 5);
insert into unit_hero values(18, 6);

insert into map(map_id, map_name, width, height) values(1, 'Lost Temple', 128, 128);
insert into map(map_id, map_name, width, height) values(2, 'Luna,', 128, 128);
insert into map(map_id, map_name, width, height) values(3, 'Python', 128, 128);
insert into map(map_id, map_name, width, height) values(4, 'Destination', 128, 96);
insert into map(map_id, map_name, width, height) values(5, 'Fighting Spirit', 128, 128);
