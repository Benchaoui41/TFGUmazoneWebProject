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
('BOOK-UMA-001', 'Cálculo Diferencial I', 'Libro fundamental para cursos de cálculo diferencial e integral. Presenta teoría, ejemplos y ejercicios aplicados.', 22.00, 'assets/images/products/Libros/calculo-difrencial.webp', 1, 40, NOW(), NOW(), 1),
('BOOK-UMA-002', 'Física General Volumen I', 'Texto clásico para física general. Cubre mecánica, termodinámica y ondas con rigor y claridad pedagógica.', 25.50, 'assets/images/products/Libros/fisica-I.jpg', 1, 35, NOW(), NOW(), 1),
('BOOK-UMA-003', 'Álgebra Lineal Aplicada', 'Explica vectores, matrices y espacios vectoriales con ejemplos prácticos y aplicaciones en ingeniería y ciencia.', 27.00, 'assets/images/products/Libros/algebra.webp', 1, 30, NOW(), NOW(), 1),
('BOOK-UMA-004', 'Química General Básica', 'Introduce conceptos básicos de química. Ideal para estudiantes de ciencias y carreras de salud.', 29.99, 'assets/images/products/Libros/quimica.webp', 1, 20, NOW(), NOW(), 1),
('BOOK-UMA-005', 'El Universo en tu Mano', 'Divulgación científica amena que explica el cosmos, los agujeros negros y la relatividad con un lenguaje accesible.', 18.75, 'assets/images/products/Libros/universo.webp', 1, 50, NOW(), NOW(), 1),
('BOOK-UMA-006', 'Historia Breve del Tiempo', 'Stephen Hawking explora el origen del universo, el tiempo y los agujeros negros en un estilo claro y profundo.', 19.90, 'assets/images/products/Libros/historia.webp', 1, 45, NOW(), NOW(), 1),
('BOOK-UMA-007', 'Ecuaciones Diferenciales I', 'Desarrolla métodos para resolver ecuaciones diferenciales aplicadas a física, biología e ingeniería.', 23.40, 'assets/images/products/Libros/ecuacion-difrenciales.webp', 1, 25, NOW(), NOW(), 1),
('BOOK-UMA-008', 'Introducción a la Probabilidad', 'Presenta fundamentos de probabilidad con ejemplos sencillos y teoría sólida. Útil para matemáticas y estadística.', 26.80, 'assets/images/products/Libros/probabilidad.webp', 1, 15, NOW(), NOW(), 1);



-- 2. Apuntes
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('APUN-UMA-001', 'Apuntes Economía II', 'Apuntes completos 60 páginas', 12.00, 'assets/images/products/Apuntes/economia.png', 1, 50, NOW(), NOW(), 2),
('APUN-UMA-002', 'Resumen Psicología', 'Resumen condensado de Psicología Social', 10.00, 'assets/images/products/Apuntes/psicologia.png', 1, 30, NOW(), NOW(), 2),
('APUN-UMA-003', 'Apuntes Economía II (v2)', 'Segunda edición extendida', 13.00, 'assets/images/products/Apuntes/economia.png', 1, 40, NOW(), NOW(), 2),
('APUN-UMA-004', 'Resumen Psicología (v2)', 'Incluye casos prácticos', 11.00, 'assets/images/products/Apuntes/psicologia.png', 1, 35, NOW(), NOW(), 2),
('APUN-UMA-005', 'Apuntes Economía II (v3)', 'Versión con esquemas extras', 14.00, 'assets/images/products/Apuntes/economia.png', 1, 25, NOW(), NOW(), 2),
('APUN-UMA-006', 'Resumen Psicología (v3)', 'Añade resumen ejecutivo', 9.00, 'assets/images/products/Apuntes/psicologia.png', 1, 50, NOW(), NOW(), 2),
('APUN-UMA-007', 'Apuntes Economía II (v4)', 'Edición actualizada', 10.00, 'assets/images/products/Apuntes/economia.png', 1, 30, NOW(), NOW(), 2),
('APUN-UMA-008', 'Resumen Psicología (v4)', 'Incluye glosario', 12.00, 'assets/images/products/Apuntes/psicologia.png', 1, 28, NOW(), NOW(), 2);

-- 3. Tech
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('TECH-LAP-001', 'Portátil Dell i5', 'Dell Latitude i5, 8GB, 256SSD', 450.00, 'assets/images/products/Tech/Portátil-Dell-i5.jpeg', 1, 5, NOW(), NOW(), 3),
('TECH-AUR-001', 'Auriculares Sony WH-CH520', 'Bluetooth, cancelación pasiva ruido', 55.00, 'assets/images/products/Tech/auriculares-sony.jpeg', 1, 15, NOW(), NOW(), 3),
('TECH-LAP-002', 'Portátil Dell i5 (v2)', 'Edición mejorada', 460.00, 'assets/images/products/Tech/Portátil-Dell-i5.jpeg', 1, 4, NOW(), NOW(), 3),
('TECH-AUR-002', 'Auriculares Sony (v2)', 'Incluye estuche de viaje', 60.00, 'assets/images/products/Tech/auriculares-sony.jpeg', 1, 14, NOW(), NOW(), 3),
('TECH-LAP-003', 'Portátil Dell i5 (v3)', 'Nuevo procesador', 470.00, 'assets/images/products/Tech/Portátil-Dell-i5.jpeg', 1, 3, NOW(), NOW(), 3),
('TECH-AUR-003', 'Auriculares Sony (v3)', 'Versión con micrófono', 58.00, 'assets/images/products/Tech/auriculares-sony.jpeg', 1, 13, NOW(), NOW(), 3),
('TECH-LAP-004', 'Portátil Dell i5 (v4)', 'Edición ligera', 480.00, 'assets/images/products/Tech/Portátil-Dell-i5.jpeg', 1, 2, NOW(), NOW(), 3),
('TECH-AUR-004', 'Auriculares Sony (v4)', 'Color alternativo', 62.00, 'assets/images/products/Tech/auriculares-sony.jpeg', 1, 12, NOW(), NOW(), 3);

-- 4. Moda
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('MODA-SUD-001', 'Sudadera UMA Azul', 'Sudadera oficial UMA, talla M', 30.00, 'assets/images/products/Moda/sudadera.jpg', 1, 60, NOW(), NOW(), 4),
('MODA-GOR-001', 'Gorra Universidad', 'Gorra con logo UMA, negra', 12.00, 'assets/images/products/Moda/gorra-universidad.jpeg', 1, 45, NOW(), NOW(), 4),
('MODA-SUD-002', 'Sudadera UMA Azul (v2)', 'Edición verano', 32.00, 'assets/images/products/Moda/sudadera.jpg', 1, 55, NOW(), NOW(), 4),
('MODA-GOR-002', 'Gorra Universidad (v2)', 'Color gris', 13.00, 'assets/images/products/Moda/gorra-universidad.jpeg', 1, 40, NOW(), NOW(), 4),
('MODA-SUD-003', 'Sudadera UMA Azul (v3)', 'Capucha extraíble', 35.00, 'assets/images/products/Moda/sudadera.jpg', 1, 50, NOW(), NOW(), 4),
('MODA-GOR-003', 'Gorra Universidad (v3)', 'Con visera curva', 14.00, 'assets/images/products/Moda/gorra-universidad.jpeg', 1, 35, NOW(), NOW(), 4),
('MODA-SUD-004', 'Sudadera UMA Azul (v4)', 'Edición premium', 38.00, 'assets/images/products/Moda/sudadera.jpg', 1, 45, NOW(), NOW(), 4),
('MODA-GOR-004', 'Gorra Universidad (v4)', 'Logo bordado', 15.00, 'assets/images/products/Moda/gorra-universidad.jpeg', 1, 30, NOW(), NOW(), 4);

-- 5. Material
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('MATBOL-001', 'Pack Bolis Stabilo', '10 bolígrafos varios colores', 5.50, 'assets/images/products/Material/pack-bolis-stabilo.jpeg', 1, 120, NOW(), NOW(), 5),
('MATCAR-001', 'Carpeta 4 anillas', 'Carpeta clasificadora multifuncional', 4.00, 'assets/images/products/Material/carpeta-4-anillas.jpeg', 1, 90, NOW(), NOW(), 5),
('MATBOL-002', 'Pack Bolis Stabilo (v2)', 'Bolígrafos con punta fina', 6.00, 'assets/images/products/Material/pack-bolis-stabilo.jpeg', 1, 110, NOW(), NOW(), 5),
('MATCAR-002', 'Carpeta 4 anillas (v2)', 'Carpeta con cierre', 5.00, 'assets/images/products/Material/carpeta-4-anillas.jpeg', 1, 85, NOW(), NOW(), 5),
('MATBOL-003', 'Pack Bolis Stabilo (v3)', 'Colores pastel', 5.75, 'assets/images/products/Material/pack-bolis-stabilo.jpeg', 1, 100, NOW(), NOW(), 5),
('MATCAR-003', 'Carpeta 4 anillas (v3)', 'Material resistente', 4.50, 'assets/images/products/Material/carpeta-4-anillas.jpeg', 1, 80, NOW(), NOW(), 5),
('MATBOL-004', 'Pack Bolis Stabilo (v4)', 'Paquete económico', 5.00, 'assets/images/products/Material/pack-bolis-stabilo.jpeg', 1, 95, NOW(), NOW(), 5),
('MATCAR-004', 'Carpeta 4 anillas (v4)', 'Incluye separadores', 4.25, 'assets/images/products/Material/carpeta-4-anillas.jpeg', 1, 75, NOW(), NOW(), 5);

-- 6. Muebles
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('MUEB-ESC-001', 'Mesa Estudio Plegable', 'Mesa compacta plegable 100x50cm', 50.00, 'assets/images/products/Muebles/mesa-estudio-plegable.jpeg', 1, 10, NOW(), NOW(), 6),
('MUEB-SIL-001', 'Silla Oficina', 'Silla giratoria acolchada', 65.00, 'assets/images/products/Muebles/silla-oficina.jpeg', 1, 8, NOW(), NOW(), 6),
('MUEB-ESC-002', 'Mesa Estudio Plegable (v2)', 'Tamaño ampliado', 55.00, 'assets/images/products/Muebles/mesa-estudio-plegable.jpeg', 1, 9, NOW(), NOW(), 6),
('MUEB-SIL-002', 'Silla Oficina (v2)', 'Con reposabrazos', 70.00, 'assets/images/products/Muebles/silla-oficina.jpeg', 1, 7, NOW(), NOW(), 6),
('MUEB-ESC-003', 'Mesa Estudio Plegable (v3)', 'Material resistente', 52.00, 'assets/images/products/Muebles/mesa-estudio-plegable.jpeg', 1, 8, NOW(), NOW(), 6),
('MUEB-SIL-003', 'Silla Oficina (v3)', 'Tapizado de cuero', 68.00, 'assets/images/products/Muebles/silla-oficina.jpeg', 1, 6, NOW(), NOW(), 6),
('MUEB-ESC-004', 'Mesa Estudio Plegable (v4)', 'Edición especial', 58.00, 'assets/images/products/Muebles/mesa-estudio-plegable.jpeg', 1, 7, NOW(), NOW(), 6),
('MUEB-SIL-004', 'Silla Oficina (v4)', 'Base reforzada', 72.00, 'assets/images/products/Muebles/silla-oficina.jpeg', 1, 5, NOW(), NOW(), 6);

-- 7. Transporte
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('TRANS-BIC-001', 'Bicicleta Urbana', 'Bici 28" con cesta delantera', 80.00, 'assets/images/products/Transporte/bicicleta-urbana.jpeg', 1, 7, NOW(), NOW(), 7),
('TRANS-PAT-001', 'Patinete Eléctrico', 'Patinete plegable 20 km autonomía', 230.00, 'assets/images/products/Transporte/patinete-eléctrico.jpeg', 1, 4, NOW(), NOW(), 7),
('TRANS-BIC-002', 'Bicicleta Urbana (v2)', 'Con luces LED', 85.00, 'assets/images/products/Transporte/bicicleta-urbana.jpeg', 1, 6, NOW(), NOW(), 7),
('TRANS-PAT-002', 'Patinete Eléctrico (v2)', 'Con freno de disco', 240.00, 'assets/images/products/Transporte/patinete-eléctrico.jpeg', 1, 3, NOW(), NOW(), 7),
('TRANS-BIC-003', 'Bicicleta Urbana (v3)', 'Marco reforzado', 90.00, 'assets/images/products/Transporte/bicicleta-urbana.jpeg', 1, 5, NOW(), NOW(), 7),
('TRANS-PAT-003', 'Patinete Eléctrico (v3)', 'Mayor autonomía', 250.00, 'assets/images/products/Transporte/patinete-eléctrico.jpeg', 1, 2, NOW(), NOW(), 7),
('TRANS-BIC-004', 'Bicicleta Urbana (v4)', 'Modelo deportivo', 95.00, 'assets/images/products/Transporte/bicicleta-urbana.jpeg', 1, 4, NOW(), NOW(), 7),
('TRANS-PAT-004', 'Patinete Eléctrico (v4)', 'Versión ligera', 260.00, 'assets/images/products/Transporte/patinete-eléctrico.jpeg', 1, 1, NOW(), NOW(), 7);

-- 8. Clases
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('CLASE-MAT-001', 'Clases Matemáticas', 'Clases particulares matemáticas ESO/Bach', 15.00, 'assets/images/products/Clases/clases-matemáticas.jpg', 1, 20, NOW(), NOW(), 8),
('CLASE-ING-001', 'Clases Inglés B2', 'Preparación exámenes inglés nivel B2', 18.00, 'assets/images/products/Clases/clases-inglés-B2.jpeg', 1, 15, NOW(), NOW(), 8),
('CLASE-MAT-002', 'Clases Matemáticas (v2)', 'Sesiones intensivas', 16.00, 'assets/images/products/Clases/clases-matemáticas.jpg', 1, 18, NOW(), NOW(), 8),
('CLASE-ING-002', 'Clases Inglés B2 (v2)', 'Incluye práctica oral', 19.00, 'assets/images/products/Clases/clases-inglés-B2.jpeg', 1, 14, NOW(), NOW(), 8),
('CLASE-MAT-003', 'Clases Matemáticas (v3)', 'Repaso examen final', 14.00, 'assets/images/products/Clases/clases-matemáticas.jpg', 1, 16, NOW(), NOW(), 8),
('CLASE-ING-003', 'Clases Inglés B2 (v3)', 'Clases online', 17.00, 'assets/images/products/Clases/clases-inglés-B2.jpeg', 1, 13, NOW(), NOW(), 8),
('CLASE-MAT-004', 'Clases Matemáticas (v4)', 'Tutorías personalizadas', 18.00, 'assets/images/products/Clases/clases-matemáticas.jpg', 1, 15, NOW(), NOW(), 8),
('CLASE-ING-004', 'Clases Inglés B2 (v4)', 'Material adicional', 20.00, 'assets/images/products/Clases/clases-inglés-B2.jpeg', 1, 12, NOW(), NOW(), 8);
