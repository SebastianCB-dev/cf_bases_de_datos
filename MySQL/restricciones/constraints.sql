-- Valores no nulos
nombre VARCHAR(25) NOT NULL,
apellido VARCHAR(25) NOT NULL,
...

-- Valores nulos
nombre VARCHAR(25),
apellido VARCHAR(25),

-- Valores unicos
nombre VARCHAR(25) UNIQUE,

-- Obtener fecha y hora actual
SELECT CURRENT_TIMESTAMP;
SELECT NOW();

-- Solo números positivos
user_id INT UNSIGNED;

-- Tipo enum
genero ENUM('M', 'F');

-- Autoincrementar -> Que el valor de la columna sea autoincrementable
autor_id INT AUTO_INCREMENT,

-- Llave primaria
-- La llave primaria debe ser una columna única que no se puede repetir e identifica un registro
primary key (autor_id)

-- Llaves foraneas
-- Si la relacion es de uno a muchos, la llave foranea debe estar en la tabla de pertenencia o la de uno
foreign key (autor_id) references autores(autor_id)

CREATE TABLE autores(
  autor_id          INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  nombre            VARCHAR(25) NOT NULL,
  apellido          VARCHAR(25) NOT NULL,
  genero            CHAR(1) NOT NULL,
  seudonimo         VARCHAR(50) UNIQUE,
  fecha_nacimiento  DATE NOT NULL,
  pais_origen       VARCHAR(40) NOT NULL,
  fecha_creacion    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE libros(
  libro_id          INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  autor_id          INTEGER UNSIGNED NOT NULL,
  titulo            VARCHAR(50) NOT NULL,
  descripcion       VARCHAR(250) NOT NULL,
  paginas           INTEGER UNSIGNED NOT NULL,
  fecha_publicacion DATE NOT NULL,
  fecha_creacion    DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (autor_id) references autores(autor_id)
);
