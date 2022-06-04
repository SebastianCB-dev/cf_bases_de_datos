/* 
Que tipo de entidades? Autores 
Nombre: autores
Lista:
  - autor_id
  - Nombre
  - Apellido
  - Genero
  - Fecha de nacimiento
  - País de origen
Tipos de datos:
  - INT AUTO_INCREMENT
  - VARCHAR(25)
  - VARCHAR(25)
  - CHAR(1)  (M/F)
  - DATE (YYYY-MM-DD)
  - VARCHAR(40)
Normalización:
Nos asegura que no tendremos tipos duplicados o columnas compuestas
*/

CREATE TABLE autores(
  autor_id INT,
  nombre VARCHAR(25),
  apellido VARCHAR(25),
  genero CHAR(1),
  fecha_nacimiento DATE,
  pais_origen VARCHAR(40)
);

-- Mostrar tablas
SHOW TABLES;

-- Mostrar base de datos en la que estamos trabajando
SELECT DATABASE();

-- Eliminar tabla
DROP TABLE autores;

-- Saber columnas de una tabla
SHOW COLUMNS FROM autores;
DESCRIBE autores;
DESC autores;

-- Crear tabla con base en otra
CREATE TABLE usuarios LIKE autores;

-- Ejecutar archivo sql (Sin autenticación)
mysql -u root -p < MySQL\sentencias.sql

-- Ejecutar archivo sql (Con autenticación)
SOURCE MySQL\sentencias.sql

-- Ejecutar sentencia sql sin autenticación
mysql -u root -p libreria_cf -e "SELECT * FROM autores" -- -e = execute

