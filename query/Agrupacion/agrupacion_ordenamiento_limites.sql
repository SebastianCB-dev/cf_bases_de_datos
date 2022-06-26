USE tienda;

SELECT sum(cantidad) as total 
from detalle_factura 
where idProducto = 2;

SELECT * FROM detalle_factura;

SELECT count(*) AS tot_productos
FROM producto WHERE idCategoria = 2;

SELECT count(distinct idCategoria) from producto;

SELECT * FROM categoria;



-- GROUP BY
select * from cliente;
SELECT DISTINCT pais from cliente;
SELECT pais from cliente GROUP BY pais;

SELECT idFactura, SUM(precioUnitario * cantidad) as total
FROM detalle_factura
GROUP BY idFactura;


