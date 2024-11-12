-- creando tablas:

CREATE TABLE clientes(
id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre_cliente VARCHAR(40) NOT NULL,
apellido_cliente VARCHAR(40) NOT NULL,
direccion_cliente VARCHAR(40) NOT NULL,		-- SOLO PUDE SER UNA
CONSTRAINT unique_cliente_direccion UNIQUE(id_cliente, direccion_cliente)
);

CREATE TABLE proveedores (
id_proveedor INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre_representante_legal VARCHAR(40) NOT NULL,
nombre_coporativo VARCHAR(40) NOT NULL,
telefono_contacto_uno VARCHAR(20) NOT NULL,
telefono_contacto_dos VARCHAR(20) NOT NULL,
nombre_ejecutivo_atencion VARCHAR(40) NOT NULL,
categoria_producto VARCHAR(20) NOT NULL,		-- SOLO PUDE SER UNA
email_facturacion VARCHAR(30) NOT NULL,
CONSTRAINT unique_proveedor_categoria_p UNIQUE(id_proveedor, categoria_producto)
);

CREATE TABLE productos(
id_producto INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
precio INT NOT NULL,
stock INT NOT NULL,
categoria VARCHAR(20) NOT NULL,
fk_id_proveedor INT,
Color VARCHAR(20) NOT NULL,
FOREIGN KEY(fk_id_proveedor) REFERENCES proveedores(id_proveedor),
UNIQUE(id_producto, fk_id_proveedor)
);


