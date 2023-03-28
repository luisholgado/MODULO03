-- Crear Base de datos
CREATE DATABASE dbprueba;
 
 -- Seleccionar una base de datos
 
 USE dbprueba;
 
 -- Creando la tabla persona
 CREATE TABLE `tblpersona` (
  `id_persona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `tipo_doc` char(1) DEFAULT NULL, -- 1:dni-2:carnet estrangeria-3:pasaporte
  `num_docu` char(12) DEFAULT NULL,
  `direccion` varchar(250) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `fec_nacimiento` date DEFAULT NULL,
  `genero` char(1) DEFAULT NULL,-- M: Masculino F:Femenino
  `estado` char(1) DEFAULT NULL, -- 1 Habilitado 2: Deshabilitado
  PRIMARY KEY (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Insertando registros en SQL
INSERT INTO `dbprueba`.`tblpersona` (`id_persona`, `nombre`, `apellido`, `tipo_doc`, `num_docu`, `direccion`, `telefono`, `fec_nacimiento`, `genero`, `estado`) VALUES ('1', 'Luis', 'Holgado', '1', '44076704', 'Lima', '575757', '1985-02-02', 'M', '1');
INSERT INTO `dbprueba`.`tblpersona` (`id_persona`, `nombre`, `apellido`, `tipo_doc`, `num_docu`, `direccion`, `telefono`, `fec_nacimiento`, `genero`, `estado`) VALUES ('2', 'Maria', 'Puma', '1', '45102017', 'Lima', '575856', '1986-02-05', 'F', '1');

-- Actualizar tabla
UPDATE `dbprueba`.`tblpersona` SET `num_docu` = '45102019' WHERE (`id_persona` = '2');

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