-- ══════════════════════════════════════════════════════════════════
-- RetailPro — Consultas con JOINs y Operadores de Conjuntos
-- Módulo 5: Cruzando tablas para enriquecer el análisis
-- Autor: Matías Ortiz
-- Fecha: 31//7/2026
-- ══════════════════════════════════════════════════════════════════

-- ──────────────────────────────────────────────────────────────────
-- Consulta 1 — Vista base del proyecto (INNER JOIN)
-- ──────────────────────────────────────────────────────────────────
-- Propósito: Cruzar ventas, clientes, productos y territorios para 
-- generar la vista unificada que servirá de fuente principal en Power BI.
SELECT 
    v.fecha_venta,
    c.nombre AS nombre_cliente,
    c.segmento,
    t.region,
    p.nombre_producto,
    p.categoria,
    v.cantidad,
    v.precio_unitario,
    v.total_venta,
    v.canal
FROM ventas v
INNER JOIN clientes c ON v.id_cliente = c.id_cliente
INNER JOIN productos p ON v.id_producto = p.id_producto
INNER JOIN territorios t ON c.id_territorio = t.id_territorio;


-- ──────────────────────────────────────────────────────────────────
-- Consulta 2 — Clientes sin ventas (LEFT JOIN)
-- ──────────────────────────────────────────────────────────────────
-- Propósito: Identificar a los clientes registrados que nunca han realizado
-- una compra (útil para campañas focalizadas del área de CRM).
SELECT 
    c.nombre,
    c.email,
    c.fecha_registro
FROM clientes c
LEFT JOIN ventas v ON c.id_cliente = v.id_cliente
WHERE v.id_venta IS NULL;


-- ──────────────────────────────────────────────────────────────────
-- Consulta 3 — Productos sin ventas (LEFT JOIN)
-- ──────────────────────────────────────────────────────────────────
-- Propósito: Detectar qué artículos del catálogo no registran ningún
-- movimiento comercial para que el área de producto tome decisiones.
SELECT 
    p.nombre_producto,
    p.categoria,
    p.precio
FROM productos p
LEFT JOIN ventas v ON p.id_producto = v.id_producto
WHERE v.id_venta IS NULL;


-- ──────────────────────────────────────────────────────────────────
-- Consulta 4 — Consolidado por canal (UNION ALL)
-- ──────────────────────────────────────────────────────────────────
-- Propósito: Apilar las transacciones diferenciadas por canal o unificar
-- flujos de venta para calcular el volumen total consolidado.
SELECT 
    'Online' AS canal,
    SUM(total_venta) AS total_facturado
FROM ventas
WHERE canal = 'Online'

UNION ALL

SELECT 
    'Presencial' AS canal,
    SUM(total_venta) AS total_facturado
FROM ventas
WHERE canal = 'Presencial';
