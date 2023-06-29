CREATE DATABASE escuela;
USE escuela;

CREATE TABLE materias(
	codigo INT PRIMARY KEY,
    materia VARCHAR(20) NOT NULL,
    docente VARCHAR(20) NOT NULL,
    cargaHoraria INT UNSIGNED
	);
    
CREATE TABLE alumnos(
	orden INT AUTO_INCREMENT PRIMARY KEY, 
	apellido VARCHAR(20) NOT NULL,
    promedio FLOAT
);

INSERT INTO materias (codigo,materia,docente,cargaHoraria) VALUES
(23,"lengua","lopez",4),
(34,"matemática","gimenez",6),
(98,"física","juarez",4),
(76,"historia","fernández",4),
(93,"química","juarez",2),
(66,"geogrfía","fernández",2),
(12,"arte","peñalba",4),
(55,"gimnasia","antúnez",4),
(36,"biología","gonzález",3)
;

INSERT INTO alumnos (apellido,promedio) VALUES
	("fernández",8),
	("silva",5),
	("derecho",8),
	("saletes",7),
	("martinez",3),
	("gonzález",8),
	("casimiro",6),
	("martinez",4),
	("soria",10),
	("alvarez",7)
;

SELECT * FROM alumnos;
SELECT * FROM alumnos WHERE apellido = "martinez";
SELECT materia FROM materias WHERE cargaHoraria=2 OR cargaHoraria=4;
SELECT apellido FROM alumnos WHERE promedio>=7;
SELECT apellido FROM alumnos WHERE apellido LIKE "%ez";
