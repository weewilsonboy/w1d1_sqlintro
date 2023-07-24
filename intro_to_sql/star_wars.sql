DROP TABLE lightsabers;
DROP TABLE characters;

CREATE TABLE characters (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    darkside BOOLEAN,
    age INT
);


CREATE TABLE lightsabers(
    id SERIAL PRIMARY KEY,
    hilt_metal VARCHAR(255) NOT NULL,
    colour VARCHAR(255) NOT NULL,
    character_id INT REFERENCES characters(id)
);

INSERT INTO characters (name, darkside, age) VALUES ('Obi-Wan Kenobi', false, 27);
INSERT INTO characters (name, darkside, age) VALUES ('Anakin Skywalker', false, 19);
INSERT INTO characters (name, darkside, age) VALUES ('Darth Maul', true, 32);
INSERT INTO characters (name, darkside, age) VALUES ('Mace Windu', false, 54);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
UPDATE characters SET darkside = true, name = 'Darth Vader' WHERE name = 'Anakin Skywalker';
UPDATE characters SET age = 20 WHERE name = 'Darth Vader';
DELETE FROM characters WHERE name = 'Darth Maul';


SELECT * FROM characters;
INSERT INTO lightsabers (hilt_metal, colour, character_id) VALUES ('Mandalorian Iron', 'red', 2);
INSERT INTO lightsabers (hilt_metal, colour, character_id) VALUES ('Mandalorian Iron', 'purple', 4);
SELECT * FROM lightsabers;
SELECT * FROM lightsabers WHERE character_id = 2;