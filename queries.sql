-- create table animals

CREATE TABLE animals (
    id INTEGER PRIMARY KEY,
    species TEXT,
    name TEXT,
    age INTEGER,
    was_fed INTEGER,
    favourite_food TEXT
);

-- insert some data

INSERT INTO animals (species, name, age, was_fed, favourite_food) VALUES ('pig', 'Peppa', 3, 0, 'corn');
INSERT INTO animals (species, name, age, was_fed, favourite_food) VALUES ('dog', 'Lexi', 7, 1, 'chicken');
INSERT INTO animals (species, name, age, was_fed, favourite_food) VALUES ('cat', 'Mittens', 2, 0, 'fish');

SELECT * FROM animals;

-- update some properties

UPDATE animals
SET was_fed = 1
WHERE species = 'dog';

-- remove one of the animals

DELETE FROM animals
WHERE species = 'cat';

-- remove the column favourite_food

ALTER TABLE animals DROP COLUMN favourite_food;

-- add a new column, call it origin

ALTER TABLE animals ADD COLUMN origin TEXT;

-- add the city of origin for each animal

UPDATE animals
SET origin = 'Prishtina'
WHERE species = 'Pig';

UPDATE animals
SET origin = 'Mitrovica'
WHERE species = 'Dog';

-- challenge part
-- update the was_fed column for all animals

UPDATE animals
SET was_fed = 1;
