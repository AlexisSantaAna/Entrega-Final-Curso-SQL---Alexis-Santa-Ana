SET AUTOCOMMIT = 0;
SET SQL_SAFE_UPDATES = 0;
SET FOREIGN_KEY_CHECKS = 0;
START TRANSACTION;
USE PREMIER_LEAGUE_DB;
DELETE FROM JUGADOR WHERE ID_JUGADOR IN (1, 2, 3, 4);
ROLLBACK;
-- COMMIT;

-- Reinserto los registros
/* INSERT INTO JUGADOR(ID_JUGADOR, NOMBRE, APELLIDO, NACIONALIDAD)
VALUES 
(1, 'Bernardo', 'Silva', 'Portugues'),
(2, 'Kevin', 'De Bruyne', 'Belga'),
(3, 'Erling', 'Haaland', 'Noruego'),
(4, 'Julián', 'Alvarez', 'Argentino'); */

START TRANSACTION;
INSERT INTO CIUDAD
VALUES
(14, 'Rosario'),
(15, 'Pérez'),
(16, 'Funes'),
(17, 'Roldán');
SAVEPOINT SP3;

INSERT INTO CIUDAD
VALUES
(18, 'Galvez'),
(19, 'San Lorenzo'),
(20, 'Timbues'),
(21, 'Fray Luis Beltran');
SAVEPOINT SP4;

-- SELECT * FROM CIUDAD ORDER BY ID_CIUDAD;
ROLLBACK;
-- COMMIT;
SET AUTOCOMMIT = 1;
SET FOREIGN_KEY_CHECKS = 1;