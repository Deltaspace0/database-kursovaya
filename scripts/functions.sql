-- Функция для получения всех unit'ов по выбранной race
CREATE OR REPLACE FUNCTION get_units_by_race(race_name_param text)
    RETURNS TABLE (
                      unit_id int,
                      unit_name text,
                      on_ground boolean,
                      health_id int,
                      damage_id int,
                      building_id int,
                      vespene_gas int,
                      minerals int,
                      supply int,
                      race_id int
                  ) AS $$
BEGIN
    RETURN QUERY
        SELECT *
        FROM unit
        WHERE unit.race_id = (SELECT race.race_id FROM race WHERE race_name = race_name_param);
END;
$$ LANGUAGE plpgsql;

-- SELECT * FROM get_units_by_race('Terran');


-- Функция для получения всех building по выбранной race
CREATE OR REPLACE FUNCTION get_buildings_by_race(race_name_param text)
    RETURNS TABLE (
                      building_id int,
                      health_id int,
                      damage_id int,
                      vespene_gas int,
                      minerals int,
                      supply int,
                      race_id int
                  ) AS $$
BEGIN
    RETURN QUERY
        SELECT *
        FROM building
        WHERE building.race_id = (SELECT race.race_id FROM race WHERE race_name = race_name_param);
END;
$$ LANGUAGE plpgsql;

-- SELECT * FROM get_buildings_by_race('Protoss');

-- Функция для получения всех hero по выбранной race
CREATE OR REPLACE FUNCTION get_heroes_by_race(race_name_param text)
    RETURNS TABLE (
                      hero_id int,
                      hero_name text,
                      health_id int,
                      damage_id int,
                      race_id int
                  ) AS $$
BEGIN
    RETURN QUERY
        SELECT *
        FROM hero
        WHERE hero.race_id = (SELECT race.race_id FROM race WHERE race_name = race_name_param);
END;
$$ LANGUAGE plpgsql;

-- SELECT * FROM get_heroes_by_race('Zerg');


-- Хранимая процедура для обновления здоровья юнита на основе полученного урона
CREATE OR REPLACE PROCEDURE update_unit_health(target_unit_id INT, damage_value INT)
    LANGUAGE plpgsql AS $$
BEGIN
    UPDATE unit
    SET health_id = health_id - damage_value
    WHERE unit.unit_id = target_unit_id;
END;
$$ LANGUAGE plpgsql;


-- Функция для создания ресурсного участка на карте
CREATE OR REPLACE FUNCTION create_resource_patch(target_map_id INT, target_resource_type_id INT, target_quantity INT, target_x INT, target_y INT)
    RETURNS VOID AS $$
BEGIN
    INSERT INTO resource_patch (map_id, resource_type_id, quantity, x, y)
    VALUES (target_map_id, target_resource_type_id, target_quantity, target_x, target_y);
END;
$$ LANGUAGE plpgsql;


-- Хранимая процедура для создания препятствия на карте
CREATE OR REPLACE PROCEDURE create_obstacle(target_obstacle_name TEXT, target_x INT, target_y INT, target_map_id INT)
    LANGUAGE plpgsql AS $$
BEGIN
    INSERT INTO obstacle (obstacle_name, x, y, map_id)
    VALUES (target_obstacle_name, target_x, target_y, target_map_id);
END;
$$ LANGUAGE plpgsql;



-- Функция для создания монолога героя
CREATE OR REPLACE FUNCTION create_hero_monologue(target_content TEXT, target_hero_id INT)
    RETURNS VOID AS $$
BEGIN
    INSERT INTO hero_monologue (content, hero_id)
    VALUES (target_content, target_hero_id);
END;
$$ LANGUAGE plpgsql;
