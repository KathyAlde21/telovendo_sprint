-- Alimentando tablas:
-- considerar que los proveedores venden muchos productos y un producto puede tener varios proveedores.
-- categorias: Tecnologia, Deportes, Vestuario

-- estaba mal escrito nombre_corporativo, se realiza cambio de nombre
ALTER TABLE proveedores 
RENAME COLUMN nombre_coporativo TO nombre_corporativo;

-- A)	Agregar 5 proveedores a la base de datos:

INSERT INTO proveedores (nombre_representante_legal, nombre_corporativo, telefono_contacto_uno, telefono_contacto_dos,
    nombre_ejecutivo_atencion, categoria_producto, email_facturacion)
VALUES ('Juan Pérez', 'FalaFeria', '123456789', '987654321', 'Carlos López', 'Tecnologia', 'contabilidad@falaferia.com'), -- 1
  ('María Gómez', 'Almacenes Street', '234567890', '876543210', 'Ana Torres', 'Deportes', 'conta@almacenesstreet.com'), -- 2
  ('Ana López', 'Deporte Total', '456789012', '654321098', 'Laura García', 'Deportes', 'contabilidad@deportetotal.com'), -- 3
  ('Carlos Martínez', 'Mundo Fashion', '567890123', '543210987', 'Jorge Hernández', 'Vestuario', 'conta@mundofashion.com'), -- 4
  ('Laura García', 'Replay', '678901234', '432109876', 'Sofía Fernández', 'Tecnologia', 'contabilidad@replay.com'); -- 5

  
-- B)	Agregar 5 clientes a la base de datos:
INSERT INTO clientes (nombre_cliente, apellido_cliente, direccion_cliente)
VALUES ('Carlos', 'Mendoza', 'Calle Perdida 123'), -- 1
  ('Pablo', 'Perez', 'Turisteando 456'), -- 2
  ('Teresa', 'González', 'Las Flores 789'), -- 3
  ('María', 'López', 'Av Siempre Viva 101'), -- 4
  ('Pedro', 'Martínez', 'Av Paseando 202'); -- 5
  
 
-- C)	Agregar 10 productos a la base de datos:
INSERT INTO productos (precio, stock, categoria, fk_id_proveedor, color)
VALUES (1000000, 50, 'Tecnologia', 1, 'Negro'), -- 1 
  (200000, 30, 'Tecnologia', 1, 'Rojo'), -- 2
  (45000, 20, 'Deportes', 2, 'Azul'), -- 3
  (300000, 10, 'Tecnologia', 5, 'Negro'), -- 4
  (250000, 40, 'Tecnologia', 5, 'Gris'), -- 5
  (120000, 60, 'Tecnologia', 1, 'Negro'), -- 6
  (18000, 25, 'Vestuario', 4, 'Verde'), -- 7
  (90000, 70, 'Tecnologia', 4, 'Blanco'), -- 8
  (51000, 35, 'Deportes', 3, 'Blanco'), -- 9
  (23000, 45, 'Vestuario', 4, 'Naranjo'); -- 10
