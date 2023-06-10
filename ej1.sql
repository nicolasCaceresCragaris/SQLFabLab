CREATE DATABASE fablab;
USE fablab;

CREATE TABLE alumnos(
	apellido VARCHAR(30) NOT NULL,
	dni INT PRIMARY KEY,
    edad INT UNSIGNED,
    partido VARCHAR(30) DEFAULT "Vicente Lopez"
);

CREATE TABLE docentes(
	apellido VARCHAR(30) NOT NULL,
    curso	VARCHAR(30) NOT NULL,
    legajo	INT PRIMARY KEY
);

CREATE DATABASE baseDeDatos;
USE baseDeDatos;

CREATE TABLE listado(
	numero INT AUTO_INCREMENT PRIMARY KEY,
	alumno VARCHAR(30) NOT NULL,
    genero ENUM("Masculino","Femenino","Otro"),
    condicion TINYINT
);

USE fabLab;

DROP TABLE docentes;
DROP DATABASE baseDeDatos;

SHOW TABLES;
DESCRIBE alumnos;
SHOW DATABASES;


