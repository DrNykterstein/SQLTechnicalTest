select c.nombre, c.email AS  correo, sum(p.total) as total_pedido
from
clientes c
INNER JOIN pedido p on p.id_clientes = c.id_clientes
group by  c.nombre, c.email, c.id_clientes
order by total_pedido desc


/* consulta de los productos mas vendidos, mostrando su nombre y la cantidad */
select p.nombre_producto, dp.cantidad 
from productos p
INNER JOIN detalle_pedido dp on p.id_productos = dp.id_producto
order by dp.cantidad desc

/* consulta de los productos mas vendidos en los ultimos 6 meses, mostrando su nombre y la cantidad */
select p.nombre_producto, sum(dp.cantidad) as cantidad_vendida
from detalle_pedido  dp
INNER JOIN productos p on p.id_productos = dp.id_producto
INNER JOIN pedido pe on dp.id_pedido = pe.id_pedido
where (pe.fecha_pedido >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH))
group by p.nombre_producto
order by cantidad_vendida desc