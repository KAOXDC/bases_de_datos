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

-- CRUD

-- CREATE

-- Inserciones para la tabla 'marca'
INSERT INTO marca (nombre) VALUES
    ('Colgate'),
    ('P&G'),
    ('Unilever'),
    ('Coca-Cola'),
    ('Pepsi'),
    ('Nestlé'),
    ('Kellogg''s'),
    ('Natura'),
    ('Johnson & Johnson'),
    ('L''Oréal');

-- Inserciones para la tabla 'categoria'
INSERT INTO categoria (nombre) VALUES
    ('Cuidado Personal'),
    ('Higiene'),
    ('Bebidas'),
    ('Alimentos'),
    ('Cuidado del Hogar'),
    ('Belleza'),
    ('Farmacia'),
    ('Limpieza'),
    ('Infantil'),
    ('Mascotas');

-- Inserciones para la tabla 'producto'
INSERT INTO producto (nombre, precio, cantidad, estado, id_marca) VALUES
    ('Cepillo de dientes', 3500, 50, TRUE, 1),
    ('Pasta dental', 5000, 132, TRUE, 1),
    ('Jabón de baño', 1200, 100, TRUE, 2),
    ('Shampoo', 24500, 80, TRUE, 3),
    ('Acondicionador', 10500, 0, FALSE, 3),
    ('Refresco', 6000, 70, TRUE, 4),
    ('Agua mineral', 5000, 100, TRUE, 5),
    ('Cereal', 15500, 100, TRUE, 7),
    ('Maquillaje', 79000, 0, FALSE, 8),
    ('Crema hidratante', 52000, 0, TRUE, 9);

-- Inserciones para la tabla 'producto_categoria'
INSERT INTO producto_categoria (id_producto, id_categoria) VALUES
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 1),
    (5, 1),
    (6, 3),
    (7, 3),
    (8, 4),
    (9, 6),
    (10, 6),
    (1, 8),
    (2, 8),
    (3, 8),
    (4, 8),
    (5, 8),
    (6, 8),
    (7, 8),
    (8, 8),
    (9, 8),
    (10, 8),
    (1, 10),
    (2, 10),
    (3, 10),
    (4, 10),
    (5, 10),
    (6, 10),
    (7, 10),
    (8, 10),
    (9, 10),
    (10, 10),
    (1, 7),
    (2, 7),
    (3, 7),
    (4, 7),
    (5, 7),
    (6, 7),
    (7, 7),
    (8, 7),
    (9, 7),
    (10, 7),
    (1, 5),
    (2, 5),
    (3, 5),
    (4, 5),
    (5, 5),
    (6, 5),
    (7, 5),
    (8, 5),
    (9, 5),
    (10, 5);
