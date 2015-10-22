-- CREATE
-- INSERT 
-- SELECT
-- UPDATE 
-- DELETE 

-- x = "person"
-- x = 1

CREATE TABLE person (
  id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  age INTEGER
);

INSERT INTO person (id, first_name, last_name) VALUES (0, "Greg", "McIntyre");

SELECT first_name, last_name FROM person;

UPDATE person SET first_name = "Ferdinand" WHERE first_name = "Greg";

DELETE FROM person WHERE first_name = "Ferdinand";

DROP TABLE person;
