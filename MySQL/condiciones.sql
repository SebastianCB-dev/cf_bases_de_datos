DROP DATABASE IF EXISTS libreria_cf; -- Eliminar base de datos si existe
CREATE DATABASE IF NOT EXISTS libreria_cf; -- Crear base de datos si no existe

CREATE TABLE IF NOT EXISTS autores(
  autor_id INT,
  nombre VARCHAR(25),
  apellido VARCHAR(25),
  genero CHAR(1),
  fecha_nacimiento DATE,
  pais_origen VARCHAR(40)
);

