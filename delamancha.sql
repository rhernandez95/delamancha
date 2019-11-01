/*
 Navicat Premium Data Transfer

 Source Server         : rhr
 Source Server Type    : MySQL
 Source Server Version : 100315
 Source Host           : localhost:3306
 Source Schema         : delamancha

 Target Server Type    : MySQL
 Target Server Version : 100315
 File Encoding         : 65001

 Date: 31/10/2019 18:02:59
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
-- Records of acerca
-- ----------------------------
INSERT INTO `acerca` VALUES (0000000009, 'w', 'q', 1, '1', NULL);
INSERT INTO `acerca` VALUES (0000000010, 'w', 'qwe', 1, NULL, 0000000009);

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
-- Records of actores
-- ----------------------------
INSERT INTO `actores` VALUES (0000000001, 'MONTSERRAT', 'HERNANDEZ', 'RAMIREZ', '1993-11-20', 1);
INSERT INTO `actores` VALUES (0000000002, 'hsj', 'jkl', 'jhl', '1995-08-31', 1);

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
-- Records of carteleras
-- ----------------------------
INSERT INTO `carteleras` VALUES (0000000001, 0000000001, 0000000001, 1);
INSERT INTO `carteleras` VALUES (0000000001, 0000000002, 0000000001, 1);
INSERT INTO `carteleras` VALUES (0000000001, 0000000003, 0000000001, 1);
INSERT INTO `carteleras` VALUES (0000000001, 0000000004, 0000000003, 1);
INSERT INTO `carteleras` VALUES (0000000002, 0000000005, 0000000001, 1);

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
-- Records of cat_servicios
-- ----------------------------
INSERT INTO `cat_servicios` VALUES (0000000001, 'politicas', 1);
INSERT INTO `cat_servicios` VALUES (0000000002, 'teatro y musica', 0);
INSERT INTO `cat_servicios` VALUES (0000000003, 'producciones de festivales', 1);

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
-- Records of clasificaciones
-- ----------------------------
INSERT INTO `clasificaciones` VALUES (0000000001, 'AA', 'Apto para todo público que tengan además atractivo infantil y sean comprensibles para niños menores de siete años de edad', 'Para todo público', 1);
INSERT INTO `clasificaciones` VALUES (0000000002, 'A', 'Apto para todo público', '6+', 1);
INSERT INTO `clasificaciones` VALUES (0000000003, 'B', 'Apto para adolescentes de doce años en adelante.', '12+', 1);
INSERT INTO `clasificaciones` VALUES (0000000004, 'B15', 'Apto para mayores de 15 años.', '15+', 1);
INSERT INTO `clasificaciones` VALUES (0000000005, 'C', 'Apto para adultos de dieciocho años en adelante.', '18+', 1);
INSERT INTO `clasificaciones` VALUES (0000000006, 'D', 'Apto exclusivamente para adultos , con sexo explícito, lenguaje procaz, o alto grado de violencia.', '18+', 1);

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
-- Records of directores
-- ----------------------------
INSERT INTO `directores` VALUES (0000000001, 'IRVING', 'MARCELO', 'INOJOSA', '1999-12-20', 1);
INSERT INTO `directores` VALUES (0000000002, 'hklj', 'nkjnkl', 'n,nk', '1995-08-31', 1);

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
-- Records of gen_teatral
-- ----------------------------
INSERT INTO `gen_teatral` VALUES (0000000001, 'OBRAS MAYORES', 1);
INSERT INTO `gen_teatral` VALUES (0000000002, 'OBRAS MENORES', 1);
INSERT INTO `gen_teatral` VALUES (0000000003, 'OBRAS MUSICALES', 1);

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
-- Records of generos
-- ----------------------------
INSERT INTO `generos` VALUES (0000000001, 'TRAGEDIA', 'Obra dramática de asunto elevado en la que intervienen personajes enfrentados a fuerzas invencibles (el destino, la culpa...).', 1, 0000000001);
INSERT INTO `generos` VALUES (0000000002, 'DRAMA', 'Texto dramático de conflictos menos trascendentes que los de la tragedia. En el siglo XVII, recibió el nombre de tragicomedia.', 1, 0000000001);
INSERT INTO `generos` VALUES (0000000003, 'COMEDIA', 'Texto teatral que representa el lado festivo y alegre de la realidad, con acciones de la vida cotidiana y desenlace feliz.', 1, 0000000001);
INSERT INTO `generos` VALUES (0000000004, 'AUTO SACRAMENTAL', 'Texto teatral de tema religioso y personajes alegóricos de tema eucarístico.', 1, 0000000002);
INSERT INTO `generos` VALUES (0000000005, 'ENTREMÉS', 'Pequeña pieza teatral de carácter cómico y personajes populares que pretende divertir al espectador. Se representa en los entreactos de una comedia mayor.', 1, 0000000002);
INSERT INTO `generos` VALUES (0000000006, 'PASO', 'Pieza dramática de breve duración, asunto sencillo y tratamiento cómico, que antiguamente se intercalaba entre las partes de las comedias. El paso, denominado así por Lope de Rueda en el siglo XVI, está considerado como el precursor del entremés y se caracteriza por su lenguaje realista', 1, 0000000002);
INSERT INTO `generos` VALUES (0000000007, 'MOJIGANGA', 'Género dramático del Siglo de Oro español. Consiste en un texto breve en verso, de carácter cómico-burlesco y musical, para fin de fiesta, con predominio de la confusión y el disparate deliberados, explicables por su raigambre esencialmente carnavalesca.', 1, 0000000002);
INSERT INTO `generos` VALUES (0000000008, 'JÁCARA', 'Se representaban en el entreacto de las comedias del Siglo de Oro español. Destaca el agudo humor y el dominio de la jerga de los bajos fondos que provocaba la hilaridad con crítica social. También era propio un tono especial al cantar, el tono \"de jácara o de jacarilla\", característico de esta composición.', 1, 0000000002);
INSERT INTO `generos` VALUES (0000000009, 'LOA', 'Composición breve en verso que se escenificaba antes que el primer acto o jornada de una comedia. Al principio era un monólogo; luego se transformó en una conversación con una máxima acción dramática. Se precedía de unos tonos musicales, cantados a veces, con guitarras, vihuela y arpa, que se reiteraban tras su fin.', 1, 0000000002);
INSERT INTO `generos` VALUES (0000000010, 'SAINETE', 'Obra cómica de ambiente y personajes populares que, en uno o más actos, se representa en una función independiente.', 1, 0000000002);
INSERT INTO `generos` VALUES (0000000011, 'FARSA', 'Obra que, para lograr un fin cómico, exagera la acción o los caracteres de los personajes hasta hacer grotesca la realidad.', 1, 0000000002);
INSERT INTO `generos` VALUES (0000000012, 'MONÓLOGO', 'Pieza dramática interpretada por un solo actor, aún cuando en ella intervengan varios personajes; es un parlamento de extensión superior a lo habitual en los diálogos, pronunciado en solitario o en presencia de otros personajes.', 1, 0000000002);
INSERT INTO `generos` VALUES (0000000013, 'SOLILOQUIO', 'Es una reflexión que se realiza en voz alta y, muchas veces, a solas. El soliloquio es un discurso ininterrumpido (es decir, no apela ni permite que un interlocutor participe o responda) que transmite pensamientos o emociones. Es un diálogo que la persona mantiene consigo misma, con un objeto o con un ser incapaz de hablar (como una planta o un animal).', 1, 0000000002);
INSERT INTO `generos` VALUES (0000000014, 'VODEVIL', 'Comedia ligera y evasiva de intriga, que basa la acción en equívocos, ingenio y sentido del humor. Generalmente es de temática amorosa y alterna escenas dialogadas con números musicales.', 1, 0000000002);
INSERT INTO `generos` VALUES (0000000015, 'ÓPERA', 'Obra teatral compuesta para el canto. En ella confluyen literatura, música, danza, escenografía y artes plásticas.\r\n', 1, 0000000003);
INSERT INTO `generos` VALUES (0000000016, 'ZARZUELA', 'Obra ligera, de carácter popular, en la que alternan la declamación, la música y el canto.', 1, 0000000003);
INSERT INTO `generos` VALUES (0000000017, 'OPERETA', 'Especie de ópera, de asunto frívolo y carácter alegre, en el que predomina la sátira.', 1, 0000000003);
INSERT INTO `generos` VALUES (0000000018, 'REVISTA | MUSICAL', 'Espectáculo teatral de carácter frívolo en el que alternan elementos dialogados y números musicales.', 1, 0000000003);
INSERT INTO `generos` VALUES (0000000019, 'GÉNERO CHICO', 'Es un género español de arte escénico y lírico. Es un subgénero de la zarzuela de formato breve típicamente en un acto. Se caracteriza por su no excesiva duración (una hora o menos), la escasa trascendencia de su contenido y la sencillez de su argumento, con pocos personajes y un solo decorado. Su temática suele ser mayoritariamente costumbrista.', 1, 0000000003);

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
-- Records of hora_fecha
-- ----------------------------
INSERT INTO `hora_fecha` VALUES (0000000001, '12:08', '2019-10-24', 1);
INSERT INTO `hora_fecha` VALUES (0000000002, '13:05', '2019-10-31', 1);
INSERT INTO `hora_fecha` VALUES (0000000003, '18:00', '2019-10-31', 1);
INSERT INTO `hora_fecha` VALUES (0000000004, '19:00', '2019-10-31', 1);
INSERT INTO `hora_fecha` VALUES (0000000005, '20:00', '2019-10-31', 1);

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
-- Records of lugares
-- ----------------------------
INSERT INTO `lugares` VALUES (0000000001, 'chlpo', 'jansj', 1);
INSERT INTO `lugares` VALUES (0000000002, 'chilapa', 'hkl', 1);
INSERT INTO `lugares` VALUES (0000000003, 'ahuco', 'hjk', 1);

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
-- Records of necesidades
-- ----------------------------
INSERT INTO `necesidades` VALUES (0000000001, 'algo', 'dkoe', NULL);
INSERT INTO `necesidades` VALUES (0000000002, 'algo1', 'so', NULL);

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
-- Records of obra_actor
-- ----------------------------
INSERT INTO `obra_actor` VALUES (0000000001, 0000000001);
INSERT INTO `obra_actor` VALUES (0000000002, 0000000001);
INSERT INTO `obra_actor` VALUES (0000000002, 0000000003);

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
-- Records of obra_director
-- ----------------------------
INSERT INTO `obra_director` VALUES (0000000001, 0000000001);
INSERT INTO `obra_director` VALUES (0000000002, 0000000001);

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
-- Records of obra_genero
-- ----------------------------
INSERT INTO `obra_genero` VALUES (0000000001, 0000000001);
INSERT INTO `obra_genero` VALUES (0000000002, 0000000001);
INSERT INTO `obra_genero` VALUES (0000000003, 0000000001);

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
-- Records of obra_necesidad
-- ----------------------------
INSERT INTO `obra_necesidad` VALUES (0000000001, 0000000001);
INSERT INTO `obra_necesidad` VALUES (0000000002, 0000000001);
INSERT INTO `obra_necesidad` VALUES (0000000002, 0000000003);

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
-- Records of obras
-- ----------------------------
INSERT INTO `obras` VALUES (0000000001, 'PERROS', '1 hrs', 'ALGODON', 'img/obra/perros.png', 0000000005, NULL);
INSERT INTO `obras` VALUES (0000000003, '12', '12', '12', '12', 0000000002, NULL);

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
-- Records of politicas_servicios
-- ----------------------------
INSERT INTO `politicas_servicios` VALUES (0000000001, 'necesidades', 0000000001);
INSERT INTO `politicas_servicios` VALUES (0000000003, 'politicas1', 0000000002);
INSERT INTO `politicas_servicios` VALUES (0000000004, 's', 0000000002);

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
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (0000000001, 'ADMINISTRADOR', 1);
INSERT INTO `roles` VALUES (0000000002, 'EDITOR', 1);
INSERT INTO `roles` VALUES (0000000003, 'USUARIO', 1);

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

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (0000000001, 'RAMON HERNNDEZ RAMIREZ', 'rhernandez', 'rhernandez', 'squalo_hdez@live.com.mx', 1, 'img/user/rhernandez.png', 0000000001);
INSERT INTO `usuarios` VALUES (0000000002, 'MONTSERRAT HERNANDEZ RAMIREZ', 'setmon', 'setmon', '', 1, NULL, 0000000002);
INSERT INTO `usuarios` VALUES (0000000003, 'IRVING MARCELO INOJOSA', 'marcelo', 'marcelo', NULL, 1, NULL, 0000000003);

SET FOREIGN_KEY_CHECKS = 1;
