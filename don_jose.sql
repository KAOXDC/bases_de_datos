--Tienda de don jose
CREATE DATABASE IF NOT EXISTS tienda_don_jose;


-- Creacion de tabla marca
CREATE TABLE IF NOT EXISTS marca (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

-- Creacion de tabla categoria
CREATE TABLE IF NOT EXISTS categoria (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL
) ENGINE=InnoDB;

-- Creacion de tabla producto
CREATE TABLE IF NOT EXISTS producto (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    precio INT UNSIGNED,
    cantidad INT UNSIGNED,
    estado BOOLEAN NOT NULL, 
    id_marca INT UNSIGNED NOT NULL,
    FOREIGN KEY (id_marca) REFERENCES marca(id) ON DELETE CASCADE
) ENGINE=InnoDB;

-- Creacion de tabla producto_categoria
CREATE TABLE IF NOT EXISTS producto_categoria (
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    id_producto INT UNSIGNED NOT NULL,
    id_categoria INT UNSIGNED NOT NULL,
    FOREIGN KEY (id_producto) REFERENCES producto(id) ON DELETE CASCADE,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id) ON DELETE CASCADE
) ENGINE=InnoDB;
