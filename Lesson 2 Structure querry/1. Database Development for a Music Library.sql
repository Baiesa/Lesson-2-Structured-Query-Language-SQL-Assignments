SELECT * FROM Albums;
SELECT * FROM Genre;
SELECT * FROM Artists;

-- Create Genre table
CREATE TABLE Genre (
    genre_id INT PRIMARY KEY AUTO_INCREMENT,
    genre_name VARCHAR(255) NOT NULL
);

-- Create Artists table
CREATE TABLE Artists (
    artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(255) NOT NULL
);

-- Create Albums table
CREATE TABLE Albums (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    artist_id INT,
    genre_id INT,
    release_year INT,
    total_tracks INT,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
    FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);

-- Add column for total duration in minutes to Albums table
ALTER TABLE Albums 
ADD COLUMN 
duration_minutes INT;

-- Assuming Artists and Genre tables already have an 'id' column
ALTER TABLE Albums 
ADD CONSTRAINT fk_artist FOREIGN KEY (artist_id) REFERENCES Artists(artist_id),
ADD CONSTRAINT fk_genre FOREIGN KEY (genre_id) REFERENCES Genre(genre_id);


