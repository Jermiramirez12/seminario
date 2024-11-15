-- Inserciones en la tabla Usuario
INSERT INTO Usuario (nombre, rol, contrasena) VALUES
('Claudio Monserrat', 'Dueno', 'password1'),
('Jermi Ramírez', 'Gerente', 'password2'),
('Mario Zamora', 'Encargado', 'password3');

-- Inserciones en la tabla Gerente
INSERT INTO Gerente (nombre) VALUES ('Jermi Ramírez');

-- Inserciones en la tabla Encargado
INSERT INTO Encargado (nombre) VALUES ('Mario Zamora');

-- Inserciones en la tabla Dueño
INSERT INTO Dueno (nombre) VALUES ('Claudio Monserrat');

-- Inserciones en la tabla TipoGasto
INSERT INTO TipoGasto (nombre) VALUES ('Servicio'), ('Compra'), ('Otros'), ('Personal'), ('Mantenimiento');

-- Inserciones en la tabla Venta
INSERT INTO Venta (tipo_venta, fecha, monto_total, detalle, gerente_id, usuario_id) VALUES
('Efectivo', '2024-10-01', 150000.00, 'Venta en efectivo', 1, 2),
('Transferencia', '2024-10-02', 250000.00, 'Venta por transferencia', 1, 2);

-- Inserciones en la tabla Compra
INSERT INTO Compra (nro_compra, tipo_compra, nombre, monto_total, fecha_carga, proveedor, detalle, tipo_pago, encargado_id, gerente_id, usuario_id) VALUES
(1001, 'Mercadería', 'Harina', 800000.00, '2024-09-30', 'Proveedor A', 'Harina de trigo', 'Efectivo', 1, 1, 3);

-- Inserciones en la tabla Gasto
INSERT INTO Gasto (monto, fecha, detalle, tipo_pago, encargado_id, gerente_id, usuario_id, tipo_gasto_id) VALUES
(100000.00, '2024-10-01', 'Gasto en servicios', 'Efectivo', 1, 1, 3, 1);

-- Inserciones en la tabla Reporte
INSERT INTO Reporte (fecha_generacion, monto_total_ventas, monto_total_gastos, monto_total_compras, indice_inflacion, aumento_cipac, rentabilidad, dueno_id, gerente_id) VALUES
('2024-10-04', 400000.00, 225000.00, 150000.00, 3.5, 2.5, 227500.00, 1, 1);

-- Inserciones en la tabla Inflacion
INSERT INTO Inflacion (indice, fecha, gerente_id) VALUES (3.5, '2024-10-01', 1);

-- Inserciones en la tabla CIPAC
INSERT INTO Cipac (porcentaje_aumento, fecha_aumento, gerente_id) VALUES (2.5, '2024-10-01', 1);