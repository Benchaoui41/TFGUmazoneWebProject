use ecommerceuma;
use ecommerceuma;
-- Borrar datos existentes
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE product;
TRUNCATE TABLE product_category;
TRUNCATE TABLE country;
TRUNCATE TABLE state;
SET FOREIGN_KEY_CHECKS = 1;

-- Insertar países
INSERT INTO country (code, name) VALUES
('ES', 'España'),
('FR', 'Francia'),
('IT', 'Italia'),
('DE', 'Alemania'),
('PT', 'Portugal'),
('GB', 'Reino Unido'),
('US', 'Estados Unidos'),
('AR', 'Argentina'),
('BR', 'Brasil'),
('MX', 'México');

-- Insertar estados
INSERT INTO state (name, country_id) VALUES
('Andalucía', 1),
('Cataluña', 1),
('Madrid', 1),
('Provence-Alpes-Côte d''Azur', 2),
('Île-de-France', 2),
('Lombardía', 3),
('Baviera', 4),
('Lisboa', 5),
('Inglaterra', 6),
('California', 7),
('Buenos Aires', 8),
('São Paulo', 9),
('Ciudad de México', 10);

-- Insertar categorías
INSERT INTO product_category(category_name) VALUES 
('Libros'),
('Apuntes'),
('Tech'),
('Moda'),
('Material'),
('Muebles'),
('Transporte'),
('Clases');



-- 1. Libros
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('BOOK-UMA-001', 'Cálculo I Stewart', 'Texto de Cálculo I, edición 8ª', 22.00, 'assets/images/products/Libros/cálculostewart.jpg', 1, 40, NOW(), NOW(), 1),
('BOOK-UMA-002', 'Manual Derecho Civil', 'Manual práctico derecho civil básico', 28.00, 'assets/images/products/Libros/derecho-civil.jpg', 1, 25, NOW(), NOW(), 1);

-- 2. Apuntes
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('APUN-UMA-001', 'Apuntes Economía II', 'Apuntes completos 60 páginas', 12.00, 'assets/images/products/Apuntes/economia.png', 1, 50, NOW(), NOW(), 2),
('APUN-UMA-002', 'Resumen Psicología', 'Resumen condensado de Psicología Social', 10.00, 'assets/images/products/Apuntes/psicologia.png', 1, 30, NOW(), NOW(), 2);

-- 3. Tech
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('TECH-LAP-001', 'Portátil Dell i5', 'Dell Latitude i5, 8GB, 256SSD', 450.00, 'assets/images/products/Tech/Portátil-Dell-i5.jpeg', 1, 5, NOW(), NOW(), 3),
('TECH-AUR-001', 'Auriculares Sony WH-CH520', 'Bluetooth, cancelación pasiva ruido', 55.00, 'assets/images/products/Tech/auriculares-sony.jpeg', 1, 15, NOW(), NOW(), 3);

-- 4. Moda
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('MODA-SUD-001', 'Sudadera UMA Azul', 'Sudadera oficial UMA, talla M', 30.00, 'assets/images/products/Moda/sudadera.jpg', 1, 60, NOW(), NOW(), 4),
('MODA-GOR-001', 'Gorra Universidad', 'Gorra con logo UMA, negra', 12.00, 'assets/images/products/Moda/gorra-universidad.jpeg', 1, 45, NOW(), NOW(), 4);

-- 5. Material
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('MATBOL-001', 'Pack Bolis Stabilo', '10 bolígrafos varios colores', 5.50, 'assets/images/products/Material/pack-bolis-stabilo.jpeg', 1, 120, NOW(), NOW(), 5),
('MATCAR-001', 'Carpeta 4 anillas', 'Carpeta clasificadora multifuncional', 4.00, 'assets/images/products/Material/carpeta-4-anillas.jpeg', 1, 90, NOW(), NOW(), 5);

-- 6. Muebles
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('MUEB-ESC-001', 'Mesa Estudio Plegable', 'Mesa compacta plegable 100x50cm', 50.00, 'assets/images/products/Muebles/mesa-estudio-plegable.jpeg', 1, 10, NOW(), NOW(), 6),
('MUEB-SIL-001', 'Silla Oficina', 'Silla giratoria acolchada', 65.00, 'assets/images/products/Muebles/silla-oficina.jpeg', 1, 8, NOW(), NOW(), 6);

-- 7. Transporte
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('TRANS-BIC-001', 'Bicicleta Urbana', 'Bici 28" con cesta delantera', 80.00, 'assets/images/products/Transporte/bicicleta-urbana.jpeg', 1, 7, NOW(), NOW(), 7),
('TRANS-PAT-001', 'Patinete Eléctrico', 'Patinete plegable 20 km autonomía', 230.00, 'assets/images/products/Transporte/patinete-eléctrico.jpeg', 1, 4, NOW(), NOW(), 7);

-- 8. Clases
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('CLASE-MAT-001', 'Clases Matemáticas', 'Clases particulares matemáticas ESO/Bach', 15.00, 'assets/images/products/Clases/clases-matemáticas.jpg', 1, 20, NOW(), NOW(), 8),
('CLASE-ING-001', 'Clases Inglés B2', 'Preparación exámenes inglés nivel B2', 18.00, 'assets/images/products/Clases/clases-inglés-B2.jpeg', 1, 15, NOW(), NOW(), 8),
('CLASE-MAT-001', '', 'Clases particulares matemáticas ESO/Bach', 15.00, 'assets/images/products/placeholder.png', 1, 20, NOW(), NOW(), 8),
('CLASE-ING-001', '', 'Preparación exámenes inglés nivel B2', 18.00, 'assets/images/products/placeholder.png', 1, 15, NOW(), NOW(), 8);
