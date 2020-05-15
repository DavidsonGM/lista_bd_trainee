ALTER TABLE Actors ADD birth_date date;
UPDATE Actors SET birth_date = '1965-04-04' WHERE actor_name = 'Robert Downey Jr.';