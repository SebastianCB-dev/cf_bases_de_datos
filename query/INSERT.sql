USE tienda;

-- INSERT INTO categoria(nombre, descripcion)
-- VALUES('Cereales', 'Productos como maíz, trigo, avena, arroz, etc');

SELECT * FROM categoria;

SELECT 5 + 2 AS suma;

SELECT 5 + 5 FROM dual;
-- Dual es una tabla ficticia que se puede utilizar cuando no hay referencia.

SELECT * FROM producto;
SELECT nombre FROM producto;
SELECT nombre, precioUnitario FROM producto;

SELECT nombre as 'Nombre de Productos' FROM producto;

SELECT * FROM empleado WHERE salario > 500;
SELECT * FROM empleado WHERE idEmpleado = '2';
SELECT * FROM empleado WHERE idEmpleado = 2;

SELECT * FROM cliente WHERE pais = 'Canadá';

SELECT * FROM producto WHERE idCategoria = 5;

SELECT * FROM categoria;

