-- CREATE DATABASE IF NOT EXISTS tienda2 DEFAULT CHARACTER SET utf8mb4;
-- CREATE SCHEMA IF NOT EXISTS tienda DEFAULT CHARACTER SET utf8mb4;

-- ALTER SCHEMA `tienda`  DEFAULT CHARACTER SET utf8mb4  DEFAULT COLLATE utf8mb4_general_ci;

-- CREATE TABLE IF NOT EXISTS productos (id_producto INT NOT NULL) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- ALTER TABLE producto RENAME productos;
-- RENAME TABLE producto TO productos, categoria to categorias; (Esta nos deja modificar varias tablas a la vez)

-- DROP TABLE IF EXISTS productos;

-- ALTER TABLE producto ADD COLUMN nombre VARCHAR(45) NULL AFTER id_producto;producto

-- ALTER TABLE producto CHANGE COLUMN nombre descripcion LONGTEXT NULL DEFAULT NULL;

-- ALTER TABLE producto DROP COLUMN descripcion;

-- TODO: FOREIGN KEY
-- ALTER TABLE `tienda`.`producto` 
-- ADD INDEX `FK_PRODUCTO_CATEGORIA_idx` (`idCategoria` ASC) VISIBLE;
-- ;
-- ALTER TABLE `tienda`.`producto` 
-- ADD CONSTRAINT `FK_PRODUCTO_CATEGORIA`
--   FOREIGN KEY (`idCategoria`)
--   REFERENCES `tienda`.`categoria` (`idCategoria`)
--   ON DELETE RESTRICT
--   ON UPDATE CASCADE;
