-- read json files, create a duckdb database file.
ATTACH DATABASE 'sw_database.duckdb' AS sw;

DROP TABLE IF EXISTS sw.films;
CREATE TABLE sw.films AS(
    SELECT
        pk                                      AS id,
        model                                   AS type,
        STRUCT_EXTRACT(fields, 'title')         AS title,
        STRUCT_EXTRACT(fields, 'episode_id')    AS episode_id,
        STRUCT_EXTRACT(fields, 'director')      AS director,
        STRUCT_EXTRACT(fields, 'producer')      AS producer,
        STRUCT_EXTRACT(fields, 'release_date')  AS release_date,
        STRUCT_EXTRACT(fields, 'characters')    AS characters,
        STRUCT_EXTRACT(fields, 'species')       AS species,
        STRUCT_EXTRACT(fields, 'starships')     AS starships,
        STRUCT_EXTRACT(fields, 'vehicles')      AS vehicles,
        STRUCT_EXTRACT(fields, 'planets')       AS planets,
        STRUCT_EXTRACT(fields, 'opening_crawl') AS opening_crawl,
        STRUCT_EXTRACT(fields,'created')        AS created_at,
        STRUCT_EXTRACT(fields,'edited')         AS updated_at
    FROM READ_JSON_AUTO('films.json')
);

DROP TABLE IF EXISTS sw.people;
CREATE TABLE sw.people AS (
    SELECT
        pk                                   AS id,
        model                                AS type,
        STRUCT_EXTRACT(fields,'name')        AS full_name,
        STRUCT_EXTRACT(fields, 'gender')     AS gender,
        STRUCT_EXTRACT(fields, 'height')     AS height,
        STRUCT_EXTRACT(fields, 'skin_color') AS skin_color,
        STRUCT_EXTRACT(fields, 'hair_color') AS hair_color,
        STRUCT_EXTRACT(fields, 'eye_color')  AS eye_color,
        STRUCT_EXTRACT(fields, 'mass')       AS mass,
        STRUCT_EXTRACT(fields, 'homeworld')  AS homeworld,
        STRUCT_EXTRACT(fields, 'birth_year') AS birth_year,
        STRUCT_EXTRACT(fields,'created')     AS created_at,
        STRUCT_EXTRACT(fields,'edited')      AS updated_at,
    FROM READ_JSON_AUTO('people.json')
);

DROP TABLE IF EXISTS sw.planets;
CREATE TABLE sw.planets AS (
    SELECT
        pk                                        AS id,
        model                                     AS type,
        STRUCT_EXTRACT(fields, 'name')            AS name,
        STRUCT_EXTRACT(fields, 'diameter')        AS diameter,
        STRUCT_EXTRACT(fields, 'gravity')         AS gravity,
        STRUCT_EXTRACT(fields, 'terrain')         AS terrain,
        STRUCT_EXTRACT(fields, 'climate')         AS climate,
        STRUCT_EXTRACT(fields, 'surface_water')   AS surface_water,
        STRUCT_EXTRACT(fields, 'population')      AS population,
        STRUCT_EXTRACT(fields, 'orbital_period')  AS orbital_period,
        STRUCT_EXTRACT(fields, 'rotation_period') AS rotation_period,
        STRUCT_EXTRACT(fields, 'created')         AS created_at,
        STRUCT_EXTRACT(fields, 'edited')          AS updated_at,
    FROM READ_JSON_AUTO('planets.json')
);

DROP TABLE IF EXISTS sw.species;
CREATE TABLE sw.species AS (
    SELECT
        pk                                         AS id,
        model                                      AS type,
        STRUCT_EXTRACT(fields, 'name')             AS name,
        STRUCT_EXTRACT(fields, 'designation')      AS designation,
        STRUCT_EXTRACT(fields, 'classification')   AS classification,
        STRUCT_EXTRACT(fields, 'language')         AS language,
        STRUCT_EXTRACT(fields, 'average_lifespan') AS average_lifespan,
        STRUCT_EXTRACT(fields, 'average_height')   AS average_height,
        STRUCT_EXTRACT(fields, 'eye_colors')       AS eye_colors,
        STRUCT_EXTRACT(fields, 'skin_colors')      AS skin_colors,
        STRUCT_EXTRACT(fields, 'hair_colors')      AS hair_colors,
        STRUCT_EXTRACT(fields, 'homeworld')        AS homeworld,
        STRUCT_EXTRACT(fields, 'people')           AS people,
        STRUCT_EXTRACT(fields, 'created')          AS created_at,
        STRUCT_EXTRACT(fields, 'edited')           AS updated_at,
    FROM READ_JSON_AUTO('species.json')
);

DROP TABLE IF EXISTS sw.starships;
CREATE TABLE sw.starships AS (
    SELECT
        pk                                          AS id,
        model                                       AS type,
        STRUCT_EXTRACT(fields, 'pilots')            AS pilots,
        STRUCT_EXTRACT(fields, 'MGLT')              AS MGLT,
        STRUCT_EXTRACT(fields, 'starship_class')    AS starship_class,
        STRUCT_EXTRACT(fields, 'hyperdrive_rating') AS hyperdrive_rating,
        -- STRUCT_EXTRACT(fields, 'created')         AS created_at,
        -- STRUCT_EXTRACT(fields, 'edited')          AS updated_at,
    FROM READ_JSON_AUTO('starships.json')
);


DROP TABLE IF EXISTS sw.transport;
CREATE TABLE sw.transport AS (
    SELECT
        pk                                               AS id,
        model                                            AS type,
        STRUCT_EXTRACT(fields, 'name')                   AS name,
        STRUCT_EXTRACT(fields, 'model')                  AS model,
        STRUCT_EXTRACT(fields, 'manufacturer')           AS manufacturer,
        STRUCT_EXTRACT(fields, 'cargo_capacity')         AS cargo_capacity,
        STRUCT_EXTRACT(fields, 'max_atmosphering_speed') AS max_atmosphering_speed,
        STRUCT_EXTRACT(fields, 'length')                 AS length,
        STRUCT_EXTRACT(fields, 'crew')                   AS crew,
        STRUCT_EXTRACT(fields, 'passengers')             AS passengers,
        STRUCT_EXTRACT(fields, 'consumables')            AS consumables,
        STRUCT_EXTRACT(fields, 'cost_in_credits')        AS cost_in_credits,
        STRUCT_EXTRACT(fields, 'created')                AS created_at,
        STRUCT_EXTRACT(fields, 'edited')                 AS updated_at,
    FROM READ_JSON_AUTO('transport.json')
);

DROP TABLE IF EXISTS sw.vehicles;
CREATE TABLE sw.vehicles AS (
    SELECT
        pk                                      AS id,
        model                                   AS type,
        STRUCT_EXTRACT(fields, 'vehicle_class') AS vehicle_class,
        STRUCT_EXTRACT(fields, 'pilots')        AS pilots,
        -- STRUCT_EXTRACT(fields, 'created')       AS created_at,
        -- STRUCT_EXTRACT(fields, 'edited')        AS updated_at,
    FROM READ_JSON_AUTO('vehicles.json')
);

