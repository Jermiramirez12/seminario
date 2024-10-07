-- 1. Insertar datos en la tabla Gerente
INSERT INTO Gerente (nombre) VALUES
('Jermi Ramírez');

-- 2. Insertar datos en la tabla Encargado
INSERT INTO Encargado (nombre) VALUES
('Mario Zamora');

-- 3. Insertar datos en la tabla Dueno
INSERT INTO Dueno (nombre) VALUES
('Claudio Monserrat');

-- 4. Insertar datos en la tabla Venta
INSERT INTO Venta (tipo_venta, fecha, monto_total, gerente_id) VALUES
('Efectivo', '2024-10-01', 150000.00, 1),
('Transferencia', '2024-10-02', 250000.00, 1),
('Débito', '2024-10-03', 300000.00, 1);

-- 5. Insertar datos en la tabla Compra
INSERT INTO Compra (nro_compra, tipo_compra, nombre, monto_total, fecha_carga, proveedor, encargado_id, gerente_id) VALUES
(1001, 'Mercadería', 'Harina', 800000.00, '2024-09-30', 'Proveedor A', 1, 1),
(1002, 'Descartable', 'Servilletas', 200000.00, '2024-09-29', 'Proveedor B', 1, 1),
(1003, 'Producto de limpieza', 'Detergente', 150000.00, '2024-09-28', 'Proveedor C', 1, 1),
(1004, 'Maquinaria', 'Amasadora', 1200000.00, '2024-09-27', 'Proveedor D', 1, 1);

-- 6. Insertar datos en la tabla Gasto
INSERT INTO Gasto (tipo_gasto, monto, fecha, detalle, encargado_id, gerente_id) VALUES
('Servicio', 100000.00, '2024-10-01', 'Gasto de personal', 1, 1),
('Compra', 50000.00, '2024-10-02', 'Gasto de servicios', 1, 1),
('Otros', 75000.00, '2024-10-03', 'Gasto administrativo', 1, 1);

-- 7. Insertar datos en la tabla Reporte
INSERT INTO Reporte (fecha_generacion, monto_total_ventas, monto_total_gastos, rentabilidad, dueno_id, gerente_id) VALUES
('2024-10-04', 4000000.00, 225000.00, 3775000.00, 1, 1);

-- 8. Insertar datos en la tabla Inflacion
INSERT INTO Inflacion (indice, fecha, gerente_id) VALUES
(3.5, '2024-10-01', 1);

-- 9. Insertar datos en la tabla CIPAC
INSERT INTO CIPAC (porcentaje_aumento, fecha_aumento, gerente_id) VALUES
(2.5, '2024-10-01', 1);





    Gasto;