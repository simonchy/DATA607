CREATE TABLE people (
    person_id INT AUTO_INCREMENT PRIMARY KEY,
    person_name VARCHAR(255) NOT NULL
);

CREATE TABLE movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_name VARCHAR(255) NOT NULL
);

CREATE TABLE ratings (
    rating_id INT AUTO_INCREMENT PRIMARY KEY,
    person_id INT,
    movie_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    FOREIGN KEY (person_id) REFERENCES people(person_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

-- Insert people
INSERT INTO people (person_name) VALUES ('Felix'), ('Josh'), ('Sam'), ('Paul'), ('Willson');

-- Insert movies
INSERT INTO movies (movie_name) VALUES ('Oppenheimer'), ('Barbie'), ('Spider-Man: Across the Spider-Verse'), ('Guardians of the Galaxy Vol. 3'), ('John Wick: Chapter 4'), ('Mission: Impossible - Dead Reckoning Part One');

-- Insert ratings
INSERT INTO ratings (person_id, movie_id, rating) 
VALUES 
(1, 1, 5), (1, 2, 4), (1, 4, 3), (1, 5, 5), (1, 6, 4),
(2, 1, 4), (2, 3, 5), (2, 4, 4), (2, 5, 3), (2, 6, 2),
(3, 2, 5), (3, 3, 4), (3, 4, 4), (3, 5, 5), (3, 6, 5);

commit;