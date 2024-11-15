-- Consulta para la tabla Venta
SELECT
    v.id_venta AS 'ID Venta',
    v.tipo_venta AS 'Tipo de Venta',
    v.fecha AS 'Fecha de Venta',
    v.monto_total AS 'Monto Total',
    g.nombre AS 'Nombre del Gerente',
    u.nombre AS 'Nombre del Usuario'
FROM
    Venta v
LEFT JOIN Gerente g ON v.gerente_id = g.id_gerente
LEFT JOIN Usuario u ON v.usuario_id = u.id_usuario;

-- Consulta para la tabla Compra
SELECT
    c.id_compra AS 'ID Compra',
    c.nro_compra AS 'Número de Compra',
    c.tipo_compra AS 'Tipo de Compra',
    c.nombre AS 'Nombre de la Mercadería',
    c.monto_total AS 'Monto Total',
    c.fecha_carga AS 'Fecha de Carga',
    c.proveedor AS 'Proveedor',
    g.nombre AS 'Nombre del Gerente',
    e.nombre AS 'Nombre del Encargado',
    u.nombre AS 'Nombre del Usuario'
FROM
    Compra c
LEFT JOIN Gerente g ON c.gerente_id = g.id_gerente
LEFT JOIN Encargado e ON c.encargado_id = e.id_encargado
LEFT JOIN Usuario u ON c.usuario_id = u.id_usuario;

-- Consulta para la tabla Gasto
SELECT
    g.id_gasto AS 'ID Gasto',
    tg.nombre AS 'Tipo de Gasto',
    g.monto AS 'Monto',
    g.fecha AS 'Fecha',
    g.detalle AS 'Detalle',
    ger.nombre AS 'Nombre del Gerente',
    enc.nombre AS 'Nombre del Encargado',
    usr.nombre AS 'Nombre del Usuario'
FROM
    Gasto g
LEFT JOIN TipoGasto tg ON g.tipo_gasto_id = tg.id_tipo_gasto
LEFT JOIN Gerente ger ON g.gerente_id = ger.id_gerente
LEFT JOIN Encargado enc ON g.encargado_id = enc.id_encargado
LEFT JOIN Usuario usr ON g.usuario_id = usr.id_usuario;

-- Consulta para la tabla TipoGasto
SELECT
    tg.id_tipo_gasto AS 'ID Tipo Gasto',
    tg.nombre AS 'Nombre del Tipo de Gasto'
FROM
    TipoGasto tg;

-- Consulta para la tabla Reporte
SELECT
    r.id_reporte AS 'ID Reporte',
    r.fecha_generacion AS 'Fecha de Generación',
    r.monto_total_ventas AS 'Monto Total de Ventas',
    r.monto_total_gastos AS 'Monto Total de Gastos',
    r.rentabilidad AS 'Rentabilidad',
    d.nombre AS 'Nombre del Dueño',
    g.nombre AS 'Nombre del Gerente'
FROM
    Reporte r
LEFT JOIN Dueno d ON r.dueno_id = d.id_dueno
LEFT JOIN Gerente g ON r.gerente_id = g.id_gerente;

-- Consulta para la tabla Inflacion
SELECT
    i.id_inflacion AS 'ID Inflación',
    i.indice AS 'Índice de Inflación',
    i.fecha AS 'Fecha',
    g.nombre AS 'Nombre del Gerente'
FROM
    Inflacion i
LEFT JOIN Gerente g ON i.gerente_id = g.id_gerente;

-- Consulta para la tabla CIPAC
SELECT
    c.id_cipac AS 'ID CIPAC',
    c.porcentaje_aumento AS 'Porcentaje de Aumento',
    c.fecha_aumento AS 'Fecha de Aumento',
    g.nombre AS 'Nombre del Gerente'
FROM
    CIPAC c
LEFT JOIN Gerente g ON c.gerente_id = g.id_gerente;
