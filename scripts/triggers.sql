-- При вставке новой записи в obstacle, убедиться, что координаты не выходят за пределы размеров карты
CREATE OR REPLACE FUNCTION check_obstacle_coordinates()
    RETURNS TRIGGER AS $$
BEGIN
    IF NEW.x < 0 OR NEW.y < 0 OR
       NEW.x >= (SELECT width FROM map WHERE map_id = NEW.map_id) OR
       NEW.y >= (SELECT height FROM map WHERE map_id = NEW.map_id) THEN
        RAISE EXCEPTION 'Obstacle coordinates are out of bounds';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_obstacle_coordinates_trigger
    BEFORE INSERT ON obstacle
    FOR EACH ROW
EXECUTE FUNCTION check_obstacle_coordinates();


-- При вставке новой записи в building/unit/hero, проверить, чтобы race_id соответствовал race_id в связанной таблице
CREATE OR REPLACE FUNCTION check_race_id_consistency()
    RETURNS TRIGGER AS $$
BEGIN
    IF NEW.race_id <> (SELECT race_id FROM race WHERE race_id = NEW.race_id) THEN
        RAISE EXCEPTION 'This race_id does not exist';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_race_id_for_building_trigger
    BEFORE INSERT ON building
    FOR EACH ROW
EXECUTE FUNCTION check_race_id_consistency();

CREATE TRIGGER check_race_id_for_unit_trigger
    BEFORE INSERT ON unit
    FOR EACH ROW
EXECUTE FUNCTION check_race_id_consistency();

CREATE TRIGGER check_race_id_for_hero_trigger
    BEFORE INSERT ON hero
    FOR EACH ROW
EXECUTE FUNCTION check_race_id_consistency();


-- При вставке новой записи в unit_hero, убедиться, что unit_id и hero_id существуют в соответствующих таблицах
CREATE OR REPLACE FUNCTION check_unit_hero_entries()
    RETURNS TRIGGER AS $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM unit WHERE unit_id = NEW.unit_id) THEN
        RAISE EXCEPTION 'This unit_id does no exist';
    END IF;
    IF NOT EXISTS (SELECT 1 FROM hero WHERE hero_id = NEW.hero_id) THEN
    RAISE EXCEPTION 'This hero_id does not exist';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER check_unit_hero_trigger
    BEFORE INSERT ON unit_hero
    FOR EACH ROW
EXECUTE FUNCTION check_unit_hero_entries();
