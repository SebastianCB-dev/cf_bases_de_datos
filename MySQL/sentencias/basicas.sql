-- Sentencias basicas de MySQL
SELECT * FROM libros; -- Selecciona todos los registros de la tabla libros
SELECT * FROM libros\G; -- Ver los datos de manera diferente
SELECT libro_id, titulo FROM libros; -- Selecciona los campos libro_id y titulo de la tabla libros
SELECT * FROM libros WHERE titulo = 'IT'; -- Selecciona todos los registros de la tabla libros cuyo titulo sea IT

SELECT * FROM libros WHERE titulo = 'IT' AND autor_id = 2;
SELECT * FROM libros WHERE titulo = 'IT' OR autor_id = 2;
SELECT * FROM libros WHERE (titulo = 'IT' OR autor_id = 2) AND editorial_id = 1;
SELECT * FROM libros WHERE (titulo = 'IT' OR autor_id = 2) AND editorial_id = 1 AND precio > 10;
SELECT * FROM libros WHERE (titulo = 'IT' OR autor_id = 2) AND editorial_id = 1 AND precio > 10 AND precio < 20;

-- SELECT * FROM autores WHERE seudonimo = NULL; Esta mal
SELECT * FROM autores WHERE seudonimo IS NULL;
SELECT * FROM autores WHERE seudonimo IS NOT NULL;
SELECT * FROM autores WHERE seudonimo <> NULL;
SELECT * FROM autores WHERE seudonimo <=> NULL;

-- !Rangos
SELECT * FROM libros WHERE precio BETWEEN 10 AND 20;
SELECT * FROM libros WHERE precio NOT BETWEEN 10 AND 20;
SELECT titulo FROM libros WHERE fecha_publicacion BETWEEN '2000-01-01' AND '2022-12-31';
SELECT * FROM autores WHERE nombre in ('Jairo Ignacio', 'Oscar Mauricio');

SELECT * FROM autores WHERE nombre LIKE '%io%';

-- Valores distintos DISTINCT
SELECT DISTINCT pais_origen FROM autores;

-- Alias
SELECT autor_id AS id, titulo AS title FROM libros;
SELECT 9*10 AS resultado;

-- UPDATE
UPDATE autores SET nombre = 'Jairo Ignacio' WHERE autor_id = 1;

-- DELETE
DELETE FROM autores WHERE autor_id = 1;



