DELIMITER $$ -- Reemplazar el ; por el caracter $$
-- Error: 1418 This function has none of DETERMINISTIC, NO SQL, SQL SECURITY DEFINER, or SQL SECURITY INVOKER attributes.
-- Solución: SET GLOBAL log_bin_trust_function_creators = 1;
CREATE FUNCTION agregar_dias(fecha DATE, dias INT) RETURNS DATE
BEGIN
  RETURN fecha + INTERVAL dias DAY;
END$$

DELIMITER ;

SET @now = CURDATE();

-- Uso de la función
SELECT agregar_dias(@now, 30);

-- Saber funciones creadas
SHOW FUNCTION STATUS WHERE db = database() AND type = "FUNCTION"\G
SELECT routine_name FROM information_schema.routines WHERE routine_schema = database() AND routine_type='FUNCTION';

-- Eliminar función
DROP FUNCTION IF EXISTS agregar_dias;
