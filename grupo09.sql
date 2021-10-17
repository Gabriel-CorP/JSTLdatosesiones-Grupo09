DROP DATABASE IF EXISTS `grupo09`;
CREATE DATABASE `grupo09` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci */;
USE `grupo09`;

#
# Source for table employees
#

DROP TABLE IF EXISTS `libros`;
CREATE TABLE `libros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isbn` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'isbn',
  `titulo` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'nombre',
  `autor` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'apellido',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9819 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

#
# Dumping data for table employees
#

INSERT INTO `libros` VALUES (101,'978-84-249-1446-2','La Iliada','Homero');
INSERT INTO `libros` VALUES (102,'978-84-249-0302-2','La Odisea','Homero');
INSERT INTO `libros` VALUES (103,'978-84-249-1490-5','La Eneida','Virgilio');


DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(12) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'Anonimo',
  `clave` varchar(255) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'm1sm4',
  `nombre` varchar(100) COLLATE latin1_spanish_ci NOT NULL DEFAULT 'Anonimo Anonimo',
  `nivel` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

INSERT INTO `usuarios` VALUES (1,'Digitador','12345','Digi',1);
INSERT INTO `usuarios` VALUES (2,'Mantenimiento','12345','Mate',2);

