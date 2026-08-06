# Proyecto Integral de Analítica de Datos — RetailPro

## Descripción del Proyecto

Este repositorio documenta el desarrollo de una solución integral de Business Intelligence (BI) para **RetailPro**, una empresa distribuidora de productos tecnológicos que opera en diversas regiones de Latinoamérica.

El proyecto aborda los desafíos operativos y estratégicos identificados para el periodo 2023-2024, centrando los esfuerzos en tres objetivos clave:
1.  **Optimización de KPIs de Ventas:** Implementación de un seguimiento robusto de métricas core como Margen de Ganancia y Ticket Promedio.
2.  **Gestión de Inventario:** Desarrollo de análisis detallados para optimizar la rotación de stock y evitar quiebres.
3.  **Reactivación Regional:** Identificación de las causas subyacentes del bajo rendimiento en el territorio **Norte** para proponer estrategias de recuperación basadas en datos.

## Herramientas y Tecnologías Utilizadas

* **Motor de Base de Datos Relacional:** PostgreSQL / SQL Server (DDL, DML, DQL avanzada).
* **Business Intelligence & Visualización:** Power BI Desktop.
* **Pipeline ETL:** Power Query y Lenguaje M.
* **Cálculo y Modelado:** DAX (Data Analysis Expressions).
* **Documentación y Optimización:** Inteligencia Artificial Generativa utilizada como co-piloto para validación técnica.

## Estructura del Repositorio

El proyecto se desarrolla de forma modular, reflejando la progresión del flujo de trabajo analítico. Las entregas se organizan en las siguientes carpetas:

* 📂 `m1_brief/`: Contiene el **Brief Analítico** inicial que define el problema de negocio, objetivos y alcance de RetailPro.
* 📂 `m3_ddl/`: Incluye los scripts **DDL** (`Data Definition Language`) para la creación de las tablas, claves primarias y foráneas de la base de datos `Ventas_Tech_DB` (modelo relacional normalizado).
* 📂 `m4_dql/`: Contiene los scripts **DML** (`Data Manipulation Language`) para la carga de datos iniciales y los scripts **DQL** (`Data Query Language`) con las consultas analíticas avanzada avanzada (agregaciones, JOINs complejos) para el análisis de Retail.
* 📂 `m6_m7_etl_powerbi/`: Aloja el archivo `.pbix` con el pipeline **ETL** completo desarrollado en Power Query y Lenguaje M, asegurando la limpieza y tipado de datos antes del modelado.
* 📂 `m8_dax/`: Incluye el reporte final modelado en Power BI con la tabla de medidas **DAX** y el dashboard diseñado para el seguimiento de RetailPro.

## Instrucciones para Reproducir el Proyecto

Para replicar el entorno de análisis y el reporte de Power BI, sigue estos pasos en el orden indicado:

### 1. Configuración de la Base de Datos SQL

Es necesario poseer un entorno de SQL Server o PostgreSQL funcional.

1.  **Crear Base de Datos:** Crea una base de datos limpia con el nombre `Ventas_Tech_DB`.
2.  **Ejecutar Script DDL (Estructura):** Ejecuta en orden los scripts ubicados en `m3_ddl/` para crear las tablas y relaciones (`clientes`, `productos`, `territorios`, `ventas`). **No** ejecutes la carga de datos todavía.
3.  **Ejecutar Script DML (Carga de Datos):** Una vez que las estructuras estén creadas correctamente, ejecuta los scripts de carga de datos ubicados en `m4_dql/`. *Nota: El orden es crítico para respetar las restricciones de claves foráneas.*

### 2. Configuración de Power BI

1.  Abre Power BI Desktop y carga el archivo `.pbix` final ubicado en `m8_dax/`.
2.  Si la conexión a la base de datos no se actualiza automáticamente, ve a **Transformar datos** > **Configuración de origen de datos** y ajusta las credenciales y la ruta de tu servidor SQL local.

---
**Analista:** [Tu Nombre/Apellido]
**Curso:** Data Analytics — Coderhouse
**Año:** 2024
