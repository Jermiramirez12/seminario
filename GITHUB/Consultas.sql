
-- Consulta para la tabla Venta
SELECT
    id_venta AS 'ID Venta',
    tipo_venta AS 'Tipo de Venta',
    fecha AS 'Fecha de Venta',
    monto_total AS 'Monto Total',
    gerente_id AS 'ID Gerente'
FROM
    Venta;

-- Consulta para la tabla Compra
SELECT
    id_compra AS 'ID Compra',
    nro_compra AS 'Número de Compra',
    tipo_compra AS 'Tipo de Compra',
    nombre AS 'Nombre de la Mercadería',
    monto_total AS 'Monto Total',
    fecha_carga AS 'Fecha de Carga',
    proveedor AS 'Proveedor',
    gerente_id AS 'ID Gerente',
    encargado_id AS 'ID Encargado'
FROM
    Compra;

-- Consulta para la tabla Gasto
SELECT
    id_gasto AS 'ID Gasto',
    tipo_gasto AS 'Tipo de Gasto',
    monto AS 'Monto',
    fecha AS 'Fecha',
    detalle AS 'Detalle',
    gerente_id AS 'ID Gerente',
    encargado_id AS 'ID Encargado'
FROM
    Gasto;