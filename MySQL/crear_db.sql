-- Crear base de datos
CREATE DATABASE libreria_cf;
CREATE DATABASE tienda DEFAULT CHARACTER SET utf8mb4;
CREATE SCHEMA tienda2 DEFAULT CHARACTER SET utf8mb4;


-- Listar bases de datos
SHOW DATABASES;

-- Borrar base de datos
DROP DATABASE libreria_cf;

-- Cambiar nombre de base de datos
ALTER DATABASE libreria_cf RENAME TO libreria_cf_2;

-- Usar base de datos
USE libreria_cf_1;