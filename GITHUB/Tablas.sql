-- Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS bd_sistemadecalculo;

-- Usar la base de datos
USE bd_sistemadecalculo;

-- Crear la tabla Usuario
CREATE TABLE IF NOT EXISTS Usuario (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  rol ENUM('Dueno', 'Gerente', 'Encargado'),
  contrasena VARCHAR(100) NOT NULL
);

-- Crear la tabla Gerente
CREATE TABLE IF NOT EXISTS Gerente (
  id_gerente INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

-- Crear la tabla Encargado
CREATE TABLE IF NOT EXISTS Encargado (
  id_encargado INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

-- Crear la tabla Dueño (Dueno)
CREATE TABLE IF NOT EXISTS Dueno (
  id_dueno INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

-- Crear la tabla TipoGasto
CREATE TABLE IF NOT EXISTS TipoGasto (
  id_tipo_gasto INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL
);

-- Crear la tabla Venta
CREATE TABLE IF NOT EXISTS Venta (
  id_venta INT AUTO_INCREMENT PRIMARY KEY,
  tipo_venta VARCHAR(50) NOT NULL,
  fecha DATE NOT NULL,
  monto_total DECIMAL(10, 2) NOT NULL,
  detalle VARCHAR(255),
  gerente_id INT,
  usuario_id INT,
  FOREIGN KEY (gerente_id) REFERENCES Gerente(id_gerente) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (usuario_id) REFERENCES Usuario(id_usuario) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Crear la tabla Compra
CREATE TABLE IF NOT EXISTS Compra (
  id_compra INT AUTO_INCREMENT PRIMARY KEY,
  nro_compra INT NOT NULL,
  tipo_compra VARCHAR(50) NOT NULL,
  nombre VARCHAR(255) NOT NULL,
  monto_total DECIMAL(10, 2) NOT NULL,
  fecha_carga DATE NOT NULL,
  proveedor VARCHAR(100),
  detalle VARCHAR(255),
  tipo_pago VARCHAR(50),
  encargado_id INT,
  gerente_id INT,
  usuario_id INT,
  FOREIGN KEY (encargado_id) REFERENCES Encargado(id_encargado) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (gerente_id) REFERENCES Gerente(id_gerente) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (usuario_id) REFERENCES Usuario(id_usuario) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Crear la tabla Gasto
CREATE TABLE IF NOT EXISTS Gasto (
  id_gasto INT AUTO_INCREMENT PRIMARY KEY,
  monto DECIMAL(10, 2) NOT NULL,
  fecha DATE NOT NULL,
  detalle VARCHAR(255),
  tipo_pago VARCHAR(50),
  encargado_id INT,
  gerente_id INT,
  usuario_id INT,
  tipo_gasto_id INT,
  FOREIGN KEY (encargado_id) REFERENCES Encargado(id_encargado) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (gerente_id) REFERENCES Gerente(id_gerente) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (usuario_id) REFERENCES Usuario(id_usuario) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (tipo_gasto_id) REFERENCES TipoGasto(id_tipo_gasto) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Crear la tabla Reporte
CREATE TABLE IF NOT EXISTS Reporte (
  id_reporte INT AUTO_INCREMENT PRIMARY KEY,
  fecha_generacion DATE NOT NULL,
  monto_total_ventas DECIMAL(10, 2) NOT NULL,
  monto_total_gastos DECIMAL(10, 2) NOT NULL,
  monto_total_compras DECIMAL(10, 2) NOT NULL,
  indice_inflacion DECIMAL(5, 2),
  aumento_cipac DECIMAL(5, 2),
  rentabilidad DECIMAL(10, 2),
  dueno_id INT,
  gerente_id INT,
  FOREIGN KEY (dueno_id) REFERENCES Dueno(id_dueno) ON DELETE SET NULL ON UPDATE CASCADE,
  FOREIGN KEY (gerente_id) REFERENCES Gerente(id_gerente) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Crear la tabla Inflacion
CREATE TABLE IF NOT EXISTS Inflacion (
  id_inflacion INT AUTO_INCREMENT PRIMARY KEY,
  indice DECIMAL(5, 2) NOT NULL,
  fecha DATE NOT NULL,
  gerente_id INT,
  FOREIGN KEY (gerente_id) REFERENCES Gerente(id_gerente) ON DELETE SET NULL ON UPDATE CASCADE
);

-- Crear la tabla CIPAC
CREATE TABLE IF NOT EXISTS Cipac (
  id_cipac INT AUTO_INCREMENT PRIMARY KEY,
  porcentaje_aumento DECIMAL(5, 2) NOT NULL,
  fecha_aumento DATE NOT NULL,
  gerente_id INT,
  FOREIGN KEY (gerente_id) REFERENCES Gerente(id_gerente) ON DELETE SET NULL ON UPDATE CASCADE
);
ALTER TABLE Compra MODIFY encargado_id INT NULL;
ALTER TABLE Compra MODIFY gerente_id INT NULL;
ALTER TABLE Compra MODIFY usuario_id INT NULL;