DROP TABLE IF EXISTS Affiliation;
DROP TABLE IF EXISTS Superheroes_Power;
DROP TABLE IF EXISTS Sidekicks;
DROP TABLE IF EXISTS Weakness;
DROP TABLE IF EXISTS Superhero_Weakness;
DROP TABLE IF EXISTS Superheroes;
DROP TABLE IF EXISTS Power;
DROP TABLE IF EXISTS PowerType;

CREATE TABLE `Affiliation` (
  `Affiliation_Id`  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `Name` TEXT NOT NULL
);

INSERT INTO Affiliation VALUES (null, "Justice League");
INSERT INTO Affiliation VALUES (null, "X-Men");


CREATE TABLE `Superheroes` (
    `Superhero_Id`  INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `Name`    TEXT NOT NULL,
    `Gender`    TEXT NOT NULL,
    `Secret_Id` TEXT NOT NULL,
    `Affiliation_Id` TEXT,
    FOREIGN KEY(`Affiliation_Id`) REFERENCES `Affiliation`(`Affiliation_Id`)
);

INSERT INTO Superheroes VALUES (null, 'Green Lantern', 'M', 'Hal Jordan', null);
INSERT INTO Superheroes VALUES (null, 'Wonder Woman', 'F', 'Dianna Prince', null);
INSERT INTO Superheroes VALUES (null, 'Batman', 'M', 'Bruce Wayne', null);

CREATE TABLE `Sidekicks` (
    `Sidekick_Id`    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `Name`    TEXT NOT NULL,
    `Gender`    TEXT NOT NULL,
    `Profession`    TEXT NOT NULL,
    `Superhero_Id`    INTEGER NOT NULL,
    FOREIGN KEY(`Superhero_Id`) REFERENCES `Superheroes`(`Superhero_Id`)
);

INSERT INTO Sidekicks
  SELECT null, 'Robin', 'M', 'Neerdowell', Superhero_Id
  FROM Superheroes s
  WHERE s.Name = 'Batman';

INSERT INTO Sidekicks
  SELECT null, 'Bat Girl', 'F', 'Maxine Jenkins', Superhero_Id
  FROM Superheroes s
  WHERE s.Name = 'Batman';


CREATE TABLE `PowerType` (
    `PowerType_Id`    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `Name`    TEXT NOT NULL
);

INSERT INTO PowerType VALUES (null, 'Physical');
INSERT INTO PowerType VALUES (null, 'Energy');


CREATE TABLE `Power` (
    `Power_Id`    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `Name`    TEXT NOT NULL,
    `PowerType_Id`    INTEGER NOT NULL,
    FOREIGN KEY(`PowerType_Id`) REFERENCES `PowerType`(`PowerType_Id`)
);

INSERT INTO Power
  -- shortcut of sorts for adding a fk id to a table while searching for that id at the same time
  SELECT null, 'Super Strength', PowerType_Id
  FROM PowerType
  WHERE Name = 'Physical';

INSERT INTO Power
  SELECT null, 'Elasticity', PowerType_Id
  FROM PowerType
  WHERE Name = 'Physical';

INSERT INTO Power
  SELECT null, 'Laser Eyesight', PowerType_Id
  FROM PowerType
  WHERE Name = 'Energy';

INSERT INTO Power
  SELECT null, 'Storm Power', PowerType_Id
  FROM PowerType
  WHERE Name = 'Energy';

INSERT INTO Power
  SELECT null, 'Reality Manipulation', PowerType_Id
  FROM PowerType
  WHERE Name = 'Energy';

CREATE TABLE `Superheroes_Power` (
    `SuperheroPower_Id`    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `Superhero_Id`    INTEGER NOT NULL,
    `Power_Id`    INTEGER NOT NULL,
    FOREIGN KEY(`Power_Id`) REFERENCES `Power`(`Power_Id`),
    FOREIGN KEY(`Superhero_Id`) REFERENCES `Superheroes`(`Superhero_Id`)
);

INSERT INTO Superheroes_Power
  SELECT null, s.Superhero_Id, p.Power_Id
  FROM Power p, Superheroes s
  WHERE s.Name = 'Wonder Woman' and p.Name = "Super Strength";

INSERT INTO Superheroes_Power
  SELECT null, s.Superhero_Id, p.Power_Id
  FROM Power p, Superheroes s
  WHERE s.Name = 'Green Lantern' and p.Name = "Reality Manipulation";


CREATE TABLE `Weakness` (
    `Weakness_Id`    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `Name`    TEXT NOT NULL
);

INSERT INTO Weakness VALUES (null, 'Yellow');
INSERT INTO Weakness VALUES (null, 'Kryptonite');

CREATE TABLE `Superhero_Weakness` (
    `SuperheroWeakness_Id`    INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    `Superhero_Id`    INTEGER NOT NULL,
    `Weakness_Id`    INTEGER NOT NULL,
    FOREIGN KEY(`Weakness_Id`) REFERENCES `Weakness`(`Weakness_Id`),
    FOREIGN KEY(`Superhero_Id`) REFERENCES `Superheroes`(`Superhero_Id`)
);

INSERT INTO Superhero_Weakness
  SELECT null, s.Superhero_Id, w.Weakness_Id
  FROM Weakness w, Superheroes s
  WHERE s.Name = 'Green Lantern' and w.Name = "Yellow";