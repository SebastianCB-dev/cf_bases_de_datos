USE tienda;

SELECT curdate(); -- Retorna fecha
SELECT NOW(); -- Retorna fecha y hora
SELECT localtime(); -- Retorna fecha y hora
SELECT localtimestamp(); -- Retorna fecha y hora

-- Convertir String a fecha
SELECT str_to_date('09, Aug, 2019', '%d, %M,%Y');


SELECT DATE('2019-08-07 23:21:35') as fecha;
SELECT date(now()) as fecha;

-- Diferencia entre dos fechas
SELECT datediff('2019-08-07', '2000-07-07');

SELECT * FROM empleado;
SELECT nombre, floor(datediff(curdate(), fechaNacimiento) / 365) as edad FROM empleado;
-- floor = Convertir a int

SELECT DATE_ADD(now(), INTERVAL 10 DAY) AS fecha;
SELECT DATE_ADD(now(), INTERVAL -10 DAY) AS fecha;

SELECT DATE_ADD(now(), INTERVAL 4 YEAR) AS FECHA;

-- Extraer el año de la fecha actual
SELECT extract(YEAR from now()) as year;
SELECT extract(day from now()) as day, extract(month from now()) as month;

SELECT * FROM empleado;
SELECT nombre, date_format(fechaNacimiento, '%a, %b, %Y') FROM empleado;
