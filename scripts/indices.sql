CREATE INDEX building_idx ON building USING btree(minerals, vespene_gas, supply);
CREATE INDEX unit_idx ON unit USING hash(unit_name);
CREATE INDEX hero_idx ON hero USING hash(hero_name);
CREATE INDEX map_idx ON map USING hash(map_name);
CREATE INDEX obstacle_idx ON obstacle USING hash(obstacle_name);