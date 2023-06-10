CREATE DATABASE futbolistas;

USE futbolistas;


CREATE TABLE argentinos(
	orden INT auto_increment PRIMARY KEY,
    apellido VARCHAR(20) NOT NULL,
    posicion ENUM("Arquero","Defensor","Mediocampo","Delantero"),
    edad VARCHAR(2) DEFAULT " ",
    pais VARCHAR(10) DEFAULT "Argentina"
);

CREATE TABLE internacionales(
	orden INT auto_increment PRIMARY KEY,
    apellido VARCHAR(20) NOT NULL,
    nacionalidad VARCHAR(20) NOT NULL
);

CREATE TABLE goleadores(
	orden INT auto_increment PRIMARY KEY,
    apellido VARCHAR(20) NOT NULL,
    nacionalidad VARCHAR(20) NOT NULL,
    goles INT UNSIGNED,
    partidos INT UNSIGNED
);

DESCRIBE argentinos;
DESCRIBE goleadores;
DESCRIBE internacionales;

INSERT INTO argentinos(apellido,edad,posicion) VALUES
	("Fillol","73","Arquero"),
	("Perfumo","","Defensor"),
	("Sorin","43","Defensor"),
	("Zanetti","49","Defensor"),
	("Redondo","54","Mediocampo"),
	("Pasarella","75","Defensor"),
	("Caniggia","60","Delantero"),
	("Simeone","53","Mediocampo"),
	("Batistuta","56","Delantero"),
	("Maradona","","Delantero"),
	("Messi","37","Delantero")
	;

INSERT INTO internacionales(apellido,nacionalidad) VALUES
("Yashin","URSS"),
("Beckenbauer","Aleman"),
("Maldini","Italiano"),
("Cafu","Brasilero"),
("Varela","Uruguayo"),
("Matthaus","Aleman"),
("Ronaldo","Portugues"),
("Messi","Argentino"),
("Ronaldo","Brasilero"),
("Maradona","Argentino"),
("Pele","Brasilero")
;

INSERT INTO goleadores(apellido,nacionalidad,goles,partidos) VALUES
("Klose","Aleman","16","24"),
("Ronaldo","Brasilero","15","19"),
("Muller","Aleman","14","13"),
("Fontaine","Franses","13","6"),
("Pele","Brasilero","12","14"),
("Klinsmann","Aleman","11","17"),
("Kocsis","Hungaro","11","5"),
("Rahn","Aleman","10","10"),
("Batistuta","Argentino","10","12"),
("Lineker","Ingles","10","12")
;

SELECT * FROM argentinos;
SELECT apellido,posicion FROM argentinos;
SELECT apellido FROM internacionales;
SELECT apellido FROM goleadores LIMIT 5;