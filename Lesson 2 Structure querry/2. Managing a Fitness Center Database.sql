

CREATE TABLE Trainers (
trainer_id INT AUTO_INCREMENT PRIMARY KEY,
trainer_name VARCHAR(50) NOT NULL);


CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT,
    trainer_id INT,
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id)
);

-- Inserting records into the Members table
INSERT INTO Members (id, name, age, trainer_id)
VALUES 
(1, 'John Smith', 30, 101),
(2, 'Jane Doe', 25, 102),
(3, 'Michael Johnson', 35, 103);
       
SELECT * FROM Members;

CREATE TABLE WorkoutSessions(
id INT AUTO_INCREMENT 
);

-- Inserting records into the WorkoutSessions table
INSERT INTO WorkoutSessions (session_id, member_id, session_time)
VALUES (1, 1, 'Morning'),
       (2, 2, 'Morning'),
       (3, 3, 'Evening');
       
-- Update workout session time for Jane Doe
UPDATE WorkoutSessions
SET session_time = 'Evening'
WHERE member_id = (SELECT id FROM Members WHERE name = 'Jane Doe');

-- Remove data of John Smith who has canceled his membership
DELETE FROM Members
WHERE name = 'John Smith';