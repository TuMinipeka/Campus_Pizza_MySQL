USE pizzeria;

INSERT INTO categorias (nombre) VALUES
    ('Pizza'), ('Panzarotti'), ('Bebida'), ('Postre');

INSERT INTO productos (categoria_id, nombre, precio, elaborado) VALUES
    (1, 'Pizza Margarita', 28000, TRUE),
    (1, 'Pizza Hawaiana', 32000, TRUE),
    (1, 'Pizza Pepperoni', 30000, TRUE),
    (1, 'Pizza Cuatro Quesos', 34000, TRUE),
    (2, 'Panzarotti Jamón y Queso', 15000, TRUE),
    (2, 'Panzarotti Pollo', 16000, TRUE),
    (3, 'Gaseosa 400ml', 4000, FALSE),
    (3, 'Jugo Natural', 5000, FALSE),
    (3, 'Agua', 3000, FALSE),
    (4, 'Brownie', 8000, FALSE),
    (4, 'Helado', 7000, FALSE);

INSERT INTO ingredientes (nombre) VALUES
    ('Masa de pizza'), ('Queso mozzarella'), ('Salsa de tomate'), ('Jamón'),
    ('Piña'), ('Pepperoni'), ('Champiñones'), ('Pollo'), ('Masa de panzarotti');

INSERT INTO producto_ingrediente (producto_id, ingrediente_id) VALUES
    (1, 1), (1, 2), (1, 3),
    (2, 1), (2, 2), (2, 3), (2, 4), (2, 5),
    (3, 1), (3, 2), (3, 3), (3, 6),
    (4, 1), (4, 2), (4, 3), (4, 7),
    (5, 9), (5, 4), (5, 2),
    (6, 9), (6, 8), (6, 2);

INSERT INTO adiciones (nombre, precio) VALUES
    ('Extra queso', 3000), ('Extra pepperoni', 4000),
    ('Salsa BBQ', 1500), ('Salsa de ajo', 1000);


INSERT INTO combos (nombre, precio_combo) VALUES
    ('Combo Personal', 32000), ('Combo Pareja', 38000), ('Combo Fiesta', 62000);

INSERT INTO combo_producto (combo_id, producto_id, cantidad) VALUES
    (1, 3, 1), (1, 7, 1),
    (2, 5, 1), (2, 6, 1), (2, 7, 2),
    (3, 4, 1), (3, 2, 1), (3, 7, 2);


INSERT INTO clientes (nombre, correo, telefono) VALUES
    ('Carla Méndez', 'carla.mendez@correo.com', '3001112233'),
    ('Andrés Pardo', 'andres.pardo@correo.com', '3002223344'),
    ('Lucía Fernández', 'lucia.fernandez@correo.com', '3003334455'),
    ('Diego Ramírez', 'diego.ramirez@correo.com', '3004445566'),
    ('Valentina Cruz', 'valentina.cruz@correo.com', '3005556677'),
    ('Santiago Gómez', 'santiago.gomez@correo.com', '3006667788');


INSERT INTO pedidos (cliente_id, fecha_pedido, tipo_entrega) VALUES
    (1, '2026-05-27 12:30:00', 'Local'),
    (1, '2026-05-29 19:10:00', 'Recoger'),
    (1, '2026-06-03 13:00:00', 'Local'),
    (1, '2026-06-05 20:15:00', 'Recoger'),
    (1, '2026-06-12 20:45:00', 'Recoger'),
    (1, '2026-06-19 21:00:00', 'Recoger'),
    (2, '2026-05-20 13:20:00', 'Local'),
    (2, '2026-06-06 14:00:00', 'Recoger'),
    (2, '2026-06-13 13:40:00', 'Local'),
    (3, '2026-05-30 18:30:00', 'Local'),
    (3, '2026-06-08 12:50:00', 'Local'),
    (3, '2026-06-15 19:30:00', 'Recoger'),
    (3, '2026-06-22 13:10:00', 'Local'),
    (4, '2026-06-01 12:40:00', 'Local'),
    (4, '2026-06-10 19:50:00', 'Recoger'),
    (4, '2026-06-17 20:05:00', 'Recoger'),
    (5, '2026-06-12 21:15:00', 'Recoger'),
    (5, '2026-06-19 21:30:00', 'Recoger'),
    (5, '2026-06-20 14:20:00', 'Local'),
    (6, '2026-05-15 13:00:00', 'Local'),
    (6, '2026-06-13 18:00:00', 'Recoger'),
    (2, '2026-06-20 19:40:00', 'Recoger');

INSERT INTO pedido_producto (pedido_id, producto_id, cantidad, precio_unitario) VALUES
    (1, 1, 1, 28000),
    (2, 2, 1, 32000),
    (3, 3, 1, 30000),
    (4, 4, 1, 34000),
    (5, 1, 2, 28000),
    (6, 6, 1, 16000),
    (6, 7, 1, 4000),
    (7, 2, 1, 32000),
    (8, 5, 1, 15000),
    (9, 10, 1, 8000),
    (9, 8, 1, 5000),
    (10, 1, 1, 28000),
    (11, 3, 1, 30000),
    (12, 2, 1, 32000),
    (13, 4, 1, 34000),
    (14, 5, 1, 15000),
    (15, 6, 1, 16000),
    (16, 11, 1, 7000),
    (16, 9, 1, 3000),
    (19, 1, 1, 28000),
    (19, 2, 1, 32000),
    (19, 6, 1, 16000),
    (19, 10, 1, 8000),
    (22, 8, 1, 5000),
    (22, 10, 1, 8000);


INSERT INTO pedido_producto_adicion (pedido_producto_id, adicion_id, precio_aplicado) VALUES
    (3, 2, 4000),
    (9, 1, 3000),
    (12, 1, 3000),
    (13, 3, 1500),
    (14, 1, 3000),
    (16, 1, 3000),
    (17, 1, 3000);

INSERT INTO pedido_combo (pedido_id, combo_id, cantidad, precio_unitario) VALUES
    (17, 3, 1, 62000),
    (18, 1, 1, 32000),
    (20, 2, 1, 38000),
    (21, 2, 1, 38000);
