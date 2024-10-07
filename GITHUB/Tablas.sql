-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS bd_sistemadecalculo;

-- Usar la base de datos
USE bd_sistemadecalculo;

-- 1. Crear la tabla Gerente
CREATE TABLE Gerente (
  id_gerente INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único del gerente
  nombre VARCHAR(100)                         -- Nombre del gerente
);

-- 2. Crear la tabla Encargado
CREATE TABLE Encargado (
  id_encargado INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único del encargado
  nombre VARCHAR(100)                          -- Nombre del encargado
);

-- 3. Crear la tabla Dueño (Usamos "Dueno" por compatibilidad)
CREATE TABLE Dueno (
  id_dueno INT AUTO_INCREMENT PRIMARY KEY,    -- Identificador único del dueño
  nombre VARCHAR(100)                         -- Nombre del dueño
);
-- Crear la tabla Venta 
CREATE TABLE Venta (
  id_venta INT AUTO_INCREMENT PRIMARY KEY,    -- Identificador único de la venta
  tipo_venta VARCHAR(50),                     -- Indica si es débito, transferencia o efectivo
  fecha DATE,                                 -- Fecha de la venta
  monto_total DECIMAL(10, 2),                 -- Monto total de la venta
  gerente_id INT,                             -- ID del gerente que supervisa la venta
  FOREIGN KEY (gerente_id) REFERENCES Gerente(id_gerente)  -- Relación con la tabla Gerente
);
-- 4. Crear la tabla Compra
CREATE TABLE Compra (
  id_compra INT AUTO_INCREMENT PRIMARY KEY,   -- Identificador único de la compra
  nro_compra INT,                             -- Número de compra
  tipo_compra VARCHAR(50),                    -- Tipo de compra
  nombre VARCHAR(255),                        -- Nombre de la mercadería comprada
  monto_total DECIMAL(10, 2),                 -- Monto total de la compra
  fecha_carga DATE,                           -- Fecha de registro de la compra
  proveedor VARCHAR(100),                     -- Nombre del proveedor
  encargado_id INT,                           -- ID del encargado que realiza la compra
  gerente_id INT,                             -- ID del gerente que supervisa la compra
  FOREIGN KEY (encargado_id) REFERENCES Encargado(id_encargado),
  FOREIGN KEY (gerente_id) REFERENCES Gerente(id_gerente)
);

-- 5. Crear la tabla Gasto
CREATE TABLE Gasto (
  id_gasto INT AUTO_INCREMENT PRIMARY KEY,    -- Identificador único del gasto
  tipo_gasto VARCHAR(50),                     -- Tipo de gasto (e.g., compra, servicio, otros)
  monto DECIMAL(10, 2),                       -- Monto del gasto
  fecha DATE,                                 -- Fecha en que se realizó el gasto
  detalle VARCHAR(255),                       -- Detalles del gasto (descripción opcional)
  encargado_id INT,                           -- Clave foránea hacia el Encargado que registró el gasto
  gerente_id INT,                             -- Clave foránea hacia el Gerente que supervisó el gasto
  FOREIGN KEY (encargado_id) REFERENCES Encargado(id_encargado),  
  FOREIGN KEY (gerente_id) REFERENCES Gerente(id_gerente)
);

-- 6. Crear la tabla Reporte
CREATE TABLE Reporte (
  id_reporte INT AUTO_INCREMENT PRIMARY KEY,   -- Identificador único del reporte
  fecha_generacion DATE,                       -- Fecha de generación del reporte
  monto_total_ventas DECIMAL(10, 2),           -- Total de ventas en el periodo
  monto_total_gastos DECIMAL(10, 2),           -- Total de gastos en el periodo
  rentabilidad DECIMAL(10, 2),                 -- Rentabilidad calculada
  dueno_id INT,                                -- Clave foránea hacia el dueño
  gerente_id INT,                              -- Clave foránea hacia el gerente
  FOREIGN KEY (dueno_id) REFERENCES Dueno(id_dueno),
  FOREIGN KEY (gerente_id) REFERENCES Gerente(id_gerente)
);

-- 7. Crear la tabla Inflación
CREATE TABLE Inflacion (
  id_inflacion INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único de la inflación
  indice DECIMAL(5, 2),                        -- Índice de inflación
  fecha DATE,                                  -- Fecha del índice inflacionario
  gerente_id INT,                              -- Clave foránea hacia el gerente
  FOREIGN KEY (gerente_id) REFERENCES Gerente(id_gerente)
);

-- 8. Crear la tabla CIPAC
CREATE TABLE CIPAC (
  id_cipac INT AUTO_INCREMENT PRIMARY KEY,     -- Identificador único del CIPAC
  porcentaje_aumento DECIMAL(5, 2),            -- Porcentaje de aumento del CIPAC
  fecha_aumento DATE,                          -- Fecha del aumento
  gerente_id INT,                              -- Clave foránea hacia el gerente
  FOREIGN KEY (gerente_id) REFERENCES Gerente(id_gerente)
)