
-- Base de Datos ZOO

CREATE DATABASE IF NOT EXISTS ZOO;
USE ZOO;

-- TABLA CUIDADORES

CREATE TABLE IF NOT EXISTS CUIDADORES (
  DNI CHAR(9) NOT NULL,
  NOMBRE CHAR(50) NOT NULL,
  APELLIDOS CHAR(50),
  FECHA_NAC DATE,
  LOCALIDAD CHAR (60),
  PRIMARY KEY (DNI)
) ENGINE=InnoDB;

-- TABLA ANIMALES

CREATE TABLE IF NOT EXISTS ANIMALES (
  COD_ANIMAL INT(5) NOT NULL,
  NOMBRE CHAR(10) NOT NULL,
  TIPO_ANIMAL CHAR(10) NOT NULL,
  GENERO CHAR(12),
  EDAD INT(4),
  TIPO_COMIDA CHAR(16),
  CUIDADOR CHAR(9) NOT NULL,
  PRIMARY KEY (COD_ANIMAL), 
  FOREIGN KEY (CUIDADOR) REFERENCES CUIDADORES(DNI)
) ENGINE=InnoDB;

-- INSERTAR DATOS EN TABLA CUIDADORES

INSERT INTO CUIDADORES (DNI, NOMBRE, APELLIDOS, FECHA_NAC, LOCALIDAD) VALUES
('25485755D', 'Jesús', 'Sánchez Olmedo', '1958/05/21', 'Málaga'),
('54254123P', 'Antonio', 'Domínguez García', '1968/05/10', 'Málaga'),
('45752365J', 'Miriam', 'García Fernández', '1975/12/18', 'Málaga'),
('57894562H', 'Jennifer', 'Fernández Florido', '1988/08/07', 'Málaga');

-- INSERTAR DATOS EN TABLA ANIMALES

INSERT INTO ANIMALES (COD_ANIMAL, NOMBRE, TIPO_ANIMAL, GENERO, EDAD ,TIPO_COMIDA, CUIDADOR) VALUES
('1', 'Bobby', 'Gorila', 'Macho', '10', 'Platano', '54254123P'),
('2', 'Samanta', 'Serpiente', 'Hembra', '2', 'Ratones', '25485755D'),
('3', 'Simba', 'León', 'Macho', '6', 'Carne', '57894562H'),
('4', 'Timon', 'Lemur', 'Hembra', '5', 'Insectos', '45752365J'),
('5', 'Dumbo', 'Elefante', 'Macho', '7', 'Cacahuetes', '25485755D'),
('6', 'Lenny', 'Pingüino', 'Hembra', '3', 'Pescado', '57894562H');