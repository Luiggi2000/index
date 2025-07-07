CREATE DATABASE IF NOT EXISTS PRACTICA;
USE PRACTICA
CREATE TABLE personasorigen (
  PersonaID INT64 NOT NULL,
  Origen STRING(100),
  Ocupacion STRING(100),
  Estudio STRING(100),
) PRIMARY KEY (PersonaID);

CREATE TABLE datospersonales (
  PersonaID INT64 NOT NULL,
  Nombre STRING(100),
  Apellido STRING(100),
  FechaNacimiento DATE
) PRIMARY KEY (PersonaID)

CREATE TABLE Telefonos (
  PersonaID INT64 NOT NULL,
  Telefono STRING(20),
  TelefonoID INT64 NOT NULL
) PRIMARY KEY (PersonaID, TelefonoID)

INSERT INTO personasorigen (PersonaID, Ocupacion, Estudio) VALUES
(1, 'Estudia', 'Ingeniería de Sistemas'),
(2, 'Trabaja', 'Contador'),
(3, 'Estudia', 'Medicina'),
(4, 'Trabaja', 'Docente'),
(5, 'Estudia', 'Arquitectura');

INSERT INTO DatosPersonales (PersonaID, Nombre, Apellido, FechaNacimiento) VALUES
(1, 'Juan', 'Perez', DATE '2000-05-14'),
(2, 'Lucía', 'Gomez', DATE '1995-08-22'),
(3, 'Carlos', 'Sanchez', DATE '2003-03-30'),
(4, 'Ana', 'Lopez', DATE '1990-11-10'),
(5, 'Diego', 'Ramirez', DATE '2001-01-25');

INSERT INTO Telefonos (PersonaID, Telefono, TelefonoID) VALUES
(1, '987654321', 1),
(1, '912345678', 2),
(2, '923456789', 1),
(3, '934567890', 1),
(3, '900123456', 2),
(4, '978123456', 1),
(5, '999888777', 1),
(5, '922111333', 2);
