-- CREAR UNA BASE DE DATOS
CREATE DATABASE dbprueba;

-- SELECCIONAR BASE DE DATOS A USAR
USE dbprueba;

-- CREANDO LA TABLA tblpersona
CREATE TABLE `dbprueba`.`tblpersona` (
  `id_persona` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(50) NULL,
  `apellido` VARCHAR(50) NULL,
  `tipo_doc` CHAR(1) NULL, -- 1 : DNI - 2 : CARD. EXTRANGERIA - 3 : PASAPORTE
  `num_docu` CHAR(12) NULL,
  `direccion` VARCHAR(250) NULL,
  `telefono` VARCHAR(50) NULL,
  `fec_nacimiento` DATE NULL,
  `genero` CHAR(1) NULL, -- M : MASCULINO - F : FEMENINO
  `estado` CHAR(1) NULL, -- 1 : HABILITADO - 2 : DESHABILITADO - 3 : ELIMINADO
  PRIMARY KEY (`id_persona`));
  
  -- INSERTANDO DATOS A LA TABLA
INSERT INTO `dbprueba`.`tblpersona` 
(`nombre`, `apellido`, `tipo_doc`, `num_docu`, `direccion`, `telefono`, `fec_nacimiento`, `genero`, `estado`) 
VALUES 
('Eduardo', 'Tolentino', '1', '12345678', 'Jr. Lima 321', '987654321', '1995-12-12', 'M', '1');

INSERT INTO `dbprueba`.`tblpersona` 
(`nombre`, `apellido`, `tipo_doc`, `num_docu`, `direccion`, `telefono`, `fec_nacimiento`, `estado`, `genero`) 
VALUES 
('Karen', 'Quispe', '1', '87654323', 'Jr. Ayacucho 322', '987654323', '1995-11-14', '1', 'F');

-- ACTUALIZANDO CAMPOS DE LA TABLA
UPDATE `dbprueba`.`tblpersona` 
SET 
`num_docu` = '87654323', 
`direccion` = 'Jr. Ayacucho 322', 
`fec_nacimiento` = '1995-11-14' 
WHERE (`id_persona` = '3');

-- CONSULTANDO DATOS DE LA TABLA
SELECT id_persona, nombre, apellido, tipo_doc, num_docu, direccion, telefono, fec_nacimiento, genero, estado
FROM `dbprueba`.`tblpersona`;
-- ESTADO HABILITADO
SELECT id_persona, nombre, apellido, tipo_doc, num_docu, direccion, telefono, fec_nacimiento, genero, estado
FROM `dbprueba`.`tblpersona`
WHERE estado = '1';
-- ESTADO DESHABILITADO
SELECT id_persona, nombre, apellido, tipo_doc, num_docu, direccion, telefono, fec_nacimiento, genero, estado
FROM `dbprueba`.`tblpersona`
WHERE estado = '2';
-- ESTADO ELIMINADO
SELECT id_persona, nombre, apellido, tipo_doc, num_docu, direccion, telefono, fec_nacimiento, genero, estado
FROM `dbprueba`.`tblpersona`
WHERE estado = '3' AND nombre = 'Karen';
-- CONSULTAS CON QUERYS AGRUPADOS
SELECT id_persona, nombre, apellido, tipo_doc, num_docu, direccion, telefono, fec_nacimiento, genero, estado
FROM `dbprueba`.`tblpersona`
WHERE (estado = '3' OR estado = '1') AND genero = 'M';

-- ELIMINAR DATOS DE LA TABLA
DELETE FROM `dbprueba`.`tblpersona` WHERE id_persona = '3';

