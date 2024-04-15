DROP PROCEDURE IF EXISTS SP_LISTA_NOMBRES;
DELIMITER //
CREATE PROCEDURE SP_LISTA_NOMBRES (IN P_TABLA VARCHAR(30), OUT P_SALIDA VARCHAR(500))
BEGIN
    IF P_TABLA = 'EQUIPO' THEN
        SELECT GROUP_CONCAT(NOMBRE SEPARATOR ', ') FROM EQUIPO INTO P_SALIDA;
    ELSEIF P_TABLA = 'JUGADOR' THEN
        SELECT GROUP_CONCAT(NOMBRE SEPARATOR ', ') FROM JUGADOR INTO P_SALIDA;
	ELSEIF P_TABLA = 'CIUDAD' THEN
        SELECT GROUP_CONCAT(NOMBRE SEPARATOR ', ') FROM CIUDAD INTO P_SALIDA;
	ELSEIF P_TABLA = 'ENTRENADOR' THEN
        SELECT GROUP_CONCAT(NOMBRE SEPARATOR ', ') FROM ENTRENADOR INTO P_SALIDA;
	ELSEIF P_TABLA = 'ESTADIO' THEN
        SELECT GROUP_CONCAT(NOMBRE SEPARATOR ', ') FROM ESTADIO INTO P_SALIDA;
    ELSE
        SET P_SALIDA = 'ERROR: debes ingresar una tabla existente que contenga nombre como valor existente.';
    END IF;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS SP_INSERTAR_CIUDAD;
DELIMITER //
CREATE PROCEDURE SP_INSERTAR_CIUDAD (IN P_NOMBRE VARCHAR(30))
BEGIN
INSERT INTO ciudad(nombre) VALUES (P_NOMBRE);
END //
DELIMITER ;