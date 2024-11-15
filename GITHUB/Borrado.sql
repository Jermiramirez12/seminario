-- Eliminar datos de las tablas dependientes primero
DELETE FROM Cipac;
DELETE FROM Inflacion;
DELETE FROM Reporte;
DELETE FROM Gasto;
DELETE FROM Compra;
DELETE FROM Venta;

-- Luego, eliminar datos de las tablas que tienen relaciones de dependencia
DELETE FROM Gerente;
DELETE FROM Encargado;
DELETE FROM Dueno;
DELETE FROM Usuario;
DELETE FROM TipoGasto;

-- Verificar que las tablas estén vacías
SELECT * FROM Cipac;
SELECT * FROM Inflacion;
SELECT * FROM Reporte;
SELECT * FROM Gasto;
SELECT * FROM Compra;
SELECT * FROM Venta;
SELECT * FROM Gerente;
SELECT * FROM Encargado;
SELECT * FROM Dueno;
SELECT * FROM Usuario;
SELECT * FROM TipoGasto;
