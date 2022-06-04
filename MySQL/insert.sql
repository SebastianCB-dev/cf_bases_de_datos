INSERT INTO autores( autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen )
            VALUES ( 1, 'Joan Sebastián', 'Carrillo Barón', 'M', '2001-04-11', 'Colombia' );

INSERT INTO autores( autor_id, nombre )
            VALUES ( 2, 'Juan Carlos' );

INSERT INTO autores( autor_id, nombre )
            VALUES ( 3, 'Oscar Mauricio' );

INSERT INTO autores( autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen )
            VALUES ( 4, 'Elba Janeth', 'Baron Lopez', 'F', '1985-08-16', 'Colombia' );

INSERT INTO autores( autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen )
            VALUES ( 5, 'Jairo Ignacio', 'Carrillo Carreño', 'M', '1959-07-31', 'Colombia' );

INSERT INTO autores() VALUES ();

-- Consultar tabla
SELECT * FROM autores;

-- Insertar varios registros

INSERT INTO autores( nombre, apellido, genero, fecha_nacimiento, pais_origen )
            VALUES ( 'Juan Carlos', 'Carrillo Barón', 'M', '2001-04-11', 'Colombia' ),
            ( 'Oscar Mauricio', 'Carrillo Barón', 'M', '2001-04-11', 'Colombia' ),
            ( 'Elba Janeth', 'Baron Lopez', 'F', '2001-04-11', 'Colombia' ),
            ( 'Jairo Ignacio', 'Carrillo Carreño', 'M', '2001-04-11', 'Colombia' );

INSERT INTO libros( autor_id, titulo, descripcion, paginas, fecha_publicacion )
            VALUES (1, 'El señor de los anillos', 'Un libro de fantasía', 1254, '2001-12-01'),
                   (2, 'IT', 'Un libro de terror', 670, '2001-12-01'),
                   (3, 'Cronicas de una muerte anunciada', 'Un libro de terror', 1000, '2001-12-01'),
                   (4, '1984', 'Un libro de terror', 930, '2001-12-01'),
                   (1, 'Wigth of the Wild', 'Un libro de terror', 200, '2001-12-10');

-- Limpiar tabla
TRUNCATE TABLE libros;

