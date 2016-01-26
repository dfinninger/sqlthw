-- Clean up
DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS pet;
DROP TABLE IF EXISTS person_pet;
-- Create the tables
CREATE TABLE person (
    id INTEGER PRIMAY KEY,
    first_name TEXT,
    last_name TEXT,
    age INTEGER
);

CREATE TABLE pet (
    id INTEGER PRIMARY KEY,
    name TEXT,
    breed TEXT,
    age INTEGER,
    dead INTEGER
);

CREATE TABLE person_pet (
    person_id INTEGER,
    pet_id INTEGER
);

-- Load data
INSERT INTO person (id, first_name, last_name, age)
    VALUES (0, "Devon", "Finninger", 24);

INSERT INTO pet (id, name, breed, age, dead)
    VALUES (0, "Fluffy", "Unicorn", 1000, 0);

INSERT INTO pet VALUES (1, "Gigantor", "Robot", 1, 1);

-- Create Relations
INSERT INTO person_pet (person_id, pet_id) VALUES (0, 0);
INSERT INTO person_pet VALUES (0, 1);

-- Select on some data
SELECT pet.id
    pet.name
    pet.breed
    pet.age
    pet.dead
    person.first_name AS 'Owner'
FROM 
    person,
    pet,
    person_pet
WHERE
    person_pet.person_id = person.id AND
    person_pet.pet_id = pet.id AND
    person.first_name = "Devon";

