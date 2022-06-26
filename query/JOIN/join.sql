USE tienda;

-- INNER JOIN
SELECT * from producto;
SELECT * FROM categoria;

SELECT categoria.nombre as categoria,
producto.nombre as producto
from producto inner join categoria on categoria.idCategoria = producto.idCategoria;

SELECT factura.idFactura as factura,
cliente.nombre as cliente,
empleado.nombre as empleado
from factura
inner join cliente on cliente.idCliente = factura.idCliente
inner join empleado on empleado.idEmpleado = factura.idEmpleado
ORDER BY factura.idFactura ASC;

-- CROSS JOIN
-- Mas sencillo Multiplicacion entre las dos tablas
SELECT * 
from cliente
cross join factura;

-- LEFT JOIN
SELECT cliente.nombre as cliente,
factura.idFactura as factura
from CLIENTE
left join factura on cliente.idCliente = factura.idCliente
order by cliente.nombre;