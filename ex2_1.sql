CREATE TABLE IF NOT EXISTS Movies (
    movie_id serial PRIMARY KEY,
    movie_name VARCHAR(40) NOT NULL, 
    release_year date
);

CREATE TABLE IF NOT EXISTS Actors (
    actor_id serial PRIMARY KEY, 
    actor_name VARCHAR(40) NOT NULL, 
    gender VARCHAR(10) NOT NULL
);

CREATE TABLE IF NOT EXISTS Characters (
    character_id serial PRIMARY KEY,
    character_name VARCHAR(40) NOT NULL,
    actor_id int REFERENCES Actors (actor_id),
    movie_id int REFERENCES Movies (movie_id)
);
INSERT INTO Movies
(movie_name, release_year)
Values
('Django Unchained', '2013-01-18'),
('Inception', '2010-08-06'),
('Pulp Fiction', '1995-02-18');
INSERT INTO Actors
(actor_name, gender)
Values
('Leonardo DiCaprio', 'Male'),
('Samuel L. Jackson', 'Male'),
('Uma Turman', 'Female');
INSERT INTO Characters
(character_name, actor_id, movie_id)
Values
('Calvin Candle', 1, 1),
('Cobb', 1, 2),
('Jules Winnfield', 2, 3);

INSERT INTO Movies (movie_name, release_year) 
VALUES
('Avengers: Endgame', '2019-04-25'),
('The Maze Runner', '2014-09-19');

INSERT INTO Actors (actor_name, gender)
VALUES
('Robert Downey Jr.', 'Male'),
('Thomas Brodie-Sangster', 'Male');

INSERT INTO Characters (character_name, actor_id, movie_id)
VALUES
('Tony Stark', 4, 4),
('Newt', 5, 5);