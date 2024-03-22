PRAGMA foreign_keys = ON;

-- Create Users Table
CREATE TABLE Users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  motto TEXT
);

-- Create Dogs Table
CREATE TABLE Dogs (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL
);

-- Create Favorites Table
CREATE TABLE Favorites (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_id INTEGER,
  dog_id INTEGER,
  FOREIGN KEY (user_id) REFERENCES Users(id),
  FOREIGN KEY (dog_id) REFERENCES Dogs(id),
  UNIQUE(user_id, dog_id)
);

ALTER TABLE Favorites
ADD CONSTRAINT UC_Favorites UNIQUE (user_id, dog_id);

-- Users Data Entry
INSERT INTO Users (first_name, last_name, motto)
VALUES ('Jon', 'Higgz', 'I love coding');

INSERT INTO Users (first_name, last_name, motto)
VALUES ('Andrey', 'Rusterton', 'I love coding even more');

INSERT INTO Users (first_name, last_name, motto)
VALUES ('Peter', 'Garboni', 'I love coding even more');

-- Dogs Data Entry 
INSERT INTO Dogs (name)
VALUES ('DOOMSLAYER');

INSERT INTO Dogs (name) 
VALUES ('Zoey');

INSERT INTO Dogs (name)
VALUES ('Jefferey');

-- Favorites Data Entry
INSERT INTO Favorites (user_id, dog_id)
VALUES (3, 1);

INSERT INTO Favorites (user_id, dog_id)
VALUES (1, 1);

INSERT INTO Favorites (user_id, dog_id)
VALUES (2, 1);

INSERT INTO Favorites (user_id, dog_id)
VALUES (1, 3);

INSERT INTO Favorites (user_id, dog_id)
VALUES (2, 2);