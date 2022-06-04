# Variables en MySQL
Las variables se borran de la memoria de MySQL cuando se cierra la conexión.

- Ejemplos de comandos SQL:
system clear = Limpiar la pantalla
system date = Fecha del sistema
system time = Hora del sistema

- Creación de variables en MySQL:
SET @variable = 'valor';
SET @nombre = 'Sebastián Carrillo Barón';

- Otra forma de creación de variables en MySQL:
SET @variable := 'valor';  
SET @nombre := 'Sebastián Carrillo Barón';

- Creación de varias variables en MySQL:
SET @curso = 'Curso de MySQL', @gestor = 'MySQL';

- Para recuperar valor de una variable en MySQL:
SELECT @variable;
