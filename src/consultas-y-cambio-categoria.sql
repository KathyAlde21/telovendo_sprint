-- Consultas:
-- A)	Cuál es la categoría de productos que más se repite
SELECT categoria, COUNT(*) AS COUNT
FROM productos
GROUP BY categoria
ORDER BY COUNT DESC LIMIT 1;

-- B)	Cuáles son los productos con mayor stock
-- no use * porque no necesito la foreign keys
SELECT id_producto, precio, stock, categoria, color
FROM productos
ORDER BY stock DESC;

-- C)	Qué color de producto es más común en nuestra tienda.
SELECT color, COUNT(*) AS COUNT
FROM productos
GROUP BY color
ORDER BY COUNT DESC LIMIT 1;

-- D)	Cual o cuales son los proveedores con menor stock de productos.
-- sumar los stock para poder ordenar
SELECT pv.id_proveedor, pv.nombre_corporativo, SUM(pr.stock) AS total_stock
FROM proveedores pv
JOIN productos pr ON pv.id_proveedor = pr.fk_id_proveedor
GROUP BY pv.id_proveedor, pv.nombre_corporativo
ORDER BY total_stock ASC
LIMIT 5;

-- // -------------------------------------------------------------------------------------------------
-- Cambie la categoría de productos más popular por ‘Electrónica y computación’
-- cuando cree las tablas coloque VARCHAR(20) y no alcanza para guardar el nuevo nombre, hice cambio de eso primero
ALTER TABLE proveedores
MODIFY COLUMN categoria_producto VARCHAR(50); -- antes solo 20

ALTER TABLE productos
MODIFY COLUMN categoria VARCHAR(50); -- antes solo 20

-- ahora puedo realizar el cambio de nombre
UPDATE proveedores
SET categoria_producto = 'Electrónica y computación'
WHERE categoria_producto = 'Tecnologia';

UPDATE productos
SET categoria = 'Electrónica y computación'
WHERE categoria = 'Tecnologia';
