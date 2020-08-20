/*
 Navicat Premium Data Transfer

 Source Server         : rhr
 Source Server Type    : MySQL
 Source Server Version : 100322
 Source Host           : localhost:3306
 Source Schema         : delamancha

 Target Server Type    : MySQL
 Target Server Version : 100322
 File Encoding         : 65001

 Date: 20/08/2020 17:19:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for acerca
-- ----------------------------
DROP TABLE IF EXISTS `acerca`;
CREATE TABLE `acerca`  (
  `id_acerca` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `estatus` int(1) NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_acerca_padre` int(10) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  PRIMARY KEY (`id_acerca`) USING BTREE,
  INDEX `id_acerca_padre`(`id_acerca_padre`) USING BTREE,
  INDEX `id_acerca`(`id_acerca`, `id_acerca_padre`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for actividades
-- ----------------------------
DROP TABLE IF EXISTS `actividades`;
CREATE TABLE `actividades`  (
  `id_actividad` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `estatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_actividad`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for actores
-- ----------------------------
DROP TABLE IF EXISTS `actores`;
CREATE TABLE `actores`  (
  `id_actor` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a_parterno` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a_materno` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `estatus` int(1) NOT NULL,
  PRIMARY KEY (`id_actor`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel`  (
  `id_carousel` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `estatus` int(1) NOT NULL,
  `cprincipal` int(1) NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_carousel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for carteleras
-- ----------------------------
DROP TABLE IF EXISTS `carteleras`;
CREATE TABLE `carteleras`  (
  `id_lugar` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_fecha` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_obra` int(10) UNSIGNED ZEROFILL NOT NULL,
  `estatus` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_lugar`, `id_fecha`, `id_obra`) USING BTREE,
  UNIQUE INDEX `fk_cxo_fecha`(`id_fecha`) USING BTREE,
  INDEX `fk_cxo_obra`(`id_obra`) USING BTREE,
  INDEX `fk_cxo_lugar`(`id_lugar`) USING BTREE,
  CONSTRAINT `fk_cxo_fecha` FOREIGN KEY (`id_fecha`) REFERENCES `hora_fecha` (`id_fecha`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cxo_lugar` FOREIGN KEY (`id_lugar`) REFERENCES `lugares` (`id_lugar`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_cxo_obra` FOREIGN KEY (`id_obra`) REFERENCES `obras` (`id_obra`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cat_servicios
-- ----------------------------
DROP TABLE IF EXISTS `cat_servicios`;
CREATE TABLE `cat_servicios`  (
  `id_cat_serv` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `estatus` int(1) NOT NULL,
  PRIMARY KEY (`id_cat_serv`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for clasificaciones
-- ----------------------------
DROP TABLE IF EXISTS `clasificaciones`;
CREATE TABLE `clasificaciones`  (
  `id_clasificacion` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `nombre` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `edades` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estatus` int(1) NOT NULL,
  PRIMARY KEY (`id_clasificacion`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for contacto
-- ----------------------------
DROP TABLE IF EXISTS `contacto`;
CREATE TABLE `contacto`  (
  `id_contacto` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `estatus` int(1) NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id_contacto`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for directores
-- ----------------------------
DROP TABLE IF EXISTS `directores`;
CREATE TABLE `directores`  (
  `id_director` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a_parterno` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a_materno` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `estatus` int(1) NOT NULL,
  PRIMARY KEY (`id_director`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for equipo
-- ----------------------------
DROP TABLE IF EXISTS `equipo`;
CREATE TABLE `equipo`  (
  `id_miembro` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `a_parterno` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `a_materno` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `perfil` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_miembro`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for gen_teatral
-- ----------------------------
DROP TABLE IF EXISTS `gen_teatral`;
CREATE TABLE `gen_teatral`  (
  `id_gt` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `estatus` int(1) NOT NULL,
  PRIMARY KEY (`id_gt`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for generos
-- ----------------------------
DROP TABLE IF EXISTS `generos`;
CREATE TABLE `generos`  (
  `id_genero` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `estatus` int(1) NOT NULL,
  `id_gt` int(10) UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`id_genero`) USING BTREE,
  INDEX `fk_genero_gt`(`id_gt`) USING BTREE,
  CONSTRAINT `fk_genero_gt` FOREIGN KEY (`id_gt`) REFERENCES `gen_teatral` (`id_gt`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hora_fecha
-- ----------------------------
DROP TABLE IF EXISTS `hora_fecha`;
CREATE TABLE `hora_fecha`  (
  `id_fecha` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `hora` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fecha` date NOT NULL,
  `estatus` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_fecha`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for lugares
-- ----------------------------
DROP TABLE IF EXISTS `lugares`;
CREATE TABLE `lugares`  (
  `id_lugar` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estatus` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_lugar`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for necesidades
-- ----------------------------
DROP TABLE IF EXISTS `necesidades`;
CREATE TABLE `necesidades`  (
  `id_necesidad` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_obra` int(10) UNSIGNED ZEROFILL NULL DEFAULT NULL,
  PRIMARY KEY (`id_necesidad`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for obra_actor
-- ----------------------------
DROP TABLE IF EXISTS `obra_actor`;
CREATE TABLE `obra_actor`  (
  `id_actor` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_obra` int(10) UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`id_actor`, `id_obra`) USING BTREE,
  INDEX `fk_axo_actor`(`id_actor`) USING BTREE,
  INDEX `fk_axo_obra`(`id_obra`) USING BTREE,
  CONSTRAINT `fk_axo_actor` FOREIGN KEY (`id_actor`) REFERENCES `actores` (`id_actor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_axo_obra` FOREIGN KEY (`id_obra`) REFERENCES `obras` (`id_obra`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for obra_director
-- ----------------------------
DROP TABLE IF EXISTS `obra_director`;
CREATE TABLE `obra_director`  (
  `id_director` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_obra` int(10) UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`id_director`, `id_obra`) USING BTREE,
  INDEX `fk_oxd_obra`(`id_obra`) USING BTREE,
  CONSTRAINT `fk_oxd_director` FOREIGN KEY (`id_director`) REFERENCES `directores` (`id_director`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_oxd_obra` FOREIGN KEY (`id_obra`) REFERENCES `obras` (`id_obra`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for obra_genero
-- ----------------------------
DROP TABLE IF EXISTS `obra_genero`;
CREATE TABLE `obra_genero`  (
  `id_genero` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_obra` int(10) UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`id_genero`, `id_obra`) USING BTREE,
  INDEX `fk_oxg_obra`(`id_obra`) USING BTREE,
  CONSTRAINT `fk_oxg_genero` FOREIGN KEY (`id_genero`) REFERENCES `generos` (`id_genero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_oxg_obra` FOREIGN KEY (`id_obra`) REFERENCES `obras` (`id_obra`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for obra_necesidad
-- ----------------------------
DROP TABLE IF EXISTS `obra_necesidad`;
CREATE TABLE `obra_necesidad`  (
  `id_necesidad` int(10) UNSIGNED ZEROFILL NOT NULL,
  `id_obra` int(10) UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`id_necesidad`, `id_obra`) USING BTREE,
  INDEX `fk_nxo_obra`(`id_obra`) USING BTREE,
  CONSTRAINT `fk_nxo_necesidad` FOREIGN KEY (`id_necesidad`) REFERENCES `necesidades` (`id_necesidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_nxo_obra` FOREIGN KEY (`id_obra`) REFERENCES `obras` (`id_obra`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for obras
-- ----------------------------
DROP TABLE IF EXISTS `obras`;
CREATE TABLE `obras`  (
  `id_obra` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `duracion` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sinopsis` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_clasificacion` int(10) UNSIGNED ZEROFILL NOT NULL,
  `estatus` int(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id_obra`) USING BTREE,
  INDEX `fk_obra_clasificacion`(`id_clasificacion`) USING BTREE,
  CONSTRAINT `fk_obra_clasificacion` FOREIGN KEY (`id_clasificacion`) REFERENCES `clasificaciones` (`id_clasificacion`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for politicas_servicios
-- ----------------------------
DROP TABLE IF EXISTS `politicas_servicios`;
CREATE TABLE `politicas_servicios`  (
  `id_servicio` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `nombre_servicio` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_catservicio` int(10) UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`id_servicio`) USING BTREE,
  INDEX `fk_servicio_categoria`(`id_catservicio`) USING BTREE,
  CONSTRAINT `fk_servicio_categoria` FOREIGN KEY (`id_catservicio`) REFERENCES `cat_servicios` (`id_cat_serv`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id_rol` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `estatus` int(1) NOT NULL,
  PRIMARY KEY (`id_rol`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id_usuario` int(10) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `correo` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `estatus` int(1) NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_rol` int(10) UNSIGNED ZEROFILL NOT NULL,
  PRIMARY KEY (`id_usuario`) USING BTREE,
  INDEX `id_rol`(`id_rol`) USING BTREE,
  CONSTRAINT `fk_user_rol` FOREIGN KEY (`id_usuario`) REFERENCES `roles` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
