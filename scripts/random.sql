DO $$
BEGIN
    FOR i IN 1..100000 LOOP
        INSERT INTO unit(unit_name, on_ground, health_id, damage_id, building_id, vespene_gas, minerals, supply, race_id)
        VALUES ('Random Unit', false, 36, null, 9, 1, 1, 2, 3);
    END LOOP;
END $$;
