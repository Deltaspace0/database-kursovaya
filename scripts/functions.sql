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
        WHERE race_id = (SELECT race_id FROM race WHERE race_name = race_name_param);
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_units_by_race('Terran');


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
        WHERE race_id = (SELECT race_id FROM race WHERE race_name = race_name_param);
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_buildings_by_race('Protoss');

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
        WHERE race_id = (SELECT race_id FROM race WHERE race_name = race_name_param);
END;
$$ LANGUAGE plpgsql;

SELECT * FROM get_heroes_by_race('Zerg');

