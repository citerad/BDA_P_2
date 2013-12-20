
-- BEST CLEANUP EVER
-- drop schema public cascade;
-- create schema public;

-- MOST BORING CLEANUP EVER
DROP TABLE IF EXISTS "D_CATEGORIA";
DROP TABLE IF EXISTS "D_EDAD";
DROP TABLE IF EXISTS "D_ESPACIO";
DROP TABLE IF EXISTS "D_ESPECTACULO";
DROP TABLE IF EXISTS "D_GEOGRAFIA";
DROP TABLE IF EXISTS "D_TIEMPO";
DROP TABLE IF EXISTS "D_USUARIO";
DROP TABLE IF EXISTS "F_VENTAS_ENTRADAS";

-- -----------------------------------------------------
-- Table "D_CATEGORIA"
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS "D_CATEGORIA" (
  "ID_CATEGORIA" INT NULL,
  "DESC_CATEGORIA" VARCHAR(45) NULL,
  PRIMARY KEY ("ID_CATEGORIA"));


-- -----------------------------------------------------
-- Table "D_ESPECTACULO"
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS "D_ESPECTACULO" (
  "ID_ESPECTACULO" INT NULL,
  "DESC_ESPECTACULOS" VARCHAR(256) NULL,
  PRIMARY KEY ("ID_ESPECTACULO"));


-- -----------------------------------------------------
-- Table "D_ESPACIO"
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS "D_ESPACIO" (
  "ID_ESPACIO" INT NULL,
  "DESC_ESPACIO" VARCHAR(256) NULL,
  "AFORO" INT NULL,
  PRIMARY KEY ("ID_ESPACIO"));


-- -----------------------------------------------------
-- Table "D_GEOGRAFIA"
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS "D_GEOGRAFIA" (
  "ID_GEOGRAFIA" INT NULL,
  "ID_COMUNIDAD_AUTONOMA" INT NULL,
  "ID_COMARCA" INT NULL,
  "DESC_COMUNIDAD_AUTONOMA" VARCHAR(45) NULL,
  "DESC_COMARCA" VARCHAR(45) NULL,
  PRIMARY KEY ("ID_GEOGRAFIA"));


-- -----------------------------------------------------
-- Table "D_TIEMPO"
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS "D_TIEMPO" (
  "ID_TIEMPO" INT NULL,
  "ID_ANYO" INT NULL,
  "ID_TRIMESTRE" INT NULL,
  "ID_MES" INT NULL,
  "ID_DIA" VARCHAR(45) NULL,
  "DESC_ANYO" VARCHAR(45) NULL,
  "DESC_TRIMESTRE" VARCHAR(45) NULL,
  "DESC_MES" VARCHAR(45) NULL,
  "DESC_DIA" VARCHAR(45) NULL,
  PRIMARY KEY ("ID_TIEMPO"));


-- -----------------------------------------------------
-- Table "D_EDAD"
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS "D_EDAD" (
  "ID_EDAD" INT NULL,
  "ID_RANGO_EDAD" INT NULL,
  "ID_ANYOS_CUMPLIDOS" INT NULL,
  "DESC_RANGO_EDAD" VARCHAR(45) NULL,
  "DESC_ANYOS_CUMPLIDOS" VARCHAR(45) NULL,
  PRIMARY KEY ("ID_EDAD"));


-- -----------------------------------------------------
-- "USUARIO"
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS "D_USUARIO" (
  "ID_USUARIO" INT NULL,
  "DESC_USUARIO" VARCHAR(128) NULL,
  "LOGIN" VARCHAR(64) NULL,
  "TIPO_USUARIO" VARCHAR(64) NULL,
  PRIMARY KEY ("ID_USUARIO"));



-- -----------------------------------------------------
-- Table "F_VENTAS_ENTRADAS"
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS "F_VENTAS_ENTRADAS" (
  "ID" INT NULL,
  "CANTIDAD_INGRESO" INT NULL,
  "CANTIDAD_VENTAS" INT NULL,
  "COSTO_MANTENIMIENTO" INT NULL,
  "ID_CATEGORIA" INT NULL,
  "ID_ESPECTACULO" INT NULL,
  "ID_ESPACIO" INT NULL,
  "ID_GEOGRAFIA" INT NULL,
  "ID_TIEMPO" INT NULL,
  "ID_EDAD" INT NULL,
  "ID_USUARIO" INT NULL,
  PRIMARY KEY ("ID"));


-- -----------------------------------------------------
-- INSERT "D_USUARIO"
-- -----------------------------------------------------
INSERT INTO "D_USUARIO" VALUES (1, 'Oriol', 'mith', 'ADMINISTRADOR');
INSERT INTO "D_USUARIO" VALUES (2, 'Domenico', 'nix', 'ADMINISTRADOR');
INSERT INTO "D_USUARIO" VALUES (3, 'Administrador', 'admin', 'ADMINISTRADOR');
INSERT INTO "D_USUARIO" VALUES (4, 'Usuario', 'user', 'USUARIO');

-- -----------------------------------------------------
-- INSERT "D_ESPECTACULO"
-- -----------------------------------------------------
INSERT INTO "D_ESPECTACULO" VALUES (1, 'El Danubio Azul');
INSERT INTO "D_ESPECTACULO" VALUES (2, 'Viridiana');
INSERT INTO "D_ESPECTACULO" VALUES (3, 'Muerte de un ciclista');
INSERT INTO "D_ESPECTACULO" VALUES (4, 'El mundo sigue');
INSERT INTO "D_ESPECTACULO" VALUES (5, '¡Bienvenido, Míster Marshall!');
INSERT INTO "D_ESPECTACULO" VALUES (6, 'El espíritu de la colmena');


-- -----------------------------------------------------
-- INSERT "D_CATEGORIA"
-- -----------------------------------------------------
INSERT INTO "D_CATEGORIA" VALUES (1, 'Ópera');
INSERT INTO "D_CATEGORIA" VALUES (2, 'Teatro');
INSERT INTO "D_CATEGORIA" VALUES (3, 'Pellicola');


-- -----------------------------------------------------
-- INSERT "D_ESPACIO"
-- -----------------------------------------------------
INSERT INTO "D_ESPACIO" VALUES (1, 'Verdi', 150);
INSERT INTO "D_ESPACIO" VALUES (2, 'Teatro de la Maestranza', 200);
INSERT INTO "D_ESPACIO" VALUES (3, 'Arena Multicines', 250);


-- -----------------------------------------------------
-- INSERT "D_GEOGRAFIA"
-- -----------------------------------------------------
INSERT INTO "D_GEOGRAFIA" VALUES (1, 1, 1, 'Catalunya', 'Baix Llobregat');
INSERT INTO "D_GEOGRAFIA" VALUES (2, 1, 2, 'Catalunya', 'Osona');
INSERT INTO "D_GEOGRAFIA" VALUES (3, 2, 3, 'Andalucia', 'Antequera');
INSERT INTO "D_GEOGRAFIA" VALUES (4, 2, 4, 'Andalucia', 'Jaén');
INSERT INTO "D_GEOGRAFIA" VALUES (5, 3, 5, 'Lazio', 'Roma');
INSERT INTO "D_GEOGRAFIA" VALUES (6, 3, 6, 'Lazio', 'Aquila');
INSERT INTO "D_GEOGRAFIA" VALUES (7, 4, 7, 'Campania', 'Napoli');
INSERT INTO "D_GEOGRAFIA" VALUES (8, 4, 8, 'Campania', 'Salerno');
INSERT INTO "D_GEOGRAFIA" VALUES (9, 5, 9, 'Lombardia', 'Milano');


-- -----------------------------------------------------
-- INSERT "F_VENTAS_ENTRADAS"
-- -----------------------------------------------------
--- "ID", "CANTIDAD_INGRESO", "CANTIDAD_VENTAS", "COSTO_MANTENIMIENTO", "ID_CATEGORIA", "ID_ESPECTACULO", "ID_ESPACIO", "ID_GEOGRAFIA", "ID_TIEMPO", "ID_EDAD", "ID_USUARIO"
INSERT INTO "F_VENTAS_ENTRADAS" VALUES (2,  270, 5, 0, 1, 2, 1, 1, 1295, 20, 2);

INSERT INTO "F_VENTAS_ENTRADAS" VALUES (1,  129, 3, 0, 3, 6, 3, 3, 1296, 21, 1);
INSERT INTO "F_VENTAS_ENTRADAS" VALUES (8,   71, 1, 0, 3, 5, 3, 3, 1296, 20, 2);

INSERT INTO "F_VENTAS_ENTRADAS" VALUES (3,   92, 2, 0, 2, 3, 2, 2, 1297, 21, 1);
INSERT INTO "F_VENTAS_ENTRADAS" VALUES (14, 220, 5, 0, 3, 5, 3, 3, 1297, 20, 2);

INSERT INTO "F_VENTAS_ENTRADAS" VALUES (4,  365, 5, 0, 2, 4, 2, 2, 1298, 20, 2);
INSERT INTO "F_VENTAS_ENTRADAS" VALUES (9,  160, 4, 0, 1, 2, 1, 1, 1298, 21, 1);
INSERT INTO "F_VENTAS_ENTRADAS" VALUES (5,   62, 2, 0, 3, 6, 3, 3, 1298, 21, 1);

INSERT INTO "F_VENTAS_ENTRADAS" VALUES (6,  426, 6, 0, 2, 3, 2, 2, 1299, 20, 2);
INSERT INTO "F_VENTAS_ENTRADAS" VALUES (10, 401, 6, 0, 1, 1, 1, 1, 1299, 20, 2);
INSERT INTO "F_VENTAS_ENTRADAS" VALUES (15, 272, 4, 0, 3, 6, 3, 3, 1299, 21, 1);

INSERT INTO "F_VENTAS_ENTRADAS" VALUES (7,  180, 2, 0, 3, 6, 3, 3, 1300, 21, 1);
INSERT INTO "F_VENTAS_ENTRADAS" VALUES (11, 305, 5, 0, 1, 1, 1, 1, 1300, 21, 1);
INSERT INTO "F_VENTAS_ENTRADAS" VALUES (12, 606, 6, 0, 3, 5, 3, 3, 1300, 20, 2);
INSERT INTO "F_VENTAS_ENTRADAS" VALUES (13, 124, 4, 0, 3, 6, 3, 3, 1300, 21, 1);

--- Los 'INSERT' de los costos, necesariamente se deben hacer antes de comenzar una venta? (me refiero como una fecha)
--- nos interesa (ID, -, -, COSTO_FATTURA, CATEGORIA, SPETTACOLO, ESPACIO, GEOGRAFÍA, TIEMPO, -, -)
INSERT INTO "F_VENTAS_ENTRADAS" VALUES (16, 0, 0, 60, 1, 1, 1, 1, 1290, 0, 0);
INSERT INTO "F_VENTAS_ENTRADAS" VALUES (17, 0, 0, 90, 1, 2, 1, 1, 1290, 0, 0);

INSERT INTO "F_VENTAS_ENTRADAS" VALUES (18, 0, 0, 150, 2, 3, 2, 2, 1291, 0, 0);
INSERT INTO "F_VENTAS_ENTRADAS" VALUES (19, 0, 0, 160, 2, 4, 2, 2, 1291, 0, 0);
INSERT INTO "F_VENTAS_ENTRADAS" VALUES (20, 0, 0, 300, 3, 5, 3, 3, 1291, 0, 0);
INSERT INTO "F_VENTAS_ENTRADAS" VALUES (21, 0, 0, 600, 3, 6, 3, 3, 1291, 0, 0);

INSERT INTO "F_VENTAS_ENTRADAS" VALUES (22, 0, 0, 40, 2, 4, 2, 2, 1292, 0, 0);


-- -----------------------------------------------------
-- INSERT "D_EDAD"
-- -----------------------------------------------------
INSERT INTO "D_EDAD" VALUES (1, '2', '20', 'Entre 20 y 30', '20');
INSERT INTO "D_EDAD" VALUES (2, '2', '21', 'Entre 20 y 30', '21');
INSERT INTO "D_EDAD" VALUES (3, '2', '22', 'Entre 20 y 30', '22');
INSERT INTO "D_EDAD" VALUES (4, '2', '23', 'Entre 20 y 30', '23');
INSERT INTO "D_EDAD" VALUES (5, '2', '24', 'Entre 20 y 30', '24');
INSERT INTO "D_EDAD" VALUES (6, '2', '25', 'Entre 20 y 30', '25');
INSERT INTO "D_EDAD" VALUES (7, '2', '26', 'Entre 20 y 30', '26');
INSERT INTO "D_EDAD" VALUES (8, '2', '27', 'Entre 20 y 30', '27');
INSERT INTO "D_EDAD" VALUES (9, '2', '28', 'Entre 20 y 30', '28');
INSERT INTO "D_EDAD" VALUES (10, '2', '29', 'Entre 20 y 30', '29');
INSERT INTO "D_EDAD" VALUES (11, '3', '30', 'Entre 30 y 40', '30');
INSERT INTO "D_EDAD" VALUES (12, '3', '31', 'Entre 30 y 40', '31');
INSERT INTO "D_EDAD" VALUES (13, '3', '32', 'Entre 30 y 40', '32');
INSERT INTO "D_EDAD" VALUES (14, '3', '33', 'Entre 30 y 40', '33');
INSERT INTO "D_EDAD" VALUES (15, '3', '34', 'Entre 30 y 40', '34');
INSERT INTO "D_EDAD" VALUES (16, '3', '35', 'Entre 30 y 40', '35');
INSERT INTO "D_EDAD" VALUES (17, '3', '36', 'Entre 30 y 40', '36');
INSERT INTO "D_EDAD" VALUES (18, '3', '37', 'Entre 30 y 40', '37');
INSERT INTO "D_EDAD" VALUES (19, '3', '38', 'Entre 30 y 40', '38');
INSERT INTO "D_EDAD" VALUES (20, '3', '39', 'Entre 30 y 40', '39');
INSERT INTO "D_EDAD" VALUES (21, '4', '40', 'Entre 40 y 50', '40');
INSERT INTO "D_EDAD" VALUES (22, '4', '41', 'Entre 40 y 50', '41');
INSERT INTO "D_EDAD" VALUES (23, '4', '42', 'Entre 40 y 50', '42');
INSERT INTO "D_EDAD" VALUES (24, '4', '43', 'Entre 40 y 50', '43');
INSERT INTO "D_EDAD" VALUES (25, '4', '44', 'Entre 40 y 50', '44');
INSERT INTO "D_EDAD" VALUES (26, '4', '45', 'Entre 40 y 50', '45');
INSERT INTO "D_EDAD" VALUES (27, '4', '46', 'Entre 40 y 50', '46');
INSERT INTO "D_EDAD" VALUES (28, '4', '47', 'Entre 40 y 50', '47');
INSERT INTO "D_EDAD" VALUES (29, '4', '48', 'Entre 40 y 50', '48');
INSERT INTO "D_EDAD" VALUES (30, '4', '49', 'Entre 40 y 50', '49');
INSERT INTO "D_EDAD" VALUES (31, '5', '50', 'Entre 50 y 60', '50');
INSERT INTO "D_EDAD" VALUES (32, '5', '51', 'Entre 50 y 60', '51');
INSERT INTO "D_EDAD" VALUES (33, '5', '52', 'Entre 50 y 60', '52');
INSERT INTO "D_EDAD" VALUES (34, '5', '53', 'Entre 50 y 60', '53');
INSERT INTO "D_EDAD" VALUES (35, '5', '54', 'Entre 50 y 60', '54');
INSERT INTO "D_EDAD" VALUES (36, '5', '55', 'Entre 50 y 60', '55');
INSERT INTO "D_EDAD" VALUES (37, '5', '56', 'Entre 50 y 60', '56');
INSERT INTO "D_EDAD" VALUES (38, '5', '57', 'Entre 50 y 60', '57');
INSERT INTO "D_EDAD" VALUES (39, '5', '58', 'Entre 50 y 60', '58');
INSERT INTO "D_EDAD" VALUES (40, '5', '59', 'Entre 50 y 60', '59');
INSERT INTO "D_EDAD" VALUES (41, '6', '60', 'Entre 60 y 70', '60');
INSERT INTO "D_EDAD" VALUES (42, '6', '61', 'Entre 60 y 70', '61');
INSERT INTO "D_EDAD" VALUES (43, '6', '62', 'Entre 60 y 70', '62');
INSERT INTO "D_EDAD" VALUES (44, '6', '63', 'Entre 60 y 70', '63');
INSERT INTO "D_EDAD" VALUES (45, '6', '64', 'Entre 60 y 70', '64');
INSERT INTO "D_EDAD" VALUES (46, '6', '65', 'Entre 60 y 70', '65');
INSERT INTO "D_EDAD" VALUES (47, '6', '66', 'Entre 60 y 70', '66');
INSERT INTO "D_EDAD" VALUES (48, '6', '67', 'Entre 60 y 70', '67');
INSERT INTO "D_EDAD" VALUES (49, '6', '68', 'Entre 60 y 70', '68');
INSERT INTO "D_EDAD" VALUES (50, '6', '69', 'Entre 60 y 70', '69');
INSERT INTO "D_EDAD" VALUES (51, '7', '70', 'Entre 70 y 80', '70');
INSERT INTO "D_EDAD" VALUES (52, '7', '71', 'Entre 70 y 80', '71');
INSERT INTO "D_EDAD" VALUES (53, '7', '72', 'Entre 70 y 80', '72');
INSERT INTO "D_EDAD" VALUES (54, '7', '73', 'Entre 70 y 80', '73');
INSERT INTO "D_EDAD" VALUES (55, '7', '74', 'Entre 70 y 80', '74');
INSERT INTO "D_EDAD" VALUES (56, '7', '75', 'Entre 70 y 80', '75');
INSERT INTO "D_EDAD" VALUES (57, '7', '76', 'Entre 70 y 80', '76');
INSERT INTO "D_EDAD" VALUES (58, '7', '77', 'Entre 70 y 80', '77');
INSERT INTO "D_EDAD" VALUES (59, '7', '78', 'Entre 70 y 80', '78');
INSERT INTO "D_EDAD" VALUES (60, '7', '79', 'Entre 70 y 80', '79');
INSERT INTO "D_EDAD" VALUES (61, '8', '80', 'Entre 80 y 90', '80');
INSERT INTO "D_EDAD" VALUES (62, '8', '81', 'Entre 80 y 90', '81');
INSERT INTO "D_EDAD" VALUES (63, '8', '82', 'Entre 80 y 90', '82');
INSERT INTO "D_EDAD" VALUES (64, '8', '83', 'Entre 80 y 90', '83');
INSERT INTO "D_EDAD" VALUES (65, '8', '84', 'Entre 80 y 90', '84');
INSERT INTO "D_EDAD" VALUES (66, '8', '85', 'Entre 80 y 90', '85');
INSERT INTO "D_EDAD" VALUES (67, '8', '86', 'Entre 80 y 90', '86');
INSERT INTO "D_EDAD" VALUES (68, '8', '87', 'Entre 80 y 90', '87');
INSERT INTO "D_EDAD" VALUES (69, '8', '88', 'Entre 80 y 90', '88');
INSERT INTO "D_EDAD" VALUES (70, '8', '89', 'Entre 80 y 90', '89');
INSERT INTO "D_EDAD" VALUES (71, '9', '90', 'Entre 90 y 100', '90');
INSERT INTO "D_EDAD" VALUES (72, '9', '91', 'Entre 90 y 100', '91');
INSERT INTO "D_EDAD" VALUES (73, '9', '92', 'Entre 90 y 100', '92');
INSERT INTO "D_EDAD" VALUES (74, '9', '93', 'Entre 90 y 100', '93');
INSERT INTO "D_EDAD" VALUES (75, '9', '94', 'Entre 90 y 100', '94');
INSERT INTO "D_EDAD" VALUES (76, '9', '95', 'Entre 90 y 100', '95');
INSERT INTO "D_EDAD" VALUES (77, '9', '96', 'Entre 90 y 100', '96');
INSERT INTO "D_EDAD" VALUES (78, '9', '97', 'Entre 90 y 100', '97');
INSERT INTO "D_EDAD" VALUES (79, '9', '98', 'Entre 90 y 100', '98');
INSERT INTO "D_EDAD" VALUES (80, '9', '99', 'Entre 90 y 100', '99');
INSERT INTO "D_EDAD" VALUES (81, '10', '100', 'Entre 100 y 110', '100');

-- -----------------------------------------------------
-- INSERT "D_TIEMPO" 2012-2013
-- -----------------------------------------------------

INSERT INTO "D_TIEMPO" VALUES ('731', '2012', '1', '1', '1',  '2012','T1','Enero','01');
INSERT INTO "D_TIEMPO" VALUES ('732', '2012', '1', '1', '2',  '2012','T1','Enero','02');
INSERT INTO "D_TIEMPO" VALUES ('733', '2012', '1', '1', '3',  '2012','T1','Enero','03');
INSERT INTO "D_TIEMPO" VALUES ('734', '2012', '1', '1', '4',  '2012','T1','Enero','04');
INSERT INTO "D_TIEMPO" VALUES ('735', '2012', '1', '1', '5',  '2012','T1','Enero','05');
INSERT INTO "D_TIEMPO" VALUES ('736', '2012', '1', '1', '6',  '2012','T1','Enero','06');
INSERT INTO "D_TIEMPO" VALUES ('737', '2012', '1', '1', '7',  '2012','T1','Enero','07');
INSERT INTO "D_TIEMPO" VALUES ('738', '2012', '1', '1', '8',  '2012','T1','Enero','08');
INSERT INTO "D_TIEMPO" VALUES ('739', '2012', '1', '1', '9',  '2012','T1','Enero','09');
INSERT INTO "D_TIEMPO" VALUES ('740', '2012', '1', '1', '10',  '2012','T1','Enero','10');
INSERT INTO "D_TIEMPO" VALUES ('741', '2012', '1', '1', '11',  '2012','T1','Enero','11');
INSERT INTO "D_TIEMPO" VALUES ('742', '2012', '1', '1', '12',  '2012','T1','Enero','12');
INSERT INTO "D_TIEMPO" VALUES ('743', '2012', '1', '1', '13',  '2012','T1','Enero','13');
INSERT INTO "D_TIEMPO" VALUES ('744', '2012', '1', '1', '14',  '2012','T1','Enero','14');
INSERT INTO "D_TIEMPO" VALUES ('745', '2012', '1', '1', '15',  '2012','T1','Enero','15');
INSERT INTO "D_TIEMPO" VALUES ('746', '2012', '1', '1', '16',  '2012','T1','Enero','16');
INSERT INTO "D_TIEMPO" VALUES ('747', '2012', '1', '1', '17',  '2012','T1','Enero','17');
INSERT INTO "D_TIEMPO" VALUES ('748', '2012', '1', '1', '18',  '2012','T1','Enero','18');
INSERT INTO "D_TIEMPO" VALUES ('749', '2012', '1', '1', '19',  '2012','T1','Enero','19');
INSERT INTO "D_TIEMPO" VALUES ('750', '2012', '1', '1', '20',  '2012','T1','Enero','20');
INSERT INTO "D_TIEMPO" VALUES ('751', '2012', '1', '1', '21',  '2012','T1','Enero','21');
INSERT INTO "D_TIEMPO" VALUES ('752', '2012', '1', '1', '22',  '2012','T1','Enero','22');
INSERT INTO "D_TIEMPO" VALUES ('753', '2012', '1', '1', '23',  '2012','T1','Enero','23');
INSERT INTO "D_TIEMPO" VALUES ('754', '2012', '1', '1', '24',  '2012','T1','Enero','24');
INSERT INTO "D_TIEMPO" VALUES ('755', '2012', '1', '1', '25',  '2012','T1','Enero','25');
INSERT INTO "D_TIEMPO" VALUES ('756', '2012', '1', '1', '26',  '2012','T1','Enero','26');
INSERT INTO "D_TIEMPO" VALUES ('757', '2012', '1', '1', '27',  '2012','T1','Enero','27');
INSERT INTO "D_TIEMPO" VALUES ('758', '2012', '1', '1', '28',  '2012','T1','Enero','28');
INSERT INTO "D_TIEMPO" VALUES ('759', '2012', '1', '1', '29',  '2012','T1','Enero','29');
INSERT INTO "D_TIEMPO" VALUES ('760', '2012', '1', '1', '30',  '2012','T1','Enero','30');
INSERT INTO "D_TIEMPO" VALUES ('761', '2012', '1', '1', '31',  '2012','T1','Enero','31');
INSERT INTO "D_TIEMPO" VALUES ('762', '2012', '1', '2', '1',  '2012','T1','Febrero','01');
INSERT INTO "D_TIEMPO" VALUES ('763', '2012', '1', '2', '2',  '2012','T1','Febrero','02');
INSERT INTO "D_TIEMPO" VALUES ('764', '2012', '1', '2', '3',  '2012','T1','Febrero','03');
INSERT INTO "D_TIEMPO" VALUES ('765', '2012', '1', '2', '4',  '2012','T1','Febrero','04');
INSERT INTO "D_TIEMPO" VALUES ('766', '2012', '1', '2', '5',  '2012','T1','Febrero','05');
INSERT INTO "D_TIEMPO" VALUES ('767', '2012', '1', '2', '6',  '2012','T1','Febrero','06');
INSERT INTO "D_TIEMPO" VALUES ('768', '2012', '1', '2', '7',  '2012','T1','Febrero','07');
INSERT INTO "D_TIEMPO" VALUES ('769', '2012', '1', '2', '8',  '2012','T1','Febrero','08');
INSERT INTO "D_TIEMPO" VALUES ('770', '2012', '1', '2', '9',  '2012','T1','Febrero','09');
INSERT INTO "D_TIEMPO" VALUES ('771', '2012', '1', '2', '10',  '2012','T1','Febrero','10');
INSERT INTO "D_TIEMPO" VALUES ('772', '2012', '1', '2', '11',  '2012','T1','Febrero','11');
INSERT INTO "D_TIEMPO" VALUES ('773', '2012', '1', '2', '12',  '2012','T1','Febrero','12');
INSERT INTO "D_TIEMPO" VALUES ('774', '2012', '1', '2', '13',  '2012','T1','Febrero','13');
INSERT INTO "D_TIEMPO" VALUES ('775', '2012', '1', '2', '14',  '2012','T1','Febrero','14');
INSERT INTO "D_TIEMPO" VALUES ('776', '2012', '1', '2', '15',  '2012','T1','Febrero','15');
INSERT INTO "D_TIEMPO" VALUES ('777', '2012', '1', '2', '16',  '2012','T1','Febrero','16');
INSERT INTO "D_TIEMPO" VALUES ('778', '2012', '1', '2', '17',  '2012','T1','Febrero','17');
INSERT INTO "D_TIEMPO" VALUES ('779', '2012', '1', '2', '18',  '2012','T1','Febrero','18');
INSERT INTO "D_TIEMPO" VALUES ('780', '2012', '1', '2', '19',  '2012','T1','Febrero','19');
INSERT INTO "D_TIEMPO" VALUES ('781', '2012', '1', '2', '20',  '2012','T1','Febrero','20');
INSERT INTO "D_TIEMPO" VALUES ('782', '2012', '1', '2', '21',  '2012','T1','Febrero','21');
INSERT INTO "D_TIEMPO" VALUES ('783', '2012', '1', '2', '22',  '2012','T1','Febrero','22');
INSERT INTO "D_TIEMPO" VALUES ('784', '2012', '1', '2', '23',  '2012','T1','Febrero','23');
INSERT INTO "D_TIEMPO" VALUES ('785', '2012', '1', '2', '24',  '2012','T1','Febrero','24');
INSERT INTO "D_TIEMPO" VALUES ('786', '2012', '1', '2', '25',  '2012','T1','Febrero','25');
INSERT INTO "D_TIEMPO" VALUES ('787', '2012', '1', '2', '26',  '2012','T1','Febrero','26');
INSERT INTO "D_TIEMPO" VALUES ('788', '2012', '1', '2', '27',  '2012','T1','Febrero','27');
INSERT INTO "D_TIEMPO" VALUES ('789', '2012', '1', '2', '28',  '2012','T1','Febrero','28');
INSERT INTO "D_TIEMPO" VALUES ('790', '2012', '1', '2', '29',  '2012','T1','Febrero','29');
INSERT INTO "D_TIEMPO" VALUES ('791', '2012', '1', '3', '1',  '2012','T1','Marzo','01');
INSERT INTO "D_TIEMPO" VALUES ('792', '2012', '1', '3', '2',  '2012','T1','Marzo','02');
INSERT INTO "D_TIEMPO" VALUES ('793', '2012', '1', '3', '3',  '2012','T1','Marzo','03');
INSERT INTO "D_TIEMPO" VALUES ('794', '2012', '1', '3', '4',  '2012','T1','Marzo','04');
INSERT INTO "D_TIEMPO" VALUES ('795', '2012', '1', '3', '5',  '2012','T1','Marzo','05');
INSERT INTO "D_TIEMPO" VALUES ('796', '2012', '1', '3', '6',  '2012','T1','Marzo','06');
INSERT INTO "D_TIEMPO" VALUES ('797', '2012', '1', '3', '7',  '2012','T1','Marzo','07');
INSERT INTO "D_TIEMPO" VALUES ('798', '2012', '1', '3', '8',  '2012','T1','Marzo','08');
INSERT INTO "D_TIEMPO" VALUES ('799', '2012', '1', '3', '9',  '2012','T1','Marzo','09');
INSERT INTO "D_TIEMPO" VALUES ('800', '2012', '1', '3', '10',  '2012','T1','Marzo','10');
INSERT INTO "D_TIEMPO" VALUES ('801', '2012', '1', '3', '11',  '2012','T1','Marzo','11');
INSERT INTO "D_TIEMPO" VALUES ('802', '2012', '1', '3', '12',  '2012','T1','Marzo','12');
INSERT INTO "D_TIEMPO" VALUES ('803', '2012', '1', '3', '13',  '2012','T1','Marzo','13');
INSERT INTO "D_TIEMPO" VALUES ('804', '2012', '1', '3', '14',  '2012','T1','Marzo','14');
INSERT INTO "D_TIEMPO" VALUES ('805', '2012', '1', '3', '15',  '2012','T1','Marzo','15');
INSERT INTO "D_TIEMPO" VALUES ('806', '2012', '1', '3', '16',  '2012','T1','Marzo','16');
INSERT INTO "D_TIEMPO" VALUES ('807', '2012', '1', '3', '17',  '2012','T1','Marzo','17');
INSERT INTO "D_TIEMPO" VALUES ('808', '2012', '1', '3', '18',  '2012','T1','Marzo','18');
INSERT INTO "D_TIEMPO" VALUES ('809', '2012', '1', '3', '19',  '2012','T1','Marzo','19');
INSERT INTO "D_TIEMPO" VALUES ('810', '2012', '1', '3', '20',  '2012','T1','Marzo','20');
INSERT INTO "D_TIEMPO" VALUES ('811', '2012', '1', '3', '21',  '2012','T1','Marzo','21');
INSERT INTO "D_TIEMPO" VALUES ('812', '2012', '1', '3', '22',  '2012','T1','Marzo','22');
INSERT INTO "D_TIEMPO" VALUES ('813', '2012', '1', '3', '23',  '2012','T1','Marzo','23');
INSERT INTO "D_TIEMPO" VALUES ('814', '2012', '1', '3', '24',  '2012','T1','Marzo','24');
INSERT INTO "D_TIEMPO" VALUES ('815', '2012', '1', '3', '25',  '2012','T1','Marzo','25');
INSERT INTO "D_TIEMPO" VALUES ('816', '2012', '1', '3', '26',  '2012','T1','Marzo','26');
INSERT INTO "D_TIEMPO" VALUES ('817', '2012', '1', '3', '27',  '2012','T1','Marzo','27');
INSERT INTO "D_TIEMPO" VALUES ('818', '2012', '1', '3', '28',  '2012','T1','Marzo','28');
INSERT INTO "D_TIEMPO" VALUES ('819', '2012', '1', '3', '29',  '2012','T1','Marzo','29');
INSERT INTO "D_TIEMPO" VALUES ('820', '2012', '1', '3', '30',  '2012','T1','Marzo','30');
INSERT INTO "D_TIEMPO" VALUES ('821', '2012', '1', '3', '31',  '2012','T1','Marzo','31');
INSERT INTO "D_TIEMPO" VALUES ('822', '2012', '2', '4', '1',  '2012','T2','Abril','01');
INSERT INTO "D_TIEMPO" VALUES ('823', '2012', '2', '4', '2',  '2012','T2','Abril','02');
INSERT INTO "D_TIEMPO" VALUES ('824', '2012', '2', '4', '3',  '2012','T2','Abril','03');
INSERT INTO "D_TIEMPO" VALUES ('825', '2012', '2', '4', '4',  '2012','T2','Abril','04');
INSERT INTO "D_TIEMPO" VALUES ('826', '2012', '2', '4', '5',  '2012','T2','Abril','05');
INSERT INTO "D_TIEMPO" VALUES ('827', '2012', '2', '4', '6',  '2012','T2','Abril','06');
INSERT INTO "D_TIEMPO" VALUES ('828', '2012', '2', '4', '7',  '2012','T2','Abril','07');
INSERT INTO "D_TIEMPO" VALUES ('829', '2012', '2', '4', '8',  '2012','T2','Abril','08');
INSERT INTO "D_TIEMPO" VALUES ('830', '2012', '2', '4', '9',  '2012','T2','Abril','09');
INSERT INTO "D_TIEMPO" VALUES ('831', '2012', '2', '4', '10',  '2012','T2','Abril','10');
INSERT INTO "D_TIEMPO" VALUES ('832', '2012', '2', '4', '11',  '2012','T2','Abril','11');
INSERT INTO "D_TIEMPO" VALUES ('833', '2012', '2', '4', '12',  '2012','T2','Abril','12');
INSERT INTO "D_TIEMPO" VALUES ('834', '2012', '2', '4', '13',  '2012','T2','Abril','13');
INSERT INTO "D_TIEMPO" VALUES ('835', '2012', '2', '4', '14',  '2012','T2','Abril','14');
INSERT INTO "D_TIEMPO" VALUES ('836', '2012', '2', '4', '15',  '2012','T2','Abril','15');
INSERT INTO "D_TIEMPO" VALUES ('837', '2012', '2', '4', '16',  '2012','T2','Abril','16');
INSERT INTO "D_TIEMPO" VALUES ('838', '2012', '2', '4', '17',  '2012','T2','Abril','17');
INSERT INTO "D_TIEMPO" VALUES ('839', '2012', '2', '4', '18',  '2012','T2','Abril','18');
INSERT INTO "D_TIEMPO" VALUES ('840', '2012', '2', '4', '19',  '2012','T2','Abril','19');
INSERT INTO "D_TIEMPO" VALUES ('841', '2012', '2', '4', '20',  '2012','T2','Abril','20');
INSERT INTO "D_TIEMPO" VALUES ('842', '2012', '2', '4', '21',  '2012','T2','Abril','21');
INSERT INTO "D_TIEMPO" VALUES ('843', '2012', '2', '4', '22',  '2012','T2','Abril','22');
INSERT INTO "D_TIEMPO" VALUES ('844', '2012', '2', '4', '23',  '2012','T2','Abril','23');
INSERT INTO "D_TIEMPO" VALUES ('845', '2012', '2', '4', '24',  '2012','T2','Abril','24');
INSERT INTO "D_TIEMPO" VALUES ('846', '2012', '2', '4', '25',  '2012','T2','Abril','25');
INSERT INTO "D_TIEMPO" VALUES ('847', '2012', '2', '4', '26',  '2012','T2','Abril','26');
INSERT INTO "D_TIEMPO" VALUES ('848', '2012', '2', '4', '27',  '2012','T2','Abril','27');
INSERT INTO "D_TIEMPO" VALUES ('849', '2012', '2', '4', '28',  '2012','T2','Abril','28');
INSERT INTO "D_TIEMPO" VALUES ('850', '2012', '2', '4', '29',  '2012','T2','Abril','29');
INSERT INTO "D_TIEMPO" VALUES ('851', '2012', '2', '4', '30',  '2012','T2','Abril','30');
INSERT INTO "D_TIEMPO" VALUES ('852', '2012', '2', '5', '1',  '2012','T2','Mayo','01');
INSERT INTO "D_TIEMPO" VALUES ('853', '2012', '2', '5', '2',  '2012','T2','Mayo','02');
INSERT INTO "D_TIEMPO" VALUES ('854', '2012', '2', '5', '3',  '2012','T2','Mayo','03');
INSERT INTO "D_TIEMPO" VALUES ('855', '2012', '2', '5', '4',  '2012','T2','Mayo','04');
INSERT INTO "D_TIEMPO" VALUES ('856', '2012', '2', '5', '5',  '2012','T2','Mayo','05');
INSERT INTO "D_TIEMPO" VALUES ('857', '2012', '2', '5', '6',  '2012','T2','Mayo','06');
INSERT INTO "D_TIEMPO" VALUES ('858', '2012', '2', '5', '7',  '2012','T2','Mayo','07');
INSERT INTO "D_TIEMPO" VALUES ('859', '2012', '2', '5', '8',  '2012','T2','Mayo','08');
INSERT INTO "D_TIEMPO" VALUES ('860', '2012', '2', '5', '9',  '2012','T2','Mayo','09');
INSERT INTO "D_TIEMPO" VALUES ('861', '2012', '2', '5', '10',  '2012','T2','Mayo','10');
INSERT INTO "D_TIEMPO" VALUES ('862', '2012', '2', '5', '11',  '2012','T2','Mayo','11');
INSERT INTO "D_TIEMPO" VALUES ('863', '2012', '2', '5', '12',  '2012','T2','Mayo','12');
INSERT INTO "D_TIEMPO" VALUES ('864', '2012', '2', '5', '13',  '2012','T2','Mayo','13');
INSERT INTO "D_TIEMPO" VALUES ('865', '2012', '2', '5', '14',  '2012','T2','Mayo','14');
INSERT INTO "D_TIEMPO" VALUES ('866', '2012', '2', '5', '15',  '2012','T2','Mayo','15');
INSERT INTO "D_TIEMPO" VALUES ('867', '2012', '2', '5', '16',  '2012','T2','Mayo','16');
INSERT INTO "D_TIEMPO" VALUES ('868', '2012', '2', '5', '17',  '2012','T2','Mayo','17');
INSERT INTO "D_TIEMPO" VALUES ('869', '2012', '2', '5', '18',  '2012','T2','Mayo','18');
INSERT INTO "D_TIEMPO" VALUES ('870', '2012', '2', '5', '19',  '2012','T2','Mayo','19');
INSERT INTO "D_TIEMPO" VALUES ('871', '2012', '2', '5', '20',  '2012','T2','Mayo','20');
INSERT INTO "D_TIEMPO" VALUES ('872', '2012', '2', '5', '21',  '2012','T2','Mayo','21');
INSERT INTO "D_TIEMPO" VALUES ('873', '2012', '2', '5', '22',  '2012','T2','Mayo','22');
INSERT INTO "D_TIEMPO" VALUES ('874', '2012', '2', '5', '23',  '2012','T2','Mayo','23');
INSERT INTO "D_TIEMPO" VALUES ('875', '2012', '2', '5', '24',  '2012','T2','Mayo','24');
INSERT INTO "D_TIEMPO" VALUES ('876', '2012', '2', '5', '25',  '2012','T2','Mayo','25');
INSERT INTO "D_TIEMPO" VALUES ('877', '2012', '2', '5', '26',  '2012','T2','Mayo','26');
INSERT INTO "D_TIEMPO" VALUES ('878', '2012', '2', '5', '27',  '2012','T2','Mayo','27');
INSERT INTO "D_TIEMPO" VALUES ('879', '2012', '2', '5', '28',  '2012','T2','Mayo','28');
INSERT INTO "D_TIEMPO" VALUES ('880', '2012', '2', '5', '29',  '2012','T2','Mayo','29');
INSERT INTO "D_TIEMPO" VALUES ('881', '2012', '2', '5', '30',  '2012','T2','Mayo','30');
INSERT INTO "D_TIEMPO" VALUES ('882', '2012', '2', '5', '31',  '2012','T2','Mayo','31');
INSERT INTO "D_TIEMPO" VALUES ('883', '2012', '2', '6', '1',  '2012','T2','Junio','01');
INSERT INTO "D_TIEMPO" VALUES ('884', '2012', '2', '6', '2',  '2012','T2','Junio','02');
INSERT INTO "D_TIEMPO" VALUES ('885', '2012', '2', '6', '3',  '2012','T2','Junio','03');
INSERT INTO "D_TIEMPO" VALUES ('886', '2012', '2', '6', '4',  '2012','T2','Junio','04');
INSERT INTO "D_TIEMPO" VALUES ('887', '2012', '2', '6', '5',  '2012','T2','Junio','05');
INSERT INTO "D_TIEMPO" VALUES ('888', '2012', '2', '6', '6',  '2012','T2','Junio','06');
INSERT INTO "D_TIEMPO" VALUES ('889', '2012', '2', '6', '7',  '2012','T2','Junio','07');
INSERT INTO "D_TIEMPO" VALUES ('890', '2012', '2', '6', '8',  '2012','T2','Junio','08');
INSERT INTO "D_TIEMPO" VALUES ('891', '2012', '2', '6', '9',  '2012','T2','Junio','09');
INSERT INTO "D_TIEMPO" VALUES ('892', '2012', '2', '6', '10',  '2012','T2','Junio','10');
INSERT INTO "D_TIEMPO" VALUES ('893', '2012', '2', '6', '11',  '2012','T2','Junio','11');
INSERT INTO "D_TIEMPO" VALUES ('894', '2012', '2', '6', '12',  '2012','T2','Junio','12');
INSERT INTO "D_TIEMPO" VALUES ('895', '2012', '2', '6', '13',  '2012','T2','Junio','13');
INSERT INTO "D_TIEMPO" VALUES ('896', '2012', '2', '6', '14',  '2012','T2','Junio','14');
INSERT INTO "D_TIEMPO" VALUES ('897', '2012', '2', '6', '15',  '2012','T2','Junio','15');
INSERT INTO "D_TIEMPO" VALUES ('898', '2012', '2', '6', '16',  '2012','T2','Junio','16');
INSERT INTO "D_TIEMPO" VALUES ('899', '2012', '2', '6', '17',  '2012','T2','Junio','17');
INSERT INTO "D_TIEMPO" VALUES ('900', '2012', '2', '6', '18',  '2012','T2','Junio','18');
INSERT INTO "D_TIEMPO" VALUES ('901', '2012', '2', '6', '19',  '2012','T2','Junio','19');
INSERT INTO "D_TIEMPO" VALUES ('902', '2012', '2', '6', '20',  '2012','T2','Junio','20');
INSERT INTO "D_TIEMPO" VALUES ('903', '2012', '2', '6', '21',  '2012','T2','Junio','21');
INSERT INTO "D_TIEMPO" VALUES ('904', '2012', '2', '6', '22',  '2012','T2','Junio','22');
INSERT INTO "D_TIEMPO" VALUES ('905', '2012', '2', '6', '23',  '2012','T2','Junio','23');
INSERT INTO "D_TIEMPO" VALUES ('906', '2012', '2', '6', '24',  '2012','T2','Junio','24');
INSERT INTO "D_TIEMPO" VALUES ('907', '2012', '2', '6', '25',  '2012','T2','Junio','25');
INSERT INTO "D_TIEMPO" VALUES ('908', '2012', '2', '6', '26',  '2012','T2','Junio','26');
INSERT INTO "D_TIEMPO" VALUES ('909', '2012', '2', '6', '27',  '2012','T2','Junio','27');
INSERT INTO "D_TIEMPO" VALUES ('910', '2012', '2', '6', '28',  '2012','T2','Junio','28');
INSERT INTO "D_TIEMPO" VALUES ('911', '2012', '2', '6', '29',  '2012','T2','Junio','29');
INSERT INTO "D_TIEMPO" VALUES ('912', '2012', '2', '6', '30',  '2012','T2','Junio','30');
INSERT INTO "D_TIEMPO" VALUES ('913', '2012', '3', '7', '1',  '2012','T3','Julio','01');
INSERT INTO "D_TIEMPO" VALUES ('914', '2012', '3', '7', '2',  '2012','T3','Julio','02');
INSERT INTO "D_TIEMPO" VALUES ('915', '2012', '3', '7', '3',  '2012','T3','Julio','03');
INSERT INTO "D_TIEMPO" VALUES ('916', '2012', '3', '7', '4',  '2012','T3','Julio','04');
INSERT INTO "D_TIEMPO" VALUES ('917', '2012', '3', '7', '5',  '2012','T3','Julio','05');
INSERT INTO "D_TIEMPO" VALUES ('918', '2012', '3', '7', '6',  '2012','T3','Julio','06');
INSERT INTO "D_TIEMPO" VALUES ('919', '2012', '3', '7', '7',  '2012','T3','Julio','07');
INSERT INTO "D_TIEMPO" VALUES ('920', '2012', '3', '7', '8',  '2012','T3','Julio','08');
INSERT INTO "D_TIEMPO" VALUES ('921', '2012', '3', '7', '9',  '2012','T3','Julio','09');
INSERT INTO "D_TIEMPO" VALUES ('922', '2012', '3', '7', '10',  '2012','T3','Julio','10');
INSERT INTO "D_TIEMPO" VALUES ('923', '2012', '3', '7', '11',  '2012','T3','Julio','11');
INSERT INTO "D_TIEMPO" VALUES ('924', '2012', '3', '7', '12',  '2012','T3','Julio','12');
INSERT INTO "D_TIEMPO" VALUES ('925', '2012', '3', '7', '13',  '2012','T3','Julio','13');
INSERT INTO "D_TIEMPO" VALUES ('926', '2012', '3', '7', '14',  '2012','T3','Julio','14');
INSERT INTO "D_TIEMPO" VALUES ('927', '2012', '3', '7', '15',  '2012','T3','Julio','15');
INSERT INTO "D_TIEMPO" VALUES ('928', '2012', '3', '7', '16',  '2012','T3','Julio','16');
INSERT INTO "D_TIEMPO" VALUES ('929', '2012', '3', '7', '17',  '2012','T3','Julio','17');
INSERT INTO "D_TIEMPO" VALUES ('930', '2012', '3', '7', '18',  '2012','T3','Julio','18');
INSERT INTO "D_TIEMPO" VALUES ('931', '2012', '3', '7', '19',  '2012','T3','Julio','19');
INSERT INTO "D_TIEMPO" VALUES ('932', '2012', '3', '7', '20',  '2012','T3','Julio','20');
INSERT INTO "D_TIEMPO" VALUES ('933', '2012', '3', '7', '21',  '2012','T3','Julio','21');
INSERT INTO "D_TIEMPO" VALUES ('934', '2012', '3', '7', '22',  '2012','T3','Julio','22');
INSERT INTO "D_TIEMPO" VALUES ('935', '2012', '3', '7', '23',  '2012','T3','Julio','23');
INSERT INTO "D_TIEMPO" VALUES ('936', '2012', '3', '7', '24',  '2012','T3','Julio','24');
INSERT INTO "D_TIEMPO" VALUES ('937', '2012', '3', '7', '25',  '2012','T3','Julio','25');
INSERT INTO "D_TIEMPO" VALUES ('938', '2012', '3', '7', '26',  '2012','T3','Julio','26');
INSERT INTO "D_TIEMPO" VALUES ('939', '2012', '3', '7', '27',  '2012','T3','Julio','27');
INSERT INTO "D_TIEMPO" VALUES ('940', '2012', '3', '7', '28',  '2012','T3','Julio','28');
INSERT INTO "D_TIEMPO" VALUES ('941', '2012', '3', '7', '29',  '2012','T3','Julio','29');
INSERT INTO "D_TIEMPO" VALUES ('942', '2012', '3', '7', '30',  '2012','T3','Julio','30');
INSERT INTO "D_TIEMPO" VALUES ('943', '2012', '3', '7', '31',  '2012','T3','Julio','31');
INSERT INTO "D_TIEMPO" VALUES ('944', '2012', '3', '8', '1',  '2012','T3','Agosto','01');
INSERT INTO "D_TIEMPO" VALUES ('945', '2012', '3', '8', '2',  '2012','T3','Agosto','02');
INSERT INTO "D_TIEMPO" VALUES ('946', '2012', '3', '8', '3',  '2012','T3','Agosto','03');
INSERT INTO "D_TIEMPO" VALUES ('947', '2012', '3', '8', '4',  '2012','T3','Agosto','04');
INSERT INTO "D_TIEMPO" VALUES ('948', '2012', '3', '8', '5',  '2012','T3','Agosto','05');
INSERT INTO "D_TIEMPO" VALUES ('949', '2012', '3', '8', '6',  '2012','T3','Agosto','06');
INSERT INTO "D_TIEMPO" VALUES ('950', '2012', '3', '8', '7',  '2012','T3','Agosto','07');
INSERT INTO "D_TIEMPO" VALUES ('951', '2012', '3', '8', '8',  '2012','T3','Agosto','08');
INSERT INTO "D_TIEMPO" VALUES ('952', '2012', '3', '8', '9',  '2012','T3','Agosto','09');
INSERT INTO "D_TIEMPO" VALUES ('953', '2012', '3', '8', '10',  '2012','T3','Agosto','10');
INSERT INTO "D_TIEMPO" VALUES ('954', '2012', '3', '8', '11',  '2012','T3','Agosto','11');
INSERT INTO "D_TIEMPO" VALUES ('955', '2012', '3', '8', '12',  '2012','T3','Agosto','12');
INSERT INTO "D_TIEMPO" VALUES ('956', '2012', '3', '8', '13',  '2012','T3','Agosto','13');
INSERT INTO "D_TIEMPO" VALUES ('957', '2012', '3', '8', '14',  '2012','T3','Agosto','14');
INSERT INTO "D_TIEMPO" VALUES ('958', '2012', '3', '8', '15',  '2012','T3','Agosto','15');
INSERT INTO "D_TIEMPO" VALUES ('959', '2012', '3', '8', '16',  '2012','T3','Agosto','16');
INSERT INTO "D_TIEMPO" VALUES ('960', '2012', '3', '8', '17',  '2012','T3','Agosto','17');
INSERT INTO "D_TIEMPO" VALUES ('961', '2012', '3', '8', '18',  '2012','T3','Agosto','18');
INSERT INTO "D_TIEMPO" VALUES ('962', '2012', '3', '8', '19',  '2012','T3','Agosto','19');
INSERT INTO "D_TIEMPO" VALUES ('963', '2012', '3', '8', '20',  '2012','T3','Agosto','20');
INSERT INTO "D_TIEMPO" VALUES ('964', '2012', '3', '8', '21',  '2012','T3','Agosto','21');
INSERT INTO "D_TIEMPO" VALUES ('965', '2012', '3', '8', '22',  '2012','T3','Agosto','22');
INSERT INTO "D_TIEMPO" VALUES ('966', '2012', '3', '8', '23',  '2012','T3','Agosto','23');
INSERT INTO "D_TIEMPO" VALUES ('967', '2012', '3', '8', '24',  '2012','T3','Agosto','24');
INSERT INTO "D_TIEMPO" VALUES ('968', '2012', '3', '8', '25',  '2012','T3','Agosto','25');
INSERT INTO "D_TIEMPO" VALUES ('969', '2012', '3', '8', '26',  '2012','T3','Agosto','26');
INSERT INTO "D_TIEMPO" VALUES ('970', '2012', '3', '8', '27',  '2012','T3','Agosto','27');
INSERT INTO "D_TIEMPO" VALUES ('971', '2012', '3', '8', '28',  '2012','T3','Agosto','28');
INSERT INTO "D_TIEMPO" VALUES ('972', '2012', '3', '8', '29',  '2012','T3','Agosto','29');
INSERT INTO "D_TIEMPO" VALUES ('973', '2012', '3', '8', '30',  '2012','T3','Agosto','30');
INSERT INTO "D_TIEMPO" VALUES ('974', '2012', '3', '8', '31',  '2012','T3','Agosto','31');
INSERT INTO "D_TIEMPO" VALUES ('975', '2012', '3', '9', '1',  '2012','T3','Septiembre','01');
INSERT INTO "D_TIEMPO" VALUES ('976', '2012', '3', '9', '2',  '2012','T3','Septiembre','02');
INSERT INTO "D_TIEMPO" VALUES ('977', '2012', '3', '9', '3',  '2012','T3','Septiembre','03');
INSERT INTO "D_TIEMPO" VALUES ('978', '2012', '3', '9', '4',  '2012','T3','Septiembre','04');
INSERT INTO "D_TIEMPO" VALUES ('979', '2012', '3', '9', '5',  '2012','T3','Septiembre','05');
INSERT INTO "D_TIEMPO" VALUES ('980', '2012', '3', '9', '6',  '2012','T3','Septiembre','06');
INSERT INTO "D_TIEMPO" VALUES ('981', '2012', '3', '9', '7',  '2012','T3','Septiembre','07');
INSERT INTO "D_TIEMPO" VALUES ('982', '2012', '3', '9', '8',  '2012','T3','Septiembre','08');
INSERT INTO "D_TIEMPO" VALUES ('983', '2012', '3', '9', '9',  '2012','T3','Septiembre','09');
INSERT INTO "D_TIEMPO" VALUES ('984', '2012', '3', '9', '10',  '2012','T3','Septiembre','10');
INSERT INTO "D_TIEMPO" VALUES ('985', '2012', '3', '9', '11',  '2012','T3','Septiembre','11');
INSERT INTO "D_TIEMPO" VALUES ('986', '2012', '3', '9', '12',  '2012','T3','Septiembre','12');
INSERT INTO "D_TIEMPO" VALUES ('987', '2012', '3', '9', '13',  '2012','T3','Septiembre','13');
INSERT INTO "D_TIEMPO" VALUES ('988', '2012', '3', '9', '14',  '2012','T3','Septiembre','14');
INSERT INTO "D_TIEMPO" VALUES ('989', '2012', '3', '9', '15',  '2012','T3','Septiembre','15');
INSERT INTO "D_TIEMPO" VALUES ('990', '2012', '3', '9', '16',  '2012','T3','Septiembre','16');
INSERT INTO "D_TIEMPO" VALUES ('991', '2012', '3', '9', '17',  '2012','T3','Septiembre','17');
INSERT INTO "D_TIEMPO" VALUES ('992', '2012', '3', '9', '18',  '2012','T3','Septiembre','18');
INSERT INTO "D_TIEMPO" VALUES ('993', '2012', '3', '9', '19',  '2012','T3','Septiembre','19');
INSERT INTO "D_TIEMPO" VALUES ('994', '2012', '3', '9', '20',  '2012','T3','Septiembre','20');
INSERT INTO "D_TIEMPO" VALUES ('995', '2012', '3', '9', '21',  '2012','T3','Septiembre','21');
INSERT INTO "D_TIEMPO" VALUES ('996', '2012', '3', '9', '22',  '2012','T3','Septiembre','22');
INSERT INTO "D_TIEMPO" VALUES ('997', '2012', '3', '9', '23',  '2012','T3','Septiembre','23');
INSERT INTO "D_TIEMPO" VALUES ('998', '2012', '3', '9', '24',  '2012','T3','Septiembre','24');
INSERT INTO "D_TIEMPO" VALUES ('999', '2012', '3', '9', '25',  '2012','T3','Septiembre','25');
INSERT INTO "D_TIEMPO" VALUES ('1000', '2012', '3', '9', '26',  '2012','T3','Septiembre','26');
INSERT INTO "D_TIEMPO" VALUES ('1001', '2012', '3', '9', '27',  '2012','T3','Septiembre','27');
INSERT INTO "D_TIEMPO" VALUES ('1002', '2012', '3', '9', '28',  '2012','T3','Septiembre','28');
INSERT INTO "D_TIEMPO" VALUES ('1003', '2012', '3', '9', '29',  '2012','T3','Septiembre','29');
INSERT INTO "D_TIEMPO" VALUES ('1004', '2012', '3', '9', '30',  '2012','T3','Septiembre','30');
INSERT INTO "D_TIEMPO" VALUES ('1005', '2012', '4', '10', '1',  '2012','T4','Octubre','01');
INSERT INTO "D_TIEMPO" VALUES ('1006', '2012', '4', '10', '2',  '2012','T4','Octubre','02');
INSERT INTO "D_TIEMPO" VALUES ('1007', '2012', '4', '10', '3',  '2012','T4','Octubre','03');
INSERT INTO "D_TIEMPO" VALUES ('1008', '2012', '4', '10', '4',  '2012','T4','Octubre','04');
INSERT INTO "D_TIEMPO" VALUES ('1009', '2012', '4', '10', '5',  '2012','T4','Octubre','05');
INSERT INTO "D_TIEMPO" VALUES ('1010', '2012', '4', '10', '6',  '2012','T4','Octubre','06');
INSERT INTO "D_TIEMPO" VALUES ('1011', '2012', '4', '10', '7',  '2012','T4','Octubre','07');
INSERT INTO "D_TIEMPO" VALUES ('1012', '2012', '4', '10', '8',  '2012','T4','Octubre','08');
INSERT INTO "D_TIEMPO" VALUES ('1013', '2012', '4', '10', '9',  '2012','T4','Octubre','09');
INSERT INTO "D_TIEMPO" VALUES ('1014', '2012', '4', '10', '10',  '2012','T4','Octubre','10');
INSERT INTO "D_TIEMPO" VALUES ('1015', '2012', '4', '10', '11',  '2012','T4','Octubre','11');
INSERT INTO "D_TIEMPO" VALUES ('1016', '2012', '4', '10', '12',  '2012','T4','Octubre','12');
INSERT INTO "D_TIEMPO" VALUES ('1017', '2012', '4', '10', '13',  '2012','T4','Octubre','13');
INSERT INTO "D_TIEMPO" VALUES ('1018', '2012', '4', '10', '14',  '2012','T4','Octubre','14');
INSERT INTO "D_TIEMPO" VALUES ('1019', '2012', '4', '10', '15',  '2012','T4','Octubre','15');
INSERT INTO "D_TIEMPO" VALUES ('1020', '2012', '4', '10', '16',  '2012','T4','Octubre','16');
INSERT INTO "D_TIEMPO" VALUES ('1021', '2012', '4', '10', '17',  '2012','T4','Octubre','17');
INSERT INTO "D_TIEMPO" VALUES ('1022', '2012', '4', '10', '18',  '2012','T4','Octubre','18');
INSERT INTO "D_TIEMPO" VALUES ('1023', '2012', '4', '10', '19',  '2012','T4','Octubre','19');
INSERT INTO "D_TIEMPO" VALUES ('1024', '2012', '4', '10', '20',  '2012','T4','Octubre','20');
INSERT INTO "D_TIEMPO" VALUES ('1025', '2012', '4', '10', '21',  '2012','T4','Octubre','21');
INSERT INTO "D_TIEMPO" VALUES ('1026', '2012', '4', '10', '22',  '2012','T4','Octubre','22');
INSERT INTO "D_TIEMPO" VALUES ('1027', '2012', '4', '10', '23',  '2012','T4','Octubre','23');
INSERT INTO "D_TIEMPO" VALUES ('1028', '2012', '4', '10', '24',  '2012','T4','Octubre','24');
INSERT INTO "D_TIEMPO" VALUES ('1029', '2012', '4', '10', '25',  '2012','T4','Octubre','25');
INSERT INTO "D_TIEMPO" VALUES ('1030', '2012', '4', '10', '26',  '2012','T4','Octubre','26');
INSERT INTO "D_TIEMPO" VALUES ('1031', '2012', '4', '10', '27',  '2012','T4','Octubre','27');
INSERT INTO "D_TIEMPO" VALUES ('1032', '2012', '4', '10', '28',  '2012','T4','Octubre','28');
INSERT INTO "D_TIEMPO" VALUES ('1033', '2012', '4', '10', '29',  '2012','T4','Octubre','29');
INSERT INTO "D_TIEMPO" VALUES ('1034', '2012', '4', '10', '30',  '2012','T4','Octubre','30');
INSERT INTO "D_TIEMPO" VALUES ('1035', '2012', '4', '10', '31',  '2012','T4','Octubre','31');
INSERT INTO "D_TIEMPO" VALUES ('1036', '2012', '4', '11', '1',  '2012','T4','Noviembre','01');
INSERT INTO "D_TIEMPO" VALUES ('1037', '2012', '4', '11', '2',  '2012','T4','Noviembre','02');
INSERT INTO "D_TIEMPO" VALUES ('1038', '2012', '4', '11', '3',  '2012','T4','Noviembre','03');
INSERT INTO "D_TIEMPO" VALUES ('1039', '2012', '4', '11', '4',  '2012','T4','Noviembre','04');
INSERT INTO "D_TIEMPO" VALUES ('1040', '2012', '4', '11', '5',  '2012','T4','Noviembre','05');
INSERT INTO "D_TIEMPO" VALUES ('1041', '2012', '4', '11', '6',  '2012','T4','Noviembre','06');
INSERT INTO "D_TIEMPO" VALUES ('1042', '2012', '4', '11', '7',  '2012','T4','Noviembre','07');
INSERT INTO "D_TIEMPO" VALUES ('1043', '2012', '4', '11', '8',  '2012','T4','Noviembre','08');
INSERT INTO "D_TIEMPO" VALUES ('1044', '2012', '4', '11', '9',  '2012','T4','Noviembre','09');
INSERT INTO "D_TIEMPO" VALUES ('1045', '2012', '4', '11', '10',  '2012','T4','Noviembre','10');
INSERT INTO "D_TIEMPO" VALUES ('1046', '2012', '4', '11', '11',  '2012','T4','Noviembre','11');
INSERT INTO "D_TIEMPO" VALUES ('1047', '2012', '4', '11', '12',  '2012','T4','Noviembre','12');
INSERT INTO "D_TIEMPO" VALUES ('1048', '2012', '4', '11', '13',  '2012','T4','Noviembre','13');
INSERT INTO "D_TIEMPO" VALUES ('1049', '2012', '4', '11', '14',  '2012','T4','Noviembre','14');
INSERT INTO "D_TIEMPO" VALUES ('1050', '2012', '4', '11', '15',  '2012','T4','Noviembre','15');
INSERT INTO "D_TIEMPO" VALUES ('1051', '2012', '4', '11', '16',  '2012','T4','Noviembre','16');
INSERT INTO "D_TIEMPO" VALUES ('1052', '2012', '4', '11', '17',  '2012','T4','Noviembre','17');
INSERT INTO "D_TIEMPO" VALUES ('1053', '2012', '4', '11', '18',  '2012','T4','Noviembre','18');
INSERT INTO "D_TIEMPO" VALUES ('1054', '2012', '4', '11', '19',  '2012','T4','Noviembre','19');
INSERT INTO "D_TIEMPO" VALUES ('1055', '2012', '4', '11', '20',  '2012','T4','Noviembre','20');
INSERT INTO "D_TIEMPO" VALUES ('1056', '2012', '4', '11', '21',  '2012','T4','Noviembre','21');
INSERT INTO "D_TIEMPO" VALUES ('1057', '2012', '4', '11', '22',  '2012','T4','Noviembre','22');
INSERT INTO "D_TIEMPO" VALUES ('1058', '2012', '4', '11', '23',  '2012','T4','Noviembre','23');
INSERT INTO "D_TIEMPO" VALUES ('1059', '2012', '4', '11', '24',  '2012','T4','Noviembre','24');
INSERT INTO "D_TIEMPO" VALUES ('1060', '2012', '4', '11', '25',  '2012','T4','Noviembre','25');
INSERT INTO "D_TIEMPO" VALUES ('1061', '2012', '4', '11', '26',  '2012','T4','Noviembre','26');
INSERT INTO "D_TIEMPO" VALUES ('1062', '2012', '4', '11', '27',  '2012','T4','Noviembre','27');
INSERT INTO "D_TIEMPO" VALUES ('1063', '2012', '4', '11', '28',  '2012','T4','Noviembre','28');
INSERT INTO "D_TIEMPO" VALUES ('1064', '2012', '4', '11', '29',  '2012','T4','Noviembre','29');
INSERT INTO "D_TIEMPO" VALUES ('1065', '2012', '4', '11', '30',  '2012','T4','Noviembre','30');
INSERT INTO "D_TIEMPO" VALUES ('1066', '2012', '4', '12', '1',  '2012','T4','Diciembre','01');
INSERT INTO "D_TIEMPO" VALUES ('1067', '2012', '4', '12', '2',  '2012','T4','Diciembre','02');
INSERT INTO "D_TIEMPO" VALUES ('1068', '2012', '4', '12', '3',  '2012','T4','Diciembre','03');
INSERT INTO "D_TIEMPO" VALUES ('1069', '2012', '4', '12', '4',  '2012','T4','Diciembre','04');
INSERT INTO "D_TIEMPO" VALUES ('1070', '2012', '4', '12', '5',  '2012','T4','Diciembre','05');
INSERT INTO "D_TIEMPO" VALUES ('1071', '2012', '4', '12', '6',  '2012','T4','Diciembre','06');
INSERT INTO "D_TIEMPO" VALUES ('1072', '2012', '4', '12', '7',  '2012','T4','Diciembre','07');
INSERT INTO "D_TIEMPO" VALUES ('1073', '2012', '4', '12', '8',  '2012','T4','Diciembre','08');
INSERT INTO "D_TIEMPO" VALUES ('1074', '2012', '4', '12', '9',  '2012','T4','Diciembre','09');
INSERT INTO "D_TIEMPO" VALUES ('1075', '2012', '4', '12', '10',  '2012','T4','Diciembre','10');
INSERT INTO "D_TIEMPO" VALUES ('1076', '2012', '4', '12', '11',  '2012','T4','Diciembre','11');
INSERT INTO "D_TIEMPO" VALUES ('1077', '2012', '4', '12', '12',  '2012','T4','Diciembre','12');
INSERT INTO "D_TIEMPO" VALUES ('1078', '2012', '4', '12', '13',  '2012','T4','Diciembre','13');
INSERT INTO "D_TIEMPO" VALUES ('1079', '2012', '4', '12', '14',  '2012','T4','Diciembre','14');
INSERT INTO "D_TIEMPO" VALUES ('1080', '2012', '4', '12', '15',  '2012','T4','Diciembre','15');
INSERT INTO "D_TIEMPO" VALUES ('1081', '2012', '4', '12', '16',  '2012','T4','Diciembre','16');
INSERT INTO "D_TIEMPO" VALUES ('1082', '2012', '4', '12', '17',  '2012','T4','Diciembre','17');
INSERT INTO "D_TIEMPO" VALUES ('1083', '2012', '4', '12', '18',  '2012','T4','Diciembre','18');
INSERT INTO "D_TIEMPO" VALUES ('1084', '2012', '4', '12', '19',  '2012','T4','Diciembre','19');
INSERT INTO "D_TIEMPO" VALUES ('1085', '2012', '4', '12', '20',  '2012','T4','Diciembre','20');
INSERT INTO "D_TIEMPO" VALUES ('1086', '2012', '4', '12', '21',  '2012','T4','Diciembre','21');
INSERT INTO "D_TIEMPO" VALUES ('1087', '2012', '4', '12', '22',  '2012','T4','Diciembre','22');
INSERT INTO "D_TIEMPO" VALUES ('1088', '2012', '4', '12', '23',  '2012','T4','Diciembre','23');
INSERT INTO "D_TIEMPO" VALUES ('1089', '2012', '4', '12', '24',  '2012','T4','Diciembre','24');
INSERT INTO "D_TIEMPO" VALUES ('1090', '2012', '4', '12', '25',  '2012','T4','Diciembre','25');
INSERT INTO "D_TIEMPO" VALUES ('1091', '2012', '4', '12', '26',  '2012','T4','Diciembre','26');
INSERT INTO "D_TIEMPO" VALUES ('1092', '2012', '4', '12', '27',  '2012','T4','Diciembre','27');
INSERT INTO "D_TIEMPO" VALUES ('1093', '2012', '4', '12', '28',  '2012','T4','Diciembre','28');
INSERT INTO "D_TIEMPO" VALUES ('1094', '2012', '4', '12', '29',  '2012','T4','Diciembre','29');
INSERT INTO "D_TIEMPO" VALUES ('1095', '2012', '4', '12', '30',  '2012','T4','Diciembre','30');
INSERT INTO "D_TIEMPO" VALUES ('1096', '2012', '4', '12', '31',  '2012','T4','Diciembre','31');
INSERT INTO "D_TIEMPO" VALUES ('1097', '2013', '1', '1', '1',  '2013','T1','Enero','01');
INSERT INTO "D_TIEMPO" VALUES ('1098', '2013', '1', '1', '2',  '2013','T1','Enero','02');
INSERT INTO "D_TIEMPO" VALUES ('1099', '2013', '1', '1', '3',  '2013','T1','Enero','03');
INSERT INTO "D_TIEMPO" VALUES ('1100', '2013', '1', '1', '4',  '2013','T1','Enero','04');
INSERT INTO "D_TIEMPO" VALUES ('1101', '2013', '1', '1', '5',  '2013','T1','Enero','05');
INSERT INTO "D_TIEMPO" VALUES ('1102', '2013', '1', '1', '6',  '2013','T1','Enero','06');
INSERT INTO "D_TIEMPO" VALUES ('1103', '2013', '1', '1', '7',  '2013','T1','Enero','07');
INSERT INTO "D_TIEMPO" VALUES ('1104', '2013', '1', '1', '8',  '2013','T1','Enero','08');
INSERT INTO "D_TIEMPO" VALUES ('1105', '2013', '1', '1', '9',  '2013','T1','Enero','09');
INSERT INTO "D_TIEMPO" VALUES ('1106', '2013', '1', '1', '10',  '2013','T1','Enero','10');
INSERT INTO "D_TIEMPO" VALUES ('1107', '2013', '1', '1', '11',  '2013','T1','Enero','11');
INSERT INTO "D_TIEMPO" VALUES ('1108', '2013', '1', '1', '12',  '2013','T1','Enero','12');
INSERT INTO "D_TIEMPO" VALUES ('1109', '2013', '1', '1', '13',  '2013','T1','Enero','13');
INSERT INTO "D_TIEMPO" VALUES ('1110', '2013', '1', '1', '14',  '2013','T1','Enero','14');
INSERT INTO "D_TIEMPO" VALUES ('1111', '2013', '1', '1', '15',  '2013','T1','Enero','15');
INSERT INTO "D_TIEMPO" VALUES ('1112', '2013', '1', '1', '16',  '2013','T1','Enero','16');
INSERT INTO "D_TIEMPO" VALUES ('1113', '2013', '1', '1', '17',  '2013','T1','Enero','17');
INSERT INTO "D_TIEMPO" VALUES ('1114', '2013', '1', '1', '18',  '2013','T1','Enero','18');
INSERT INTO "D_TIEMPO" VALUES ('1115', '2013', '1', '1', '19',  '2013','T1','Enero','19');
INSERT INTO "D_TIEMPO" VALUES ('1116', '2013', '1', '1', '20',  '2013','T1','Enero','20');
INSERT INTO "D_TIEMPO" VALUES ('1117', '2013', '1', '1', '21',  '2013','T1','Enero','21');
INSERT INTO "D_TIEMPO" VALUES ('1118', '2013', '1', '1', '22',  '2013','T1','Enero','22');
INSERT INTO "D_TIEMPO" VALUES ('1119', '2013', '1', '1', '23',  '2013','T1','Enero','23');
INSERT INTO "D_TIEMPO" VALUES ('1120', '2013', '1', '1', '24',  '2013','T1','Enero','24');
INSERT INTO "D_TIEMPO" VALUES ('1121', '2013', '1', '1', '25',  '2013','T1','Enero','25');
INSERT INTO "D_TIEMPO" VALUES ('1122', '2013', '1', '1', '26',  '2013','T1','Enero','26');
INSERT INTO "D_TIEMPO" VALUES ('1123', '2013', '1', '1', '27',  '2013','T1','Enero','27');
INSERT INTO "D_TIEMPO" VALUES ('1124', '2013', '1', '1', '28',  '2013','T1','Enero','28');
INSERT INTO "D_TIEMPO" VALUES ('1125', '2013', '1', '1', '29',  '2013','T1','Enero','29');
INSERT INTO "D_TIEMPO" VALUES ('1126', '2013', '1', '1', '30',  '2013','T1','Enero','30');
INSERT INTO "D_TIEMPO" VALUES ('1127', '2013', '1', '1', '31',  '2013','T1','Enero','31');
INSERT INTO "D_TIEMPO" VALUES ('1128', '2013', '1', '2', '1',  '2013','T1','Febrero','01');
INSERT INTO "D_TIEMPO" VALUES ('1129', '2013', '1', '2', '2',  '2013','T1','Febrero','02');
INSERT INTO "D_TIEMPO" VALUES ('1130', '2013', '1', '2', '3',  '2013','T1','Febrero','03');
INSERT INTO "D_TIEMPO" VALUES ('1131', '2013', '1', '2', '4',  '2013','T1','Febrero','04');
INSERT INTO "D_TIEMPO" VALUES ('1132', '2013', '1', '2', '5',  '2013','T1','Febrero','05');
INSERT INTO "D_TIEMPO" VALUES ('1133', '2013', '1', '2', '6',  '2013','T1','Febrero','06');
INSERT INTO "D_TIEMPO" VALUES ('1134', '2013', '1', '2', '7',  '2013','T1','Febrero','07');
INSERT INTO "D_TIEMPO" VALUES ('1135', '2013', '1', '2', '8',  '2013','T1','Febrero','08');
INSERT INTO "D_TIEMPO" VALUES ('1136', '2013', '1', '2', '9',  '2013','T1','Febrero','09');
INSERT INTO "D_TIEMPO" VALUES ('1137', '2013', '1', '2', '10',  '2013','T1','Febrero','10');
INSERT INTO "D_TIEMPO" VALUES ('1138', '2013', '1', '2', '11',  '2013','T1','Febrero','11');
INSERT INTO "D_TIEMPO" VALUES ('1139', '2013', '1', '2', '12',  '2013','T1','Febrero','12');
INSERT INTO "D_TIEMPO" VALUES ('1140', '2013', '1', '2', '13',  '2013','T1','Febrero','13');
INSERT INTO "D_TIEMPO" VALUES ('1141', '2013', '1', '2', '14',  '2013','T1','Febrero','14');
INSERT INTO "D_TIEMPO" VALUES ('1142', '2013', '1', '2', '15',  '2013','T1','Febrero','15');
INSERT INTO "D_TIEMPO" VALUES ('1143', '2013', '1', '2', '16',  '2013','T1','Febrero','16');
INSERT INTO "D_TIEMPO" VALUES ('1144', '2013', '1', '2', '17',  '2013','T1','Febrero','17');
INSERT INTO "D_TIEMPO" VALUES ('1145', '2013', '1', '2', '18',  '2013','T1','Febrero','18');
INSERT INTO "D_TIEMPO" VALUES ('1146', '2013', '1', '2', '19',  '2013','T1','Febrero','19');
INSERT INTO "D_TIEMPO" VALUES ('1147', '2013', '1', '2', '20',  '2013','T1','Febrero','20');
INSERT INTO "D_TIEMPO" VALUES ('1148', '2013', '1', '2', '21',  '2013','T1','Febrero','21');
INSERT INTO "D_TIEMPO" VALUES ('1149', '2013', '1', '2', '22',  '2013','T1','Febrero','22');
INSERT INTO "D_TIEMPO" VALUES ('1150', '2013', '1', '2', '23',  '2013','T1','Febrero','23');
INSERT INTO "D_TIEMPO" VALUES ('1151', '2013', '1', '2', '24',  '2013','T1','Febrero','24');
INSERT INTO "D_TIEMPO" VALUES ('1152', '2013', '1', '2', '25',  '2013','T1','Febrero','25');
INSERT INTO "D_TIEMPO" VALUES ('1153', '2013', '1', '2', '26',  '2013','T1','Febrero','26');
INSERT INTO "D_TIEMPO" VALUES ('1154', '2013', '1', '2', '27',  '2013','T1','Febrero','27');
INSERT INTO "D_TIEMPO" VALUES ('1155', '2013', '1', '2', '28',  '2013','T1','Febrero','28');
INSERT INTO "D_TIEMPO" VALUES ('1156', '2013', '1', '3', '1',  '2013','T1','Marzo','01');
INSERT INTO "D_TIEMPO" VALUES ('1157', '2013', '1', '3', '2',  '2013','T1','Marzo','02');
INSERT INTO "D_TIEMPO" VALUES ('1158', '2013', '1', '3', '3',  '2013','T1','Marzo','03');
INSERT INTO "D_TIEMPO" VALUES ('1159', '2013', '1', '3', '4',  '2013','T1','Marzo','04');
INSERT INTO "D_TIEMPO" VALUES ('1160', '2013', '1', '3', '5',  '2013','T1','Marzo','05');
INSERT INTO "D_TIEMPO" VALUES ('1161', '2013', '1', '3', '6',  '2013','T1','Marzo','06');
INSERT INTO "D_TIEMPO" VALUES ('1162', '2013', '1', '3', '7',  '2013','T1','Marzo','07');
INSERT INTO "D_TIEMPO" VALUES ('1163', '2013', '1', '3', '8',  '2013','T1','Marzo','08');
INSERT INTO "D_TIEMPO" VALUES ('1164', '2013', '1', '3', '9',  '2013','T1','Marzo','09');
INSERT INTO "D_TIEMPO" VALUES ('1165', '2013', '1', '3', '10',  '2013','T1','Marzo','10');
INSERT INTO "D_TIEMPO" VALUES ('1166', '2013', '1', '3', '11',  '2013','T1','Marzo','11');
INSERT INTO "D_TIEMPO" VALUES ('1167', '2013', '1', '3', '12',  '2013','T1','Marzo','12');
INSERT INTO "D_TIEMPO" VALUES ('1168', '2013', '1', '3', '13',  '2013','T1','Marzo','13');
INSERT INTO "D_TIEMPO" VALUES ('1169', '2013', '1', '3', '14',  '2013','T1','Marzo','14');
INSERT INTO "D_TIEMPO" VALUES ('1170', '2013', '1', '3', '15',  '2013','T1','Marzo','15');
INSERT INTO "D_TIEMPO" VALUES ('1171', '2013', '1', '3', '16',  '2013','T1','Marzo','16');
INSERT INTO "D_TIEMPO" VALUES ('1172', '2013', '1', '3', '17',  '2013','T1','Marzo','17');
INSERT INTO "D_TIEMPO" VALUES ('1173', '2013', '1', '3', '18',  '2013','T1','Marzo','18');
INSERT INTO "D_TIEMPO" VALUES ('1174', '2013', '1', '3', '19',  '2013','T1','Marzo','19');
INSERT INTO "D_TIEMPO" VALUES ('1175', '2013', '1', '3', '20',  '2013','T1','Marzo','20');
INSERT INTO "D_TIEMPO" VALUES ('1176', '2013', '1', '3', '21',  '2013','T1','Marzo','21');
INSERT INTO "D_TIEMPO" VALUES ('1177', '2013', '1', '3', '22',  '2013','T1','Marzo','22');
INSERT INTO "D_TIEMPO" VALUES ('1178', '2013', '1', '3', '23',  '2013','T1','Marzo','23');
INSERT INTO "D_TIEMPO" VALUES ('1179', '2013', '1', '3', '24',  '2013','T1','Marzo','24');
INSERT INTO "D_TIEMPO" VALUES ('1180', '2013', '1', '3', '25',  '2013','T1','Marzo','25');
INSERT INTO "D_TIEMPO" VALUES ('1181', '2013', '1', '3', '26',  '2013','T1','Marzo','26');
INSERT INTO "D_TIEMPO" VALUES ('1182', '2013', '1', '3', '27',  '2013','T1','Marzo','27');
INSERT INTO "D_TIEMPO" VALUES ('1183', '2013', '1', '3', '28',  '2013','T1','Marzo','28');
INSERT INTO "D_TIEMPO" VALUES ('1184', '2013', '1', '3', '29',  '2013','T1','Marzo','29');
INSERT INTO "D_TIEMPO" VALUES ('1185', '2013', '1', '3', '30',  '2013','T1','Marzo','30');
INSERT INTO "D_TIEMPO" VALUES ('1186', '2013', '1', '3', '31',  '2013','T1','Marzo','31');
INSERT INTO "D_TIEMPO" VALUES ('1187', '2013', '2', '4', '1',  '2013','T2','Abril','01');
INSERT INTO "D_TIEMPO" VALUES ('1188', '2013', '2', '4', '2',  '2013','T2','Abril','02');
INSERT INTO "D_TIEMPO" VALUES ('1189', '2013', '2', '4', '3',  '2013','T2','Abril','03');
INSERT INTO "D_TIEMPO" VALUES ('1190', '2013', '2', '4', '4',  '2013','T2','Abril','04');
INSERT INTO "D_TIEMPO" VALUES ('1191', '2013', '2', '4', '5',  '2013','T2','Abril','05');
INSERT INTO "D_TIEMPO" VALUES ('1192', '2013', '2', '4', '6',  '2013','T2','Abril','06');
INSERT INTO "D_TIEMPO" VALUES ('1193', '2013', '2', '4', '7',  '2013','T2','Abril','07');
INSERT INTO "D_TIEMPO" VALUES ('1194', '2013', '2', '4', '8',  '2013','T2','Abril','08');
INSERT INTO "D_TIEMPO" VALUES ('1195', '2013', '2', '4', '9',  '2013','T2','Abril','09');
INSERT INTO "D_TIEMPO" VALUES ('1196', '2013', '2', '4', '10',  '2013','T2','Abril','10');
INSERT INTO "D_TIEMPO" VALUES ('1197', '2013', '2', '4', '11',  '2013','T2','Abril','11');
INSERT INTO "D_TIEMPO" VALUES ('1198', '2013', '2', '4', '12',  '2013','T2','Abril','12');
INSERT INTO "D_TIEMPO" VALUES ('1199', '2013', '2', '4', '13',  '2013','T2','Abril','13');
INSERT INTO "D_TIEMPO" VALUES ('1200', '2013', '2', '4', '14',  '2013','T2','Abril','14');
INSERT INTO "D_TIEMPO" VALUES ('1201', '2013', '2', '4', '15',  '2013','T2','Abril','15');
INSERT INTO "D_TIEMPO" VALUES ('1202', '2013', '2', '4', '16',  '2013','T2','Abril','16');
INSERT INTO "D_TIEMPO" VALUES ('1203', '2013', '2', '4', '17',  '2013','T2','Abril','17');
INSERT INTO "D_TIEMPO" VALUES ('1204', '2013', '2', '4', '18',  '2013','T2','Abril','18');
INSERT INTO "D_TIEMPO" VALUES ('1205', '2013', '2', '4', '19',  '2013','T2','Abril','19');
INSERT INTO "D_TIEMPO" VALUES ('1206', '2013', '2', '4', '20',  '2013','T2','Abril','20');
INSERT INTO "D_TIEMPO" VALUES ('1207', '2013', '2', '4', '21',  '2013','T2','Abril','21');
INSERT INTO "D_TIEMPO" VALUES ('1208', '2013', '2', '4', '22',  '2013','T2','Abril','22');
INSERT INTO "D_TIEMPO" VALUES ('1209', '2013', '2', '4', '23',  '2013','T2','Abril','23');
INSERT INTO "D_TIEMPO" VALUES ('1210', '2013', '2', '4', '24',  '2013','T2','Abril','24');
INSERT INTO "D_TIEMPO" VALUES ('1211', '2013', '2', '4', '25',  '2013','T2','Abril','25');
INSERT INTO "D_TIEMPO" VALUES ('1212', '2013', '2', '4', '26',  '2013','T2','Abril','26');
INSERT INTO "D_TIEMPO" VALUES ('1213', '2013', '2', '4', '27',  '2013','T2','Abril','27');
INSERT INTO "D_TIEMPO" VALUES ('1214', '2013', '2', '4', '28',  '2013','T2','Abril','28');
INSERT INTO "D_TIEMPO" VALUES ('1215', '2013', '2', '4', '29',  '2013','T2','Abril','29');
INSERT INTO "D_TIEMPO" VALUES ('1216', '2013', '2', '4', '30',  '2013','T2','Abril','30');
INSERT INTO "D_TIEMPO" VALUES ('1217', '2013', '2', '5', '1',  '2013','T2','Mayo','01');
INSERT INTO "D_TIEMPO" VALUES ('1218', '2013', '2', '5', '2',  '2013','T2','Mayo','02');
INSERT INTO "D_TIEMPO" VALUES ('1219', '2013', '2', '5', '3',  '2013','T2','Mayo','03');
INSERT INTO "D_TIEMPO" VALUES ('1220', '2013', '2', '5', '4',  '2013','T2','Mayo','04');
INSERT INTO "D_TIEMPO" VALUES ('1221', '2013', '2', '5', '5',  '2013','T2','Mayo','05');
INSERT INTO "D_TIEMPO" VALUES ('1222', '2013', '2', '5', '6',  '2013','T2','Mayo','06');
INSERT INTO "D_TIEMPO" VALUES ('1223', '2013', '2', '5', '7',  '2013','T2','Mayo','07');
INSERT INTO "D_TIEMPO" VALUES ('1224', '2013', '2', '5', '8',  '2013','T2','Mayo','08');
INSERT INTO "D_TIEMPO" VALUES ('1225', '2013', '2', '5', '9',  '2013','T2','Mayo','09');
INSERT INTO "D_TIEMPO" VALUES ('1226', '2013', '2', '5', '10',  '2013','T2','Mayo','10');
INSERT INTO "D_TIEMPO" VALUES ('1227', '2013', '2', '5', '11',  '2013','T2','Mayo','11');
INSERT INTO "D_TIEMPO" VALUES ('1228', '2013', '2', '5', '12',  '2013','T2','Mayo','12');
INSERT INTO "D_TIEMPO" VALUES ('1229', '2013', '2', '5', '13',  '2013','T2','Mayo','13');
INSERT INTO "D_TIEMPO" VALUES ('1230', '2013', '2', '5', '14',  '2013','T2','Mayo','14');
INSERT INTO "D_TIEMPO" VALUES ('1231', '2013', '2', '5', '15',  '2013','T2','Mayo','15');
INSERT INTO "D_TIEMPO" VALUES ('1232', '2013', '2', '5', '16',  '2013','T2','Mayo','16');
INSERT INTO "D_TIEMPO" VALUES ('1233', '2013', '2', '5', '17',  '2013','T2','Mayo','17');
INSERT INTO "D_TIEMPO" VALUES ('1234', '2013', '2', '5', '18',  '2013','T2','Mayo','18');
INSERT INTO "D_TIEMPO" VALUES ('1235', '2013', '2', '5', '19',  '2013','T2','Mayo','19');
INSERT INTO "D_TIEMPO" VALUES ('1236', '2013', '2', '5', '20',  '2013','T2','Mayo','20');
INSERT INTO "D_TIEMPO" VALUES ('1237', '2013', '2', '5', '21',  '2013','T2','Mayo','21');
INSERT INTO "D_TIEMPO" VALUES ('1238', '2013', '2', '5', '22',  '2013','T2','Mayo','22');
INSERT INTO "D_TIEMPO" VALUES ('1239', '2013', '2', '5', '23',  '2013','T2','Mayo','23');
INSERT INTO "D_TIEMPO" VALUES ('1240', '2013', '2', '5', '24',  '2013','T2','Mayo','24');
INSERT INTO "D_TIEMPO" VALUES ('1241', '2013', '2', '5', '25',  '2013','T2','Mayo','25');
INSERT INTO "D_TIEMPO" VALUES ('1242', '2013', '2', '5', '26',  '2013','T2','Mayo','26');
INSERT INTO "D_TIEMPO" VALUES ('1243', '2013', '2', '5', '27',  '2013','T2','Mayo','27');
INSERT INTO "D_TIEMPO" VALUES ('1244', '2013', '2', '5', '28',  '2013','T2','Mayo','28');
INSERT INTO "D_TIEMPO" VALUES ('1245', '2013', '2', '5', '29',  '2013','T2','Mayo','29');
INSERT INTO "D_TIEMPO" VALUES ('1246', '2013', '2', '5', '30',  '2013','T2','Mayo','30');
INSERT INTO "D_TIEMPO" VALUES ('1247', '2013', '2', '5', '31',  '2013','T2','Mayo','31');
INSERT INTO "D_TIEMPO" VALUES ('1248', '2013', '2', '6', '1',  '2013','T2','Junio','01');
INSERT INTO "D_TIEMPO" VALUES ('1249', '2013', '2', '6', '2',  '2013','T2','Junio','02');
INSERT INTO "D_TIEMPO" VALUES ('1250', '2013', '2', '6', '3',  '2013','T2','Junio','03');
INSERT INTO "D_TIEMPO" VALUES ('1251', '2013', '2', '6', '4',  '2013','T2','Junio','04');
INSERT INTO "D_TIEMPO" VALUES ('1252', '2013', '2', '6', '5',  '2013','T2','Junio','05');
INSERT INTO "D_TIEMPO" VALUES ('1253', '2013', '2', '6', '6',  '2013','T2','Junio','06');
INSERT INTO "D_TIEMPO" VALUES ('1254', '2013', '2', '6', '7',  '2013','T2','Junio','07');
INSERT INTO "D_TIEMPO" VALUES ('1255', '2013', '2', '6', '8',  '2013','T2','Junio','08');
INSERT INTO "D_TIEMPO" VALUES ('1256', '2013', '2', '6', '9',  '2013','T2','Junio','09');
INSERT INTO "D_TIEMPO" VALUES ('1257', '2013', '2', '6', '10',  '2013','T2','Junio','10');
INSERT INTO "D_TIEMPO" VALUES ('1258', '2013', '2', '6', '11',  '2013','T2','Junio','11');
INSERT INTO "D_TIEMPO" VALUES ('1259', '2013', '2', '6', '12',  '2013','T2','Junio','12');
INSERT INTO "D_TIEMPO" VALUES ('1260', '2013', '2', '6', '13',  '2013','T2','Junio','13');
INSERT INTO "D_TIEMPO" VALUES ('1261', '2013', '2', '6', '14',  '2013','T2','Junio','14');
INSERT INTO "D_TIEMPO" VALUES ('1262', '2013', '2', '6', '15',  '2013','T2','Junio','15');
INSERT INTO "D_TIEMPO" VALUES ('1263', '2013', '2', '6', '16',  '2013','T2','Junio','16');
INSERT INTO "D_TIEMPO" VALUES ('1264', '2013', '2', '6', '17',  '2013','T2','Junio','17');
INSERT INTO "D_TIEMPO" VALUES ('1265', '2013', '2', '6', '18',  '2013','T2','Junio','18');
INSERT INTO "D_TIEMPO" VALUES ('1266', '2013', '2', '6', '19',  '2013','T2','Junio','19');
INSERT INTO "D_TIEMPO" VALUES ('1267', '2013', '2', '6', '20',  '2013','T2','Junio','20');
INSERT INTO "D_TIEMPO" VALUES ('1268', '2013', '2', '6', '21',  '2013','T2','Junio','21');
INSERT INTO "D_TIEMPO" VALUES ('1269', '2013', '2', '6', '22',  '2013','T2','Junio','22');
INSERT INTO "D_TIEMPO" VALUES ('1270', '2013', '2', '6', '23',  '2013','T2','Junio','23');
INSERT INTO "D_TIEMPO" VALUES ('1271', '2013', '2', '6', '24',  '2013','T2','Junio','24');
INSERT INTO "D_TIEMPO" VALUES ('1272', '2013', '2', '6', '25',  '2013','T2','Junio','25');
INSERT INTO "D_TIEMPO" VALUES ('1273', '2013', '2', '6', '26',  '2013','T2','Junio','26');
INSERT INTO "D_TIEMPO" VALUES ('1274', '2013', '2', '6', '27',  '2013','T2','Junio','27');
INSERT INTO "D_TIEMPO" VALUES ('1275', '2013', '2', '6', '28',  '2013','T2','Junio','28');
INSERT INTO "D_TIEMPO" VALUES ('1276', '2013', '2', '6', '29',  '2013','T2','Junio','29');
INSERT INTO "D_TIEMPO" VALUES ('1277', '2013', '2', '6', '30',  '2013','T2','Junio','30');
INSERT INTO "D_TIEMPO" VALUES ('1278', '2013', '3', '7', '1',  '2013','T3','Julio','01');
INSERT INTO "D_TIEMPO" VALUES ('1279', '2013', '3', '7', '2',  '2013','T3','Julio','02');
INSERT INTO "D_TIEMPO" VALUES ('1280', '2013', '3', '7', '3',  '2013','T3','Julio','03');
INSERT INTO "D_TIEMPO" VALUES ('1281', '2013', '3', '7', '4',  '2013','T3','Julio','04');
INSERT INTO "D_TIEMPO" VALUES ('1282', '2013', '3', '7', '5',  '2013','T3','Julio','05');
INSERT INTO "D_TIEMPO" VALUES ('1283', '2013', '3', '7', '6',  '2013','T3','Julio','06');
INSERT INTO "D_TIEMPO" VALUES ('1284', '2013', '3', '7', '7',  '2013','T3','Julio','07');
INSERT INTO "D_TIEMPO" VALUES ('1285', '2013', '3', '7', '8',  '2013','T3','Julio','08');
INSERT INTO "D_TIEMPO" VALUES ('1286', '2013', '3', '7', '9',  '2013','T3','Julio','09');
INSERT INTO "D_TIEMPO" VALUES ('1287', '2013', '3', '7', '10',  '2013','T3','Julio','10');
INSERT INTO "D_TIEMPO" VALUES ('1288', '2013', '3', '7', '11',  '2013','T3','Julio','11');
INSERT INTO "D_TIEMPO" VALUES ('1289', '2013', '3', '7', '12',  '2013','T3','Julio','12');
INSERT INTO "D_TIEMPO" VALUES ('1290', '2013', '3', '7', '13',  '2013','T3','Julio','13');
INSERT INTO "D_TIEMPO" VALUES ('1291', '2013', '3', '7', '14',  '2013','T3','Julio','14');
INSERT INTO "D_TIEMPO" VALUES ('1292', '2013', '3', '7', '15',  '2013','T3','Julio','15');
INSERT INTO "D_TIEMPO" VALUES ('1293', '2013', '3', '7', '16',  '2013','T3','Julio','16');
INSERT INTO "D_TIEMPO" VALUES ('1294', '2013', '3', '7', '17',  '2013','T3','Julio','17');
INSERT INTO "D_TIEMPO" VALUES ('1295', '2013', '3', '7', '18',  '2013','T3','Julio','18');
INSERT INTO "D_TIEMPO" VALUES ('1296', '2013', '3', '7', '19',  '2013','T3','Julio','19');
INSERT INTO "D_TIEMPO" VALUES ('1297', '2013', '3', '7', '20',  '2013','T3','Julio','20');
INSERT INTO "D_TIEMPO" VALUES ('1298', '2013', '3', '7', '21',  '2013','T3','Julio','21');
INSERT INTO "D_TIEMPO" VALUES ('1299', '2013', '3', '7', '22',  '2013','T3','Julio','22');
INSERT INTO "D_TIEMPO" VALUES ('1300', '2013', '3', '7', '23',  '2013','T3','Julio','23');
INSERT INTO "D_TIEMPO" VALUES ('1301', '2013', '3', '7', '24',  '2013','T3','Julio','24');
INSERT INTO "D_TIEMPO" VALUES ('1302', '2013', '3', '7', '25',  '2013','T3','Julio','25');
INSERT INTO "D_TIEMPO" VALUES ('1303', '2013', '3', '7', '26',  '2013','T3','Julio','26');
INSERT INTO "D_TIEMPO" VALUES ('1304', '2013', '3', '7', '27',  '2013','T3','Julio','27');
INSERT INTO "D_TIEMPO" VALUES ('1305', '2013', '3', '7', '28',  '2013','T3','Julio','28');
INSERT INTO "D_TIEMPO" VALUES ('1306', '2013', '3', '7', '29',  '2013','T3','Julio','29');
INSERT INTO "D_TIEMPO" VALUES ('1307', '2013', '3', '7', '30',  '2013','T3','Julio','30');
INSERT INTO "D_TIEMPO" VALUES ('1308', '2013', '3', '7', '31',  '2013','T3','Julio','31');
INSERT INTO "D_TIEMPO" VALUES ('1309', '2013', '3', '8', '1',  '2013','T3','Agosto','01');
INSERT INTO "D_TIEMPO" VALUES ('1310', '2013', '3', '8', '2',  '2013','T3','Agosto','02');
INSERT INTO "D_TIEMPO" VALUES ('1311', '2013', '3', '8', '3',  '2013','T3','Agosto','03');
INSERT INTO "D_TIEMPO" VALUES ('1312', '2013', '3', '8', '4',  '2013','T3','Agosto','04');
INSERT INTO "D_TIEMPO" VALUES ('1313', '2013', '3', '8', '5',  '2013','T3','Agosto','05');
INSERT INTO "D_TIEMPO" VALUES ('1314', '2013', '3', '8', '6',  '2013','T3','Agosto','06');
INSERT INTO "D_TIEMPO" VALUES ('1315', '2013', '3', '8', '7',  '2013','T3','Agosto','07');
INSERT INTO "D_TIEMPO" VALUES ('1316', '2013', '3', '8', '8',  '2013','T3','Agosto','08');
INSERT INTO "D_TIEMPO" VALUES ('1317', '2013', '3', '8', '9',  '2013','T3','Agosto','09');
INSERT INTO "D_TIEMPO" VALUES ('1318', '2013', '3', '8', '10',  '2013','T3','Agosto','10');
INSERT INTO "D_TIEMPO" VALUES ('1319', '2013', '3', '8', '11',  '2013','T3','Agosto','11');
INSERT INTO "D_TIEMPO" VALUES ('1320', '2013', '3', '8', '12',  '2013','T3','Agosto','12');
INSERT INTO "D_TIEMPO" VALUES ('1321', '2013', '3', '8', '13',  '2013','T3','Agosto','13');
INSERT INTO "D_TIEMPO" VALUES ('1322', '2013', '3', '8', '14',  '2013','T3','Agosto','14');
INSERT INTO "D_TIEMPO" VALUES ('1323', '2013', '3', '8', '15',  '2013','T3','Agosto','15');
INSERT INTO "D_TIEMPO" VALUES ('1324', '2013', '3', '8', '16',  '2013','T3','Agosto','16');
INSERT INTO "D_TIEMPO" VALUES ('1325', '2013', '3', '8', '17',  '2013','T3','Agosto','17');
INSERT INTO "D_TIEMPO" VALUES ('1326', '2013', '3', '8', '18',  '2013','T3','Agosto','18');
INSERT INTO "D_TIEMPO" VALUES ('1327', '2013', '3', '8', '19',  '2013','T3','Agosto','19');
INSERT INTO "D_TIEMPO" VALUES ('1328', '2013', '3', '8', '20',  '2013','T3','Agosto','20');
INSERT INTO "D_TIEMPO" VALUES ('1329', '2013', '3', '8', '21',  '2013','T3','Agosto','21');
INSERT INTO "D_TIEMPO" VALUES ('1330', '2013', '3', '8', '22',  '2013','T3','Agosto','22');
INSERT INTO "D_TIEMPO" VALUES ('1331', '2013', '3', '8', '23',  '2013','T3','Agosto','23');
INSERT INTO "D_TIEMPO" VALUES ('1332', '2013', '3', '8', '24',  '2013','T3','Agosto','24');
INSERT INTO "D_TIEMPO" VALUES ('1333', '2013', '3', '8', '25',  '2013','T3','Agosto','25');
INSERT INTO "D_TIEMPO" VALUES ('1334', '2013', '3', '8', '26',  '2013','T3','Agosto','26');
INSERT INTO "D_TIEMPO" VALUES ('1335', '2013', '3', '8', '27',  '2013','T3','Agosto','27');
INSERT INTO "D_TIEMPO" VALUES ('1336', '2013', '3', '8', '28',  '2013','T3','Agosto','28');
INSERT INTO "D_TIEMPO" VALUES ('1337', '2013', '3', '8', '29',  '2013','T3','Agosto','29');
INSERT INTO "D_TIEMPO" VALUES ('1338', '2013', '3', '8', '30',  '2013','T3','Agosto','30');
INSERT INTO "D_TIEMPO" VALUES ('1339', '2013', '3', '8', '31',  '2013','T3','Agosto','31');
INSERT INTO "D_TIEMPO" VALUES ('1340', '2013', '3', '9', '1',  '2013','T3','Septiembre','01');
INSERT INTO "D_TIEMPO" VALUES ('1341', '2013', '3', '9', '2',  '2013','T3','Septiembre','02');
INSERT INTO "D_TIEMPO" VALUES ('1342', '2013', '3', '9', '3',  '2013','T3','Septiembre','03');
INSERT INTO "D_TIEMPO" VALUES ('1343', '2013', '3', '9', '4',  '2013','T3','Septiembre','04');
INSERT INTO "D_TIEMPO" VALUES ('1344', '2013', '3', '9', '5',  '2013','T3','Septiembre','05');
INSERT INTO "D_TIEMPO" VALUES ('1345', '2013', '3', '9', '6',  '2013','T3','Septiembre','06');
INSERT INTO "D_TIEMPO" VALUES ('1346', '2013', '3', '9', '7',  '2013','T3','Septiembre','07');
INSERT INTO "D_TIEMPO" VALUES ('1347', '2013', '3', '9', '8',  '2013','T3','Septiembre','08');
INSERT INTO "D_TIEMPO" VALUES ('1348', '2013', '3', '9', '9',  '2013','T3','Septiembre','09');
INSERT INTO "D_TIEMPO" VALUES ('1349', '2013', '3', '9', '10',  '2013','T3','Septiembre','10');
INSERT INTO "D_TIEMPO" VALUES ('1350', '2013', '3', '9', '11',  '2013','T3','Septiembre','11');
INSERT INTO "D_TIEMPO" VALUES ('1351', '2013', '3', '9', '12',  '2013','T3','Septiembre','12');
INSERT INTO "D_TIEMPO" VALUES ('1352', '2013', '3', '9', '13',  '2013','T3','Septiembre','13');
INSERT INTO "D_TIEMPO" VALUES ('1353', '2013', '3', '9', '14',  '2013','T3','Septiembre','14');
INSERT INTO "D_TIEMPO" VALUES ('1354', '2013', '3', '9', '15',  '2013','T3','Septiembre','15');
INSERT INTO "D_TIEMPO" VALUES ('1355', '2013', '3', '9', '16',  '2013','T3','Septiembre','16');
INSERT INTO "D_TIEMPO" VALUES ('1356', '2013', '3', '9', '17',  '2013','T3','Septiembre','17');
INSERT INTO "D_TIEMPO" VALUES ('1357', '2013', '3', '9', '18',  '2013','T3','Septiembre','18');
INSERT INTO "D_TIEMPO" VALUES ('1358', '2013', '3', '9', '19',  '2013','T3','Septiembre','19');
INSERT INTO "D_TIEMPO" VALUES ('1359', '2013', '3', '9', '20',  '2013','T3','Septiembre','20');
INSERT INTO "D_TIEMPO" VALUES ('1360', '2013', '3', '9', '21',  '2013','T3','Septiembre','21');
INSERT INTO "D_TIEMPO" VALUES ('1361', '2013', '3', '9', '22',  '2013','T3','Septiembre','22');
INSERT INTO "D_TIEMPO" VALUES ('1362', '2013', '3', '9', '23',  '2013','T3','Septiembre','23');
INSERT INTO "D_TIEMPO" VALUES ('1363', '2013', '3', '9', '24',  '2013','T3','Septiembre','24');
INSERT INTO "D_TIEMPO" VALUES ('1364', '2013', '3', '9', '25',  '2013','T3','Septiembre','25');
INSERT INTO "D_TIEMPO" VALUES ('1365', '2013', '3', '9', '26',  '2013','T3','Septiembre','26');
INSERT INTO "D_TIEMPO" VALUES ('1366', '2013', '3', '9', '27',  '2013','T3','Septiembre','27');
INSERT INTO "D_TIEMPO" VALUES ('1367', '2013', '3', '9', '28',  '2013','T3','Septiembre','28');
INSERT INTO "D_TIEMPO" VALUES ('1368', '2013', '3', '9', '29',  '2013','T3','Septiembre','29');
INSERT INTO "D_TIEMPO" VALUES ('1369', '2013', '3', '9', '30',  '2013','T3','Septiembre','30');
INSERT INTO "D_TIEMPO" VALUES ('1370', '2013', '4', '10', '1',  '2013','T4','Octubre','01');
INSERT INTO "D_TIEMPO" VALUES ('1371', '2013', '4', '10', '2',  '2013','T4','Octubre','02');
INSERT INTO "D_TIEMPO" VALUES ('1372', '2013', '4', '10', '3',  '2013','T4','Octubre','03');
INSERT INTO "D_TIEMPO" VALUES ('1373', '2013', '4', '10', '4',  '2013','T4','Octubre','04');
INSERT INTO "D_TIEMPO" VALUES ('1374', '2013', '4', '10', '5',  '2013','T4','Octubre','05');
INSERT INTO "D_TIEMPO" VALUES ('1375', '2013', '4', '10', '6',  '2013','T4','Octubre','06');
INSERT INTO "D_TIEMPO" VALUES ('1376', '2013', '4', '10', '7',  '2013','T4','Octubre','07');
INSERT INTO "D_TIEMPO" VALUES ('1377', '2013', '4', '10', '8',  '2013','T4','Octubre','08');
INSERT INTO "D_TIEMPO" VALUES ('1378', '2013', '4', '10', '9',  '2013','T4','Octubre','09');
INSERT INTO "D_TIEMPO" VALUES ('1379', '2013', '4', '10', '10',  '2013','T4','Octubre','10');
INSERT INTO "D_TIEMPO" VALUES ('1380', '2013', '4', '10', '11',  '2013','T4','Octubre','11');
INSERT INTO "D_TIEMPO" VALUES ('1381', '2013', '4', '10', '12',  '2013','T4','Octubre','12');
INSERT INTO "D_TIEMPO" VALUES ('1382', '2013', '4', '10', '13',  '2013','T4','Octubre','13');
INSERT INTO "D_TIEMPO" VALUES ('1383', '2013', '4', '10', '14',  '2013','T4','Octubre','14');
INSERT INTO "D_TIEMPO" VALUES ('1384', '2013', '4', '10', '15',  '2013','T4','Octubre','15');
INSERT INTO "D_TIEMPO" VALUES ('1385', '2013', '4', '10', '16',  '2013','T4','Octubre','16');
INSERT INTO "D_TIEMPO" VALUES ('1386', '2013', '4', '10', '17',  '2013','T4','Octubre','17');
INSERT INTO "D_TIEMPO" VALUES ('1387', '2013', '4', '10', '18',  '2013','T4','Octubre','18');
INSERT INTO "D_TIEMPO" VALUES ('1388', '2013', '4', '10', '19',  '2013','T4','Octubre','19');
INSERT INTO "D_TIEMPO" VALUES ('1389', '2013', '4', '10', '20',  '2013','T4','Octubre','20');
INSERT INTO "D_TIEMPO" VALUES ('1390', '2013', '4', '10', '21',  '2013','T4','Octubre','21');
INSERT INTO "D_TIEMPO" VALUES ('1391', '2013', '4', '10', '22',  '2013','T4','Octubre','22');
INSERT INTO "D_TIEMPO" VALUES ('1392', '2013', '4', '10', '23',  '2013','T4','Octubre','23');
INSERT INTO "D_TIEMPO" VALUES ('1393', '2013', '4', '10', '24',  '2013','T4','Octubre','24');
INSERT INTO "D_TIEMPO" VALUES ('1394', '2013', '4', '10', '25',  '2013','T4','Octubre','25');
INSERT INTO "D_TIEMPO" VALUES ('1395', '2013', '4', '10', '26',  '2013','T4','Octubre','26');
INSERT INTO "D_TIEMPO" VALUES ('1396', '2013', '4', '10', '27',  '2013','T4','Octubre','27');
INSERT INTO "D_TIEMPO" VALUES ('1397', '2013', '4', '10', '28',  '2013','T4','Octubre','28');
INSERT INTO "D_TIEMPO" VALUES ('1398', '2013', '4', '10', '29',  '2013','T4','Octubre','29');
INSERT INTO "D_TIEMPO" VALUES ('1399', '2013', '4', '10', '30',  '2013','T4','Octubre','30');
INSERT INTO "D_TIEMPO" VALUES ('1400', '2013', '4', '10', '31',  '2013','T4','Octubre','31');
INSERT INTO "D_TIEMPO" VALUES ('1401', '2013', '4', '11', '1',  '2013','T4','Noviembre','01');
INSERT INTO "D_TIEMPO" VALUES ('1402', '2013', '4', '11', '2',  '2013','T4','Noviembre','02');
INSERT INTO "D_TIEMPO" VALUES ('1403', '2013', '4', '11', '3',  '2013','T4','Noviembre','03');
INSERT INTO "D_TIEMPO" VALUES ('1404', '2013', '4', '11', '4',  '2013','T4','Noviembre','04');
INSERT INTO "D_TIEMPO" VALUES ('1405', '2013', '4', '11', '5',  '2013','T4','Noviembre','05');
INSERT INTO "D_TIEMPO" VALUES ('1406', '2013', '4', '11', '6',  '2013','T4','Noviembre','06');
INSERT INTO "D_TIEMPO" VALUES ('1407', '2013', '4', '11', '7',  '2013','T4','Noviembre','07');
INSERT INTO "D_TIEMPO" VALUES ('1408', '2013', '4', '11', '8',  '2013','T4','Noviembre','08');
INSERT INTO "D_TIEMPO" VALUES ('1409', '2013', '4', '11', '9',  '2013','T4','Noviembre','09');
INSERT INTO "D_TIEMPO" VALUES ('1410', '2013', '4', '11', '10',  '2013','T4','Noviembre','10');
INSERT INTO "D_TIEMPO" VALUES ('1411', '2013', '4', '11', '11',  '2013','T4','Noviembre','11');
INSERT INTO "D_TIEMPO" VALUES ('1412', '2013', '4', '11', '12',  '2013','T4','Noviembre','12');
INSERT INTO "D_TIEMPO" VALUES ('1413', '2013', '4', '11', '13',  '2013','T4','Noviembre','13');
INSERT INTO "D_TIEMPO" VALUES ('1414', '2013', '4', '11', '14',  '2013','T4','Noviembre','14');
INSERT INTO "D_TIEMPO" VALUES ('1415', '2013', '4', '11', '15',  '2013','T4','Noviembre','15');
INSERT INTO "D_TIEMPO" VALUES ('1416', '2013', '4', '11', '16',  '2013','T4','Noviembre','16');
INSERT INTO "D_TIEMPO" VALUES ('1417', '2013', '4', '11', '17',  '2013','T4','Noviembre','17');
INSERT INTO "D_TIEMPO" VALUES ('1418', '2013', '4', '11', '18',  '2013','T4','Noviembre','18');
INSERT INTO "D_TIEMPO" VALUES ('1419', '2013', '4', '11', '19',  '2013','T4','Noviembre','19');
INSERT INTO "D_TIEMPO" VALUES ('1420', '2013', '4', '11', '20',  '2013','T4','Noviembre','20');
INSERT INTO "D_TIEMPO" VALUES ('1421', '2013', '4', '11', '21',  '2013','T4','Noviembre','21');
INSERT INTO "D_TIEMPO" VALUES ('1422', '2013', '4', '11', '22',  '2013','T4','Noviembre','22');
INSERT INTO "D_TIEMPO" VALUES ('1423', '2013', '4', '11', '23',  '2013','T4','Noviembre','23');
INSERT INTO "D_TIEMPO" VALUES ('1424', '2013', '4', '11', '24',  '2013','T4','Noviembre','24');
INSERT INTO "D_TIEMPO" VALUES ('1425', '2013', '4', '11', '25',  '2013','T4','Noviembre','25');
INSERT INTO "D_TIEMPO" VALUES ('1426', '2013', '4', '11', '26',  '2013','T4','Noviembre','26');
INSERT INTO "D_TIEMPO" VALUES ('1427', '2013', '4', '11', '27',  '2013','T4','Noviembre','27');
INSERT INTO "D_TIEMPO" VALUES ('1428', '2013', '4', '11', '28',  '2013','T4','Noviembre','28');
INSERT INTO "D_TIEMPO" VALUES ('1429', '2013', '4', '11', '29',  '2013','T4','Noviembre','29');
INSERT INTO "D_TIEMPO" VALUES ('1430', '2013', '4', '11', '30',  '2013','T4','Noviembre','30');
INSERT INTO "D_TIEMPO" VALUES ('1431', '2013', '4', '12', '1',  '2013','T4','Diciembre','01');
INSERT INTO "D_TIEMPO" VALUES ('1432', '2013', '4', '12', '2',  '2013','T4','Diciembre','02');
INSERT INTO "D_TIEMPO" VALUES ('1433', '2013', '4', '12', '3',  '2013','T4','Diciembre','03');
INSERT INTO "D_TIEMPO" VALUES ('1434', '2013', '4', '12', '4',  '2013','T4','Diciembre','04');
INSERT INTO "D_TIEMPO" VALUES ('1435', '2013', '4', '12', '5',  '2013','T4','Diciembre','05');
INSERT INTO "D_TIEMPO" VALUES ('1436', '2013', '4', '12', '6',  '2013','T4','Diciembre','06');
INSERT INTO "D_TIEMPO" VALUES ('1437', '2013', '4', '12', '7',  '2013','T4','Diciembre','07');
INSERT INTO "D_TIEMPO" VALUES ('1438', '2013', '4', '12', '8',  '2013','T4','Diciembre','08');
INSERT INTO "D_TIEMPO" VALUES ('1439', '2013', '4', '12', '9',  '2013','T4','Diciembre','09');
INSERT INTO "D_TIEMPO" VALUES ('1440', '2013', '4', '12', '10',  '2013','T4','Diciembre','10');
INSERT INTO "D_TIEMPO" VALUES ('1441', '2013', '4', '12', '11',  '2013','T4','Diciembre','11');
INSERT INTO "D_TIEMPO" VALUES ('1442', '2013', '4', '12', '12',  '2013','T4','Diciembre','12');
INSERT INTO "D_TIEMPO" VALUES ('1443', '2013', '4', '12', '13',  '2013','T4','Diciembre','13');
INSERT INTO "D_TIEMPO" VALUES ('1444', '2013', '4', '12', '14',  '2013','T4','Diciembre','14');
INSERT INTO "D_TIEMPO" VALUES ('1445', '2013', '4', '12', '15',  '2013','T4','Diciembre','15');
INSERT INTO "D_TIEMPO" VALUES ('1446', '2013', '4', '12', '16',  '2013','T4','Diciembre','16');
INSERT INTO "D_TIEMPO" VALUES ('1447', '2013', '4', '12', '17',  '2013','T4','Diciembre','17');
INSERT INTO "D_TIEMPO" VALUES ('1448', '2013', '4', '12', '18',  '2013','T4','Diciembre','18');
INSERT INTO "D_TIEMPO" VALUES ('1449', '2013', '4', '12', '19',  '2013','T4','Diciembre','19');
INSERT INTO "D_TIEMPO" VALUES ('1450', '2013', '4', '12', '20',  '2013','T4','Diciembre','20');
INSERT INTO "D_TIEMPO" VALUES ('1451', '2013', '4', '12', '21',  '2013','T4','Diciembre','21');
INSERT INTO "D_TIEMPO" VALUES ('1452', '2013', '4', '12', '22',  '2013','T4','Diciembre','22');
INSERT INTO "D_TIEMPO" VALUES ('1453', '2013', '4', '12', '23',  '2013','T4','Diciembre','23');
INSERT INTO "D_TIEMPO" VALUES ('1454', '2013', '4', '12', '24',  '2013','T4','Diciembre','24');
INSERT INTO "D_TIEMPO" VALUES ('1455', '2013', '4', '12', '25',  '2013','T4','Diciembre','25');
INSERT INTO "D_TIEMPO" VALUES ('1456', '2013', '4', '12', '26',  '2013','T4','Diciembre','26');
INSERT INTO "D_TIEMPO" VALUES ('1457', '2013', '4', '12', '27',  '2013','T4','Diciembre','27');
INSERT INTO "D_TIEMPO" VALUES ('1458', '2013', '4', '12', '28',  '2013','T4','Diciembre','28');
INSERT INTO "D_TIEMPO" VALUES ('1459', '2013', '4', '12', '29',  '2013','T4','Diciembre','29');
INSERT INTO "D_TIEMPO" VALUES ('1460', '2013', '4', '12', '30',  '2013','T4','Diciembre','30');
INSERT INTO "D_TIEMPO" VALUES ('1461', '2013', '4', '12', '31',  '2013','T4','Diciembre','31');
