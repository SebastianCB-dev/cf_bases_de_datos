-- Funciones en MySQL
-- !Concat
SELECT CONCAT(nombre, ' ', apellido) AS nombre_completo FROM autores;

-- !length
SELECT length(nombre) AS longitud, nombre FROM autores;
SELECT * FROM autores WHERE length(nombre) > 5;

-- !upper
SELECT upper(nombre) AS nombre_mayusculas FROM autores;

-- !lower
SELECT lower(nombre) AS nombre_minusculas FROM autores;

-- !trim
SELECT trim(nombre) AS nombre_sin_espacios FROM autores; -- Elimina espacios en blanco al inicio y al final

-- !LEFT
SELECT LEFT(nombre, 3) AS nombre_3_letras_izquierda FROM autores;
SELECT * FROM libros WHERE LEFT(titulo, 12) = "Harry Potter";

-- !RIGHT
SELECT RIGHT(nombre, 3) AS nombre_3_letras_derecha FROM autores;

-- !Random
SELECT ROUND(RAND() * 10);

-- !TRUNCATE
SELECT TRUNCATE(RAND() * 10, 2);

-- !POW 
SELECT POW(2, 3);

-- *FECHAS
SELECT NOW();
SET @now = NOW();

SELECT SECOND(@now), MINUTE(@now), HOUR(@now), DAY(@now), MONTH(@now), YEAR(@now);
SELECT DAYOFWEEK(@now), DAYOFYEAR(@now), WEEKOFYEAR(@now);
SELECT DATE(@now);

-- Libros creados hoy
SELECT * FROM libros WHERE DATE(fecha_creacion) = CURRENT_DATE;

-- Operaciones en fecha
SELECT @now + INTERVAL 30 DAY;
SELECT @now - INTERVAL 30 DAY; -- DAY, MONTH, YEAR, QUARTER, WEEK, HOUR, MINUTE, SECOND

-- Funciones sobre condiciones
SELECT IF(10 > 9, "SI", "No") AS "SI/NO";
SELECT IF(paginas = 0, 'El libro no posee páginas', paginas) FROM libros;

-- Funciones IFNULL
SELECT IFNULL(paginas, 0) AS paginas FROM libros;
SELECT IFNULL(seudonimo, 'El autor no tiene seudónimo') AS seudonimo, seudonimo FROM autores;