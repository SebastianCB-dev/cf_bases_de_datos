-- Modificar datos

-- Añadir columna
ALTER TABLE libros ADD COLUMN ventas INT UNSIGNED NOT NULL;
ALTER TABLE libros ADD COLUMN stock INT UNSIGNED NOT NULL DEFAULT 10;

-- Eliminar columna
ALTER TABLE libros DROP COLUMN stock;

-- Renombrar tabla
ALTER TABLE usuarios RENAME users;

-- Modificar el tipo de una columna
ALTER TABLE usuarios MODIFY telefono VARCHAR(50);

-- Generar una llave primaria
ALTER TABLE usuarios ADD id INT UNSIGNED NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (id);

-- Agregar llave foranea
ALTER TABLE usuarios ADD FOREIGN KEY(grupo_id) REFERENCES grupos(grupo_id);

-- Eliminar llave foranea
ALTER TABLE usuarios DROP FOREIGN KEY(grupo_id);
