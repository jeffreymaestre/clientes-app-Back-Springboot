/* Populate tabla clientes */

INSERT INTO regiones (id, nombre) VALUES (1, 'Sudam�rica');
INSERT INTO regiones (id, nombre) VALUES (2, 'Centroam�rica');
INSERT INTO regiones (id, nombre) VALUES (3, 'Norteam�rica');
INSERT INTO regiones (id, nombre) VALUES (4, 'Europa');
INSERT INTO regiones (id, nombre) VALUES (5, 'Asia');
INSERT INTO regiones (id, nombre) VALUES (6, 'Africa');
INSERT INTO regiones (id, nombre) VALUES (7, 'Ocean�a');
INSERT INTO regiones (id, nombre) VALUES (8, 'Ant�rtida');

INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(1, 'Andr�s', 'Guzm�n', 'profesor@bolsadeideas.com', '2018-01-01');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(2, 'Mr. John', 'Doe', 'john.doe@gmail.com', '2018-01-02');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(4, 'Linus', 'Torvalds', 'linus.torvalds@gmail.com', '2018-01-03');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(4, 'Rasmus', 'Lerdorf', 'rasmus.lerdorf@gmail.com', '2018-01-04');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(4, 'Erich', 'Gamma', 'erich.gamma@gmail.com', '2018-02-01');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(3, 'Richard', 'Helm', 'richard.helm@gmail.com', '2018-02-10');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(3, 'Ralph', 'Johnson', 'ralph.johnson@gmail.com', '2018-02-18');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(3, 'John', 'Vlissides', 'john.vlissides@gmail.com', '2018-02-28');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(3, 'Dr. James', 'Gosling', 'james.gosling@gmail.com', '2018-03-03');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(5, 'Magma', 'Lee', 'magma.lee@gmail.com', '2018-03-04');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(6, 'Tornado', 'Roe', 'tornado.roe@gmail.com', '2018-03-05');
INSERT INTO clientes (region_id, nombre, apellido, email, create_at) VALUES(7, 'Jade', 'Doe', 'jane.doe@gmail.com', '2018-03-06');

/* Creamos algunos usuarios con sus roles */
INSERT INTO `usuarios` (username, password, enabled, nombre, apellido, email) VALUES ('jeffrey','$2a$10$uGMQI8/ALfew7upi9No8TOm1A3cvhzC8SGlL2RNb6zl/VxAV5j4Om',1, 'Jeffrey', 'Maestre','jeffrey@pruebas.com');
INSERT INTO `usuarios` (username, password, enabled, nombre, apellido, email) VALUES ('admin','$2a$10$Sr8CwWUQe/DJetMkvNALPu7yfIPUue8Rm2DIW49J0UW1Z/QKY1w0S',1, 'Admin', 'Admin','Admin@pruebas.com');

INSERT INTO `roles` (nombre) VALUES ('ROLE_USER');
INSERT INTO `roles` (nombre) VALUES ('ROLE_ADMIN');

INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (1, 1);
INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (2, 2);
INSERT INTO `usuarios_roles` (usuario_id, role_id) VALUES (2, 1);

INSERT INTO productos (nombre, precio, create_at) VALUES ('Televisor', 259990, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Celular', 4285, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Nevera', 19346, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Lavadora', 628934, NOW());
INSERT INTO productos (nombre, precio, create_at) VALUES ('Plancha', 263945, NOW());

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES ('Factura de equipos de oficina', null, 1, Now());

INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1,1,1);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (2,1,4);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1,1,5);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (1,1,3);

INSERT INTO facturas (descripcion, observacion, cliente_id, create_at) VALUES ('Factura Bicicleta', 'Alguna nota importante!', 1, Now());

INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES (3,2,5);