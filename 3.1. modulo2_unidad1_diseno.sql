-- Script de diseño de base de datos para sistema de ventas
-- Archivo: modulo2_unidad1_diseno.sql

-- Creación de la base de datos
CREATE DATABASE Negocio_Ejercicio_3_1;

-- 1. Definición de la tabla de Clientes
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,           -- INT es eficiente para identificadores numéricos únicos.
    nombre VARCHAR(100),                  -- VARCHAR(100) permite nombres de hasta 100 caracteres.
    perfil_bio TEXT,                      -- TEXT es ideal para almacenar bloques de texto largos sin límite definido.
    fecha_registro DATE                   -- DATE almacena solo la fecha (año, mes, día), ideal para registros.
);

-- 2. Definición de la tabla de Productos
CREATE TABLE productos (
    id_producto INT PRIMARY KEY,          -- INT para el identificador único del producto.
    descripcion VARCHAR(255),             -- VARCHAR(255) es estándar para descripciones breves.
    precio DECIMAL(10, 2),                -- DECIMAL(10, 2) es obligatorio para dinero: 10 dígitos totales, 2 para decimales. Evita errores de redondeo de FLOAT.
    esta_activo INT                       -- Usamos INT (0 o 1) como flag booleano. Es eficiente para consultas rápidas.
);

SELECT * FROM clientes;
SELECT * FROM productos;
