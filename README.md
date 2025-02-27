## *Contexto:*
Eres el administrador de una base de datos de una plataforma de comercio electrónico. La base de datos contiene las siguientes tablas:

1. *Clientes*  
   - id_cliente (PK)  
   - nombre  
   - email  
   - fecha_registro  

2. *Pedidos*  
   - id_pedido (PK)  
   - id_cliente (FK)  
   - fecha_pedido  
   - total  

3. *Productos*  
   - id_producto (PK)  
   - nombre_producto  
   - precio  

4. *Detalles_Pedido*  
   - id_detalle (PK)  
   - id_pedido (FK)  
   - id_producto (FK)  
   - cantidad  

---

### *Parte 1: Consultas SQL*

1. *Consulta 1:*  
   Escribe una consulta que devuelva el nombre del cliente, su email y el total gastado por cada cliente en pedidos realizados en el último año. Ordena los resultados de mayor a menor gasto.

2. *Consulta 2:*  
   Encuentra los productos más vendidos (en términos de cantidad) en los últimos 6 meses. Muestra el nombre del producto y la cantidad total vendida.

3. *Consulta 3:*  
   Identifica a los clientes que no han realizado ningún pedido en los últimos 12 meses. Muestra su nombre, email y fecha de registro.

4. *Consulta 4:*  
   Calcula el valor promedio de los pedidos realizados por mes durante el último año. Muestra el mes y el promedio.
