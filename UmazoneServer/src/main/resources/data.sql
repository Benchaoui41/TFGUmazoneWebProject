-- Borrar datos existentes
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE product;
TRUNCATE TABLE product_category;
SET FOREIGN_KEY_CHECKS = 1;

-- Insertar categorías
INSERT INTO product_category(category_name) VALUES 
 ('Books'),
('Coffee Mugs'),
('📚 Libros y Apuntes'),
('💻 Tecnología'),
('🖊️ Material de Oficina y Papelería'),
('👕 Ropa y Complementos'),
('🎮 Ocio y Entretenimiento'),
('🪑 Muebles y Decoración'),
('🏠 Ofertas de Alojamiento'),
('🚲 Bicicletas y Transporte'),
('🎟️ Entradas y Eventos'),
('🍳 Electrodomésticos y Cocina'),
('🐾 Mascotas y Accesorios'),
('🏋️ Deporte y Aire Libre'),
('📸 Fotografía y Audiovisual'),
('💼 Servicios'),
('♻️ Artículos de Segunda Mano');

-- Insertar productos - Books
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('BOOK-TECH-1000', 'JavaScript - The Fun Parts', 'Learn JavaScript Programming with hands-on examples', 19.99, 'assets/images/products/books/book-luv2code-1000.png', 1, 100, NOW(), NOW(), 1),
('BOOK-TECH-1001', 'Spring Framework Tutorial', 'Learn Spring with practical step by step code examples', 29.99, 'assets/images/products/books/book-luv2code-1001.png', 1, 100, NOW(), NOW(), 1),
('BOOK-TECH-1002', 'Python Programming for Beginners', 'Learn Python Programming with examples', 24.99, 'assets/images/products/books/book-luv2code-1002.png', 1, 100, NOW(), NOW(), 1),
('BOOK-TECH-1003', 'Docker and Kubernetes Guide', 'Master containerization with Docker and Kubernetes', 34.99, 'assets/images/products/books/book-luv2code-1003.png', 1, 100, NOW(), NOW(), 1);

-- Insertar productos - Coffee Mugs
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('COFFEEMUG-1000', 'Coffee Mug - Express', 'Do you love mathematics? This coffee mug has a unique design', 18.99, 'assets/images/products/coffeemugs/coffeemug-luv2code-1000.png', 1, 100, NOW(), NOW(), 2),
('COFFEEMUG-1001', 'Coffee Mug - Cherokee', 'Coffee Mug with a modern design', 18.99, 'assets/images/products/coffeemugs/coffeemug-luv2code-1001.png', 1, 100, NOW(), NOW(), 2),
('COFFEEMUG-1002', 'Coffee Mug - Developer', 'For the coding developer in you!', 18.99, 'assets/images/products/coffeemugs/coffeemug-luv2code-1002.png', 1, 100, NOW(), NOW(), 2),
('COFFEEMUG-1003', 'Coffee Mug - Coder', 'Unique coffee mug for programmers', 18.99, 'assets/images/products/coffeemugs/coffeemug-luv2code-1003.png', 1, 100, NOW(), NOW(), 2);

-- Insertar productos - Libros y Apuntes (ID: 3)
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('LIBRO-APUN-001', 'Apuntes Cálculo I', 'Apuntes completos de Cálculo I, segunda mano', 15.50, 'assets/images/products/placeholder.png', 1, 50, NOW(), NOW(), 3),
('LIBRO-MANUAL-001', 'Manual de Álgebra Lineal', 'Manual de texto para Álgebra Lineal', 25.00, 'assets/images/products/placeholder.png', 1, 30, NOW(), NOW(), 3);

-- Insertar productos - Tecnología (ID: 4)
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('TEC-PORTATIL-001', 'Portátil HP Pavilion', 'Portátil de segunda mano, i5, 8GB RAM', 350.00, 'assets/images/products/placeholder.png', 1, 5, NOW(), NOW(), 4),
('TEC-MOVIL-001', 'iPhone X Usado', 'iPhone X 64GB en buen estado', 280.00, 'assets/images/products/placeholder.png', 1, 10, NOW(), NOW(), 4);

-- Insertar productos - Material de Oficina y Papelería (ID: 5)
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('PAPEL-AGENDA-001', 'Agenda Académica 2025-26', 'Agenda semana vista', 8.99, 'assets/images/products/placeholder.png', 1, 100, NOW(), NOW(), 5),
('PAPEL-CARPETA-001', 'Carpeta Anillas', 'Carpeta clasificadora de 4 anillas', 3.50, 'assets/images/products/placeholder.png', 1, 200, NOW(), NOW(), 5);

-- Insertar productos - Ropa y Complementos (ID: 6)
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('ROPA-SUDADERA-001', 'Sudadera UMA', 'Sudadera oficial de la Universidad de Málaga', 29.95, 'assets/images/products/placeholder.png', 1, 75, NOW(), NOW(), 6),
('ROPA-CAMISETA-001', 'Camiseta Básica', 'Camiseta de algodón de segunda mano', 5.00, 'assets/images/products/placeholder.png', 1, 40, NOW(), NOW(), 6);

-- Insertar productos - Ocio y Entretenimiento (ID: 7)
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('OCIO-CONSOLA-001', 'PlayStation 4 Slim', 'Consola PS4 Slim 500GB usada', 180.00, 'assets/images/products/placeholder.png', 1, 3, NOW(), NOW(), 7),
('OCIO-JUEGO-001', 'Juego de Mesa Catan', 'Juego de estrategia Catan', 30.00, 'assets/images/products/placeholder.png', 1, 20, NOW(), NOW(), 7);

-- Insertar productos - Muebles y Decoración (ID: 8)
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('MUEBLE-ESCRIT-001', 'Escritorio Estudiante', 'Escritorio básico para habitación', 45.00, 'assets/images/products/placeholder.png', 1, 15, NOW(), NOW(), 8),
('MUEBLE-SILLA-001', 'Silla Oficina Ergonómica', 'Silla de escritorio ajustable', 60.00, 'assets/images/products/placeholder.png', 1, 10, NOW(), NOW(), 8);

-- Insertar productos - Ofertas de Alojamiento (ID: 9) - Nota: Estos son ejemplos, la lógica real podría variar
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('ALOJA-HABIT-001', 'Habitación Teatinos', 'Se alquila habitación en piso compartido', 300.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9),
('ALOJA-COMPA-001', 'Busco Compañero/a Piso', 'Busco compañero para piso céntrico', 0.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9);

-- Insertar productos - Bicicletas y Transporte (ID: 10)
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('TRANS-BICI-001', 'Bicicleta Montaña', 'Bicicleta de montaña usada, buen estado', 90.00, 'assets/images/products/placeholder.png', 1, 8, NOW(), NOW(), 10),
('TRANS-PATIN-001', 'Patinete Eléctrico Xiaomi', 'Patinete eléctrico plegable', 250.00, 'assets/images/products/placeholder.png', 1, 4, NOW(), NOW(), 10);

-- Insertar productos - Entradas y Eventos (ID: 11)
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('EVENT-CONCIERTO-001', 'Entrada Concierto Indie', 'Vendo entrada para concierto', 25.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11);

-- Insertar productos - Electrodomésticos y Cocina (ID: 12)
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('ELECTRO-MICRO-001', 'Microondas Balay', 'Microondas de segunda mano', 35.00, 'assets/images/products/placeholder.png', 1, 12, NOW(), NOW(), 12),
('ELECTRO-CAFE-001', 'Cafetera Nespresso', 'Cafetera de cápsulas usada', 40.00, 'assets/images/products/placeholder.png', 1, 7, NOW(), NOW(), 12);

-- Insertar productos - Mascotas y Accesorios (ID: 13)
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('MASCOTA-ADOP-001', 'Gatito en Adopción', 'Se busca hogar para gatito de 2 meses', 0.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 13),
('MASCOTA-ACCES-001', 'Rascador Gato', 'Rascador para gatos poco usado', 15.00, 'assets/images/products/placeholder.png', 1, 5, NOW(), NOW(), 13);

-- Insertar productos - Deporte y Aire Libre (ID: 14)
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('DEPORTE-PESAS-001', 'Juego Mancuernas', 'Set de mancuernas ajustables', 50.00, 'assets/images/products/placeholder.png', 1, 6, NOW(), NOW(), 14),
('DEPORTE-CAMPING-001', 'Saco de Dormir', 'Saco de dormir para 3 estaciones', 25.00, 'assets/images/products/placeholder.png', 1, 10, NOW(), NOW(), 14);

-- Insertar productos - Fotografía y Audiovisual (ID: 15)
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('FOTO-CAMARA-001', 'Cámara Réflex Canon EOS', 'Cámara réflex con objetivo 18-55mm', 300.00, 'assets/images/products/placeholder.png', 1, 2, NOW(), NOW(), 15);

-- Insertar productos - Servicios (ID: 16)
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('SERV-CLASES-001', 'Clases Particulares Matemáticas', 'Ofrezco clases particulares de matemáticas', 12.00, 'assets/images/products/placeholder.png', 1, 10, NOW(), NOW(), 16), -- Precio por hora
('SERV-TFG-001', 'Ayuda con TFG/TFM', 'Asesoramiento y revisión de trabajos', 20.00, 'assets/images/products/placeholder.png', 1, 5, NOW(), NOW(), 16); -- Precio por hora/servicio

-- Insertar productos - Artículos de Segunda Mano (ID: 17)
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('SEGUNDA-VARIOS-001', 'Lote Ropa Variada', 'Lote de ropa talla M', 20.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17),
('SEGUNDA-LIBRO-001', 'Novela Histórica', 'Libro de segunda mano en buen estado', 6.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17);

-- Insertar 18 productos adicionales - Libros y Apuntes (ID: 3) - Total 20
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('LIBRO-APUN-002', 'Apuntes Química Orgánica', 'Apuntes completos y resúmenes', 18.00, 'assets/images/products/placeholder.png', 1, 45, NOW(), NOW(), 3),
('LIBRO-MANUAL-002', 'Manual de Física I', 'Libro de texto recomendado', 30.00, 'assets/images/products/placeholder.png', 1, 25, NOW(), NOW(), 3),
('LIBRO-APUN-003', 'Resúmenes Estadística', 'Fórmulas y ejemplos clave', 12.50, 'assets/images/products/placeholder.png', 1, 60, NOW(), NOW(), 3),
('LIBRO-MANUAL-003', 'Introducción a la Economía', 'Manual básico', 22.00, 'assets/images/products/placeholder.png', 1, 35, NOW(), NOW(), 3),
('LIBRO-APUN-004', 'Apuntes Derecho Romano', 'Esquemas y casos prácticos', 20.00, 'assets/images/products/placeholder.png', 1, 40, NOW(), NOW(), 3),
('LIBRO-MANUAL-004', 'Biología Celular', 'Texto fundamental', 35.00, 'assets/images/products/placeholder.png', 1, 20, NOW(), NOW(), 3),
('LIBRO-APUN-005', 'Notas de Programación Java', 'Ejercicios resueltos', 16.00, 'assets/images/products/placeholder.png', 1, 55, NOW(), NOW(), 3),
('LIBRO-MANUAL-005', 'Historia Contemporánea', 'Manual universitario', 28.00, 'assets/images/products/placeholder.png', 1, 28, NOW(), NOW(), 3),
('LIBRO-APUN-006', 'Apuntes Marketing Digital', 'Conceptos y estrategias', 19.50, 'assets/images/products/placeholder.png', 1, 50, NOW(), NOW(), 3),
('LIBRO-MANUAL-006', 'Psicología Social', 'Manual introductorio', 26.50, 'assets/images/products/placeholder.png', 1, 32, NOW(), NOW(), 3),
('LIBRO-APUN-007', 'Esquemas Filosofía Antigua', 'Principales autores y corrientes', 14.00, 'assets/images/products/placeholder.png', 1, 65, NOW(), NOW(), 3),
('LIBRO-MANUAL-007', 'Termodinámica Aplicada', 'Libro de problemas resueltos', 32.00, 'assets/images/products/placeholder.png', 1, 22, NOW(), NOW(), 3),
('LIBRO-APUN-008', 'Apuntes Anatomía Humana', 'Láminas y descripciones', 24.00, 'assets/images/products/placeholder.png', 1, 38, NOW(), NOW(), 3),
('LIBRO-MANUAL-008', 'Fundamentos de Redes', 'Teoría y práctica', 29.50, 'assets/images/products/placeholder.png', 1, 26, NOW(), NOW(), 3),
('LIBRO-APUN-009', 'Notas Contabilidad Financiera', 'Ejercicios y balances', 17.50, 'assets/images/products/placeholder.png', 1, 52, NOW(), NOW(), 3),
('LIBRO-MANUAL-009', 'Geografía Física', 'Manual completo', 27.00, 'assets/images/products/placeholder.png', 1, 30, NOW(), NOW(), 3),
('LIBRO-APUN-010', 'Resúmenes Historia del Arte', 'Principales épocas y estilos', 21.00, 'assets/images/products/placeholder.png', 1, 42, NOW(), NOW(), 3),
('LIBRO-MANUAL-010', 'Mecánica de Fluidos', 'Texto avanzado', 38.00, 'assets/images/products/placeholder.png', 1, 18, NOW(), NOW(), 3);

-- Insertar 18 productos adicionales - Tecnología (ID: 4) - Total 20
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('TEC-TABLET-001', 'Tablet Samsung Galaxy Tab A', 'Tablet 10 pulgadas, usada', 150.00, 'assets/images/products/placeholder.png', 1, 8, NOW(), NOW(), 4),
('TEC-ACCES-001', 'Ratón Inalámbrico Logitech', 'Ratón ergonómico', 25.00, 'assets/images/products/placeholder.png', 1, 50, NOW(), NOW(), 4),
('TEC-PORTATIL-002', 'MacBook Air M1', 'Chip M1, 8GB RAM, 256GB SSD', 850.00, 'assets/images/products/placeholder.png', 1, 3, NOW(), NOW(), 4),
('TEC-MOVIL-002', 'Xiaomi Redmi Note 10', 'Móvil gama media, buen estado', 160.00, 'assets/images/products/placeholder.png', 1, 15, NOW(), NOW(), 4),
('TEC-ACCES-002', 'Teclado Mecánico Gaming', 'Teclado retroiluminado', 65.00, 'assets/images/products/placeholder.png', 1, 20, NOW(), NOW(), 4),
('TEC-TABLET-002', 'iPad Air 4ª Gen', 'iPad Air 64GB Wi-Fi', 450.00, 'assets/images/products/placeholder.png', 1, 6, NOW(), NOW(), 4),
('TEC-ACCES-003', 'Auriculares Bluetooth Sony', 'Cancelación de ruido', 90.00, 'assets/images/products/placeholder.png', 1, 30, NOW(), NOW(), 4),
('TEC-PORTATIL-003', 'Lenovo IdeaPad 3', 'Portátil básico, Celeron, 4GB RAM', 250.00, 'assets/images/products/placeholder.png', 1, 7, NOW(), NOW(), 4),
('TEC-MOVIL-003', 'Samsung Galaxy S21', 'Gama alta, 128GB', 550.00, 'assets/images/products/placeholder.png', 1, 4, NOW(), NOW(), 4),
('TEC-ACCES-004', 'Monitor 24 pulgadas Full HD', 'Monitor para PC', 120.00, 'assets/images/products/placeholder.png', 1, 25, NOW(), NOW(), 4),
('TEC-TABLET-003', 'Amazon Fire HD 8', 'Tablet económica', 80.00, 'assets/images/products/placeholder.png', 1, 12, NOW(), NOW(), 4),
('TEC-ACCES-005', 'Webcam HD Logitech C920', 'Webcam para videollamadas', 55.00, 'assets/images/products/placeholder.png', 1, 40, NOW(), NOW(), 4),
('TEC-PORTATIL-004', 'Dell XPS 13', 'Ultrabook premium, i7', 950.00, 'assets/images/products/placeholder.png', 1, 2, NOW(), NOW(), 4),
('TEC-MOVIL-004', 'OnePlus Nord 2', 'Buen rendimiento y cámara', 320.00, 'assets/images/products/placeholder.png', 1, 9, NOW(), NOW(), 4),
('TEC-ACCES-006', 'Disco Duro Externo 1TB', 'WD Elements', 50.00, 'assets/images/products/placeholder.png', 1, 60, NOW(), NOW(), 4),
('TEC-TABLET-004', 'Huawei MatePad 10.4', 'Tablet con buen rendimiento', 220.00, 'assets/images/products/placeholder.png', 1, 10, NOW(), NOW(), 4),
('TEC-ACCES-007', 'Altavoz Bluetooth JBL Flip 5', 'Altavoz portátil resistente al agua', 85.00, 'assets/images/products/placeholder.png', 1, 35, NOW(), NOW(), 4),
('TEC-PORTATIL-005', 'Acer Aspire 5', 'Portátil equilibrado, Ryzen 5', 480.00, 'assets/images/products/placeholder.png', 1, 6, NOW(), NOW(), 4);

-- Insertar 18 productos adicionales - Material de Oficina y Papelería (ID: 5) - Total 20
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('PAPEL-BOLI-001', 'Pack Bolígrafos BIC Cristal', '10 bolígrafos (azul, negro, rojo)', 4.50, 'assets/images/products/placeholder.png', 1, 300, NOW(), NOW(), 5),
('PAPEL-CUADERNO-001', 'Cuaderno A4 Tapa Dura', 'Cuadrícula 5mm', 2.80, 'assets/images/products/placeholder.png', 1, 250, NOW(), NOW(), 5),
('PAPEL-SUBRAYADOR-001', 'Set Subrayadores Stabilo Boss', 'Pack 4 colores pastel', 5.90, 'assets/images/products/placeholder.png', 1, 150, NOW(), NOW(), 5),
('PAPEL-POSTIT-001', 'Notas Adhesivas Post-it', 'Bloc 100 hojas amarillo', 1.50, 'assets/images/products/placeholder.png', 1, 400, NOW(), NOW(), 5),
('PAPEL-TIJERAS-001', 'Tijeras Oficina', 'Tijeras multiuso', 3.00, 'assets/images/products/placeholder.png', 1, 180, NOW(), NOW(), 5),
('PAPEL-GRAPADORA-001', 'Grapadora Petrus 226', 'Grapadora de sobremesa', 9.50, 'assets/images/products/placeholder.png', 1, 80, NOW(), NOW(), 5),
('PAPEL-FOLIOS-001', 'Paquete 500 Folios A4', 'Papel blanco 80gr', 4.99, 'assets/images/products/placeholder.png', 1, 120, NOW(), NOW(), 5),
('PAPEL-ROTULADOR-001', 'Rotuladores Permanentes Sharpie', 'Pack 3 (negro, azul, rojo)', 4.20, 'assets/images/products/placeholder.png', 1, 160, NOW(), NOW(), 5),
('PAPEL-CALCULADORA-001', 'Calculadora Científica Casio', 'Modelo FX-82MS', 14.90, 'assets/images/products/placeholder.png', 1, 70, NOW(), NOW(), 5),
('PAPEL-ESTUCHE-001', 'Estuche Escolar Triple', 'Estuche con 3 compartimentos', 7.50, 'assets/images/products/placeholder.png', 1, 100, NOW(), NOW(), 5),
('PAPEL-PEGAMENTO-001', 'Pegamento Barra Pritt', 'Barra 43gr', 2.10, 'assets/images/products/placeholder.png', 1, 220, NOW(), NOW(), 5),
('PAPEL-REGLA-001', 'Regla Plástico 30cm', 'Regla transparente', 0.90, 'assets/images/products/placeholder.png', 1, 350, NOW(), NOW(), 5),
('PAPEL-ARCHIVADOR-001', 'Archivador Palanca A4', 'Archivador cartón', 3.20, 'assets/images/products/placeholder.png', 1, 140, NOW(), NOW(), 5),
('PAPEL-CORRECTOR-001', 'Corrector Líquido Tipp-Ex', 'Tipo bolígrafo', 2.50, 'assets/images/products/placeholder.png', 1, 190, NOW(), NOW(), 5),
('PAPEL-PORTAMINAS-001', 'Portaminas 0.7mm', 'Incluye minas', 3.80, 'assets/images/products/placeholder.png', 1, 130, NOW(), NOW(), 5),
('PAPEL-FUNDAS-001', 'Paquete 100 Fundas Plástico', 'Fundas multitaladro A4', 3.90, 'assets/images/products/placeholder.png', 1, 110, NOW(), NOW(), 5),
('PAPEL-PIZARRA-001', 'Pizarra Blanca Pequeña', 'Pizarra magnética 40x30cm', 12.00, 'assets/images/products/placeholder.png', 1, 60, NOW(), NOW(), 5),
('PAPEL-MARCADOR-001', 'Marcadores Pizarra Blanca', 'Pack 4 colores', 4.00, 'assets/images/products/placeholder.png', 1, 170, NOW(), NOW(), 5);

-- Insertar 18 productos adicionales - Ropa y Complementos (ID: 6) - Total 20
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('ROPA-PANTALON-001', 'Pantalón Vaquero Levi\'s 501', 'Segunda mano, talla 32/32', 25.00, 'assets/images/products/placeholder.png', 1, 15, NOW(), NOW(), 6),
('ROPA-GORRA-001', 'Gorra UMA', 'Gorra oficial azul marino', 12.95, 'assets/images/products/placeholder.png', 1, 90, NOW(), NOW(), 6),
('ROPA-VESTIDO-001', 'Vestido Verano Floral', 'Segunda mano, talla S', 10.00, 'assets/images/products/placeholder.png', 1, 25, NOW(), NOW(), 6),
('ROPA-BUFANDA-001', 'Bufanda Lana', 'Bufanda de invierno', 8.00, 'assets/images/products/placeholder.png', 1, 35, NOW(), NOW(), 6),
('ROPA-ZAPATILLAS-001', 'Zapatillas Converse All Star', 'Blancas, talla 39, usadas', 30.00, 'assets/images/products/placeholder.png', 1, 10, NOW(), NOW(), 6),
('ROPA-BOLSO-001', 'Bolso Tote Bag Tela', 'Bolsa reutilizable', 6.50, 'assets/images/products/placeholder.png', 1, 60, NOW(), NOW(), 6),
('ROPA-CHAQUETA-001', 'Chaqueta Vaquera', 'Segunda mano, talla M', 18.00, 'assets/images/products/placeholder.png', 1, 20, NOW(), NOW(), 6),
('ROPA-CINTURON-001', 'Cinturón Cuero Marrón', 'Cinturón clásico', 14.00, 'assets/images/products/placeholder.png', 1, 45, NOW(), NOW(), 6),
('ROPA-JERSEY-001', 'Jersey Punto Fino', 'Segunda mano, talla L', 12.00, 'assets/images/products/placeholder.png', 1, 30, NOW(), NOW(), 6),
('ROPA-MOCHILA-001', 'Mochila UMA', 'Mochila tipo saco', 9.95, 'assets/images/products/placeholder.png', 1, 80, NOW(), NOW(), 6),
('ROPA-FALDA-001', 'Falda Plisada Negra', 'Segunda mano, talla M', 9.00, 'assets/images/products/placeholder.png', 1, 28, NOW(), NOW(), 6),
('ROPA-GAFAS-001', 'Gafas de Sol Wayfarer', 'Estilo clásico', 15.00, 'assets/images/products/placeholder.png', 1, 50, NOW(), NOW(), 6),
('ROPA-POLO-001', 'Polo Lacoste', 'Segunda mano, talla S', 20.00, 'assets/images/products/placeholder.png', 1, 18, NOW(), NOW(), 6),
('ROPA-PAÑUELO-001', 'Pañuelo Estampado', 'Pañuelo de seda sintética', 7.00, 'assets/images/products/placeholder.png', 1, 40, NOW(), NOW(), 6),
('ROPA-BOTAS-001', 'Botas Dr. Martens', 'Negras, talla 40, usadas', 60.00, 'assets/images/products/placeholder.png', 1, 8, NOW(), NOW(), 6),
('ROPA-CARTERA-001', 'Cartera Piel Negra', 'Cartera billetera', 19.00, 'assets/images/products/placeholder.png', 1, 55, NOW(), NOW(), 6),
('ROPA-ABRIGO-001', 'Abrigo Lana Gris', 'Segunda mano, talla M', 35.00, 'assets/images/products/placeholder.png', 1, 12, NOW(), NOW(), 6),
('ROPA-RELOJ-001', 'Reloj Casio Vintage', 'Reloj digital dorado', 22.00, 'assets/images/products/placeholder.png', 1, 65, NOW(), NOW(), 6);

-- Insertar 18 productos adicionales - Ocio y Entretenimiento (ID: 7) - Total 20
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('OCIO-VIDEOJUEGO-001', 'Videojuego The Last of Us PS4', 'Juego de acción y aventura', 15.00, 'assets/images/products/placeholder.png', 1, 25, NOW(), NOW(), 7),
('OCIO-JUEGO-002', 'Juego de Mesa Dixit', 'Juego de cartas creativo', 28.00, 'assets/images/products/placeholder.png', 1, 18, NOW(), NOW(), 7),
('OCIO-CONSOLA-002', 'Nintendo Switch Lite', 'Turquesa, usada', 150.00, 'assets/images/products/placeholder.png', 1, 4, NOW(), NOW(), 7),
('OCIO-PUZZLE-001', 'Puzzle 1000 Piezas Paisaje', 'Puzzle panorámico', 12.00, 'assets/images/products/placeholder.png', 1, 30, NOW(), NOW(), 7),
('OCIO-VIDEOJUEGO-002', 'Videojuego FIFA 23 PS4', 'Simulador de fútbol', 20.00, 'assets/images/products/placeholder.png', 1, 35, NOW(), NOW(), 7),
('OCIO-JUEGO-003', 'Juego de Cartas Virus!', 'Juego rápido y divertido', 14.00, 'assets/images/products/placeholder.png', 1, 40, NOW(), NOW(), 7),
('OCIO-CONSOLA-003', 'Xbox One S 1TB', 'Consola con mando, usada', 160.00, 'assets/images/products/placeholder.png', 1, 2, NOW(), NOW(), 7),
('OCIO-LIBRO-001', 'Libro Juego de Tronos', 'Primer libro de la saga', 10.00, 'assets/images/products/placeholder.png', 1, 50, NOW(), NOW(), 7),
('OCIO-VIDEOJUEGO-003', 'Videojuego Mario Kart 8 Deluxe Switch', 'Juego de carreras', 45.00, 'assets/images/products/placeholder.png', 1, 15, NOW(), NOW(), 7),
('OCIO-JUEGO-004', 'Ajedrez de Madera', 'Tablero y piezas de madera', 22.00, 'assets/images/products/placeholder.png', 1, 22, NOW(), NOW(), 7),
('OCIO-INSTRUMENTO-001', 'Ukelele Soprano', 'Ukelele para principiantes', 35.00, 'assets/images/products/placeholder.png', 1, 12, NOW(), NOW(), 7),
('OCIO-PELICULA-001', 'Pack Blu-ray El Señor de los Anillos', 'Trilogía extendida', 40.00, 'assets/images/products/placeholder.png', 1, 10, NOW(), NOW(), 7),
('OCIO-VIDEOJUEGO-004', 'Videojuego Red Dead Redemption 2 PS4', 'Aventura western', 25.00, 'assets/images/products/placeholder.png', 1, 28, NOW(), NOW(), 7),
('OCIO-JUEGO-005', 'Juego de Mesa Risk', 'Juego de conquista mundial', 32.00, 'assets/images/products/placeholder.png', 1, 16, NOW(), NOW(), 7),
('OCIO-CONSOLA-004', 'Mando PS4 DualShock 4', 'Mando adicional negro', 40.00, 'assets/images/products/placeholder.png', 1, 9, NOW(), NOW(), 7),
('OCIO-COMIC-001', 'Cómic Watchmen', 'Novela gráfica aclamada', 18.00, 'assets/images/products/placeholder.png', 1, 45, NOW(), NOW(), 7),
('OCIO-VIDEOJUEGO-005', 'Videojuego Animal Crossing: New Horizons Switch', 'Simulador de vida', 40.00, 'assets/images/products/placeholder.png', 1, 14, NOW(), NOW(), 7),
('OCIO-JUEGO-006', 'Juego de Dardos Electrónico', 'Diana electrónica con dardos', 25.00, 'assets/images/products/placeholder.png', 1, 19, NOW(), NOW(), 7);

-- Insertar 18 productos adicionales - Muebles y Decoración (ID: 8) - Total 20
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('MUEBLE-LAMPARA-001', 'Lámpara de Escritorio LED', 'Luz flexible', 18.00, 'assets/images/products/placeholder.png', 1, 40, NOW(), NOW(), 8),
('MUEBLE-ESTANTERIA-001', 'Estantería Kallax IKEA 4x2', 'Blanca, usada', 30.00, 'assets/images/products/placeholder.png', 1, 8, NOW(), NOW(), 8),
('MUEBLE-DECO-001', 'Set 3 Cuadros Abstractos', 'Decoración pared', 25.00, 'assets/images/products/placeholder.png', 1, 20, NOW(), NOW(), 8),
('MUEBLE-PUFF-001', 'Puff Pera Gris', 'Asiento auxiliar cómodo', 35.00, 'assets/images/products/placeholder.png', 1, 12, NOW(), NOW(), 8),
('MUEBLE-ESPEJO-001', 'Espejo de Pared Grande', 'Marco madera, 60x90cm', 40.00, 'assets/images/products/placeholder.png', 1, 9, NOW(), NOW(), 8),
('MUEBLE-MESITA-001', 'Mesita de Noche Blanca', 'Con un cajón', 20.00, 'assets/images/products/placeholder.png', 1, 18, NOW(), NOW(), 8),
('MUEBLE-ALFOMBRA-001', 'Alfombra Salón Pelo Corto', 'Gris, 120x170cm', 50.00, 'assets/images/products/placeholder.png', 1, 7, NOW(), NOW(), 8),
('MUEBLE-CORTINAS-001', 'Cortinas Opacas Salón', 'Color beige, 140x260cm', 28.00, 'assets/images/products/placeholder.png', 1, 22, NOW(), NOW(), 8),
('MUEBLE-ZAPATERO-001', 'Zapatero Estrecho Blanco', 'Para entrada', 38.00, 'assets/images/products/placeholder.png', 1, 11, NOW(), NOW(), 8),
('MUEBLE-PERCHERO-001', 'Perchero de Pie Metálico', 'Color negro', 22.00, 'assets/images/products/placeholder.png', 1, 25, NOW(), NOW(), 8),
('MUEBLE-COJINES-001', 'Pack 2 Cojines Sofá', 'Funda geométrica', 15.00, 'assets/images/products/placeholder.png', 1, 30, NOW(), NOW(), 8),
('MUEBLE-PLANTAS-001', 'Planta Artificial Decorativa', 'Monstera pequeña', 19.00, 'assets/images/products/placeholder.png', 1, 35, NOW(), NOW(), 8),
('MUEBLE-RELOJ-001', 'Reloj de Pared Moderno', 'Silencioso, 30cm diámetro', 16.00, 'assets/images/products/placeholder.png', 1, 28, NOW(), NOW(), 8),
('MUEBLE-CAJONERA-001', 'Cajonera 3 Cajones Blanca', 'Tipo cómoda pequeña', 55.00, 'assets/images/products/placeholder.png', 1, 6, NOW(), NOW(), 8),
('MUEBLE-FLEXO-001', 'Flexo Arquitecto Metálico', 'Color negro', 24.00, 'assets/images/products/placeholder.png', 1, 16, NOW(), NOW(), 8),
('MUEBLE-TABURETE-001', 'Taburete Alto Cocina', 'Asiento madera, patas metal', 33.00, 'assets/images/products/placeholder.png', 1, 14, NOW(), NOW(), 8),
('MUEBLE-ORGANIZADOR-001', 'Organizador Escritorio Bambú', 'Compartimentos varios', 17.00, 'assets/images/products/placeholder.png', 1, 38, NOW(), NOW(), 8),
('MUEBLE-VELA-001', 'Vela Aromática Grande', 'Aroma vainilla', 10.00, 'assets/images/products/placeholder.png', 1, 45, NOW(), NOW(), 8);

-- Insertar 18 productos adicionales - Ofertas de Alojamiento (ID: 9) - Total 20 (Ejemplos)
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('ALOJA-HABIT-002', 'Habitación Centro Histórico', 'Piso reformado, gastos incluidos', 350.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9),
('ALOJA-PISO-001', 'Alquilo Piso 2 Hab El Ejido', 'Ideal estudiantes, cerca campus', 600.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9),
('ALOJA-COMPA-002', 'Busco Compañera Piso Teatinos', 'Chica estudiante/trabajadora', 0.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9),
('ALOJA-HABIT-003', 'Habitación Individual Huelin', 'Cerca playa y metro', 280.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9),
('ALOJA-ESTUDIO-001', 'Alquilo Estudio Centro', 'Pequeño estudio amueblado', 450.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9),
('ALOJA-COMPA-003', 'Busco Compañero/a Zona Vialia', 'Piso moderno, buen ambiente', 0.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9),
('ALOJA-HABIT-004', 'Habitación Grande Luminosa', 'Piso tranquilo, zona Carranque', 290.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9),
('ALOJA-PISO-002', 'Alquilo Piso 3 Hab Pedregalejo', 'Cerca de la playa', 750.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9),
('ALOJA-COMPA-004', 'Busco Compañero para Chalet', 'Chalet compartido en El Candado', 0.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9),
('ALOJA-HABIT-005', 'Habitación Económica Palma-Palmilla', 'Habitación sencilla, bien comunicada', 220.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9),
('ALOJA-PISO-003', 'Alquilo Apartamento 1 Hab', 'Zona La Malagueta', 650.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9),
('ALOJA-COMPA-005', 'Busco Compañera Piso Centro', 'Chica responsable y limpia', 0.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9),
('ALOJA-HABIT-006', 'Habitación con Baño Privado', 'Teatinos, cerca ampliación campus', 380.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9),
('ALOJA-PISO-004', 'Alquilo Piso 4 Hab Estudiantes', 'Cerca Campus El Ejido', 800.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9),
('ALOJA-COMPA-006', 'Busco Compañero/a No Fumador', 'Piso tranquilo en Miraflores', 0.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9),
('ALOJA-HABIT-007', 'Habitación en Casa Mata', 'Zona Perchel Sur', 260.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9),
('ALOJA-ESTUDIO-002', 'Alquilo Estudio Luminoso', 'Zona Cruz Humilladero', 420.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9),
('ALOJA-COMPA-007', 'Busco Compañero/a Erasmus', 'Piso internacional en Teatinos', 0.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 9);

-- Insertar 18 productos adicionales - Bicicletas y Transporte (ID: 10) - Total 20
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('TRANS-BICI-002', 'Bicicleta Paseo Orbea', 'Clásica, con cesta', 70.00, 'assets/images/products/placeholder.png', 1, 10, NOW(), NOW(), 10),
('TRANS-ACCES-001', 'Casco Bicicleta Adulto', 'Negro mate', 20.00, 'assets/images/products/placeholder.png', 1, 30, NOW(), NOW(), 10),
('TRANS-PATIN-002', 'Patinete 3 Ruedas Infantil', 'Patinete para niños', 25.00, 'assets/images/products/placeholder.png', 1, 15, NOW(), NOW(), 10),
('TRANS-BICI-003', 'Bicicleta Plegable Decathlon', 'Ideal para ciudad', 120.00, 'assets/images/products/placeholder.png', 1, 6, NOW(), NOW(), 10),
('TRANS-ACCES-002', 'Candado Bici U-Lock', 'Candado alta seguridad', 35.00, 'assets/images/products/placeholder.png', 1, 25, NOW(), NOW(), 10),
('TRANS-MONOPATIN-001', 'Monopatín Skateboard Completo', 'Tabla para principiantes', 40.00, 'assets/images/products/placeholder.png', 1, 20, NOW(), NOW(), 10),
('TRANS-BICI-004', 'Bicicleta Carretera BH', 'Talla M, usada', 200.00, 'assets/images/products/placeholder.png', 1, 3, NOW(), NOW(), 10),
('TRANS-ACCES-003', 'Luces LED Bicicleta (Set)', 'Luz delantera y trasera', 15.00, 'assets/images/products/placeholder.png', 1, 40, NOW(), NOW(), 10),
('TRANS-PATIN-003', 'Patinete Eléctrico Cecotec', 'Modelo Bongo Serie A', 280.00, 'assets/images/products/placeholder.png', 1, 5, NOW(), NOW(), 10),
('TRANS-BICI-005', 'Bicicleta Eléctrica Urbana', 'Plegable, poco uso', 450.00, 'assets/images/products/placeholder.png', 1, 2, NOW(), NOW(), 10),
('TRANS-ACCES-004', 'Bomba Aire Bicicleta Pie', 'Con manómetro', 18.00, 'assets/images/products/placeholder.png', 1, 35, NOW(), NOW(), 10),
('TRANS-PATINES-001', 'Patines en Línea Adulto', 'Talla 42', 50.00, 'assets/images/products/placeholder.png', 1, 12, NOW(), NOW(), 10),
('TRANS-BICI-006', 'Bicicleta Fixie Urbana', 'Estilo minimalista', 150.00, 'assets/images/products/placeholder.png', 1, 7, NOW(), NOW(), 10),
('TRANS-ACCES-005', 'Soporte Móvil Bicicleta', 'Ajustable al manillar', 12.00, 'assets/images/products/placeholder.png', 1, 50, NOW(), NOW(), 10),
('TRANS-PATIN-004', 'Patinete Freestyle', 'Para trucos', 60.00, 'assets/images/products/placeholder.png', 1, 18, NOW(), NOW(), 10),
('TRANS-BICI-007', 'Triciclo Adulto', 'Estable y cómodo', 180.00, 'assets/images/products/placeholder.png', 1, 4, NOW(), NOW(), 10),
('TRANS-ACCES-006', 'Alforjas Bicicleta Traseras', 'Par de alforjas impermeables', 45.00, 'assets/images/products/placeholder.png', 1, 22, NOW(), NOW(), 10),
('TRANS-SEAT-001', 'Silla Portabebés Bicicleta', 'Trasera, hasta 22kg', 55.00, 'assets/images/products/placeholder.png', 1, 9, NOW(), NOW(), 10);

-- Insertar 19 productos adicionales - Entradas y Eventos (ID: 11) - Total 20 (Ejemplos)
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('EVENT-TEATRO-001', 'Entrada Teatro Cervantes', 'Obra "La Casa de Bernarda Alba"', 18.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11),
('EVENT-FESTIVAL-001', 'Abono Weekend Beach Festival', 'Vendo abono general', 60.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11),
('EVENT-CINE-001', 'Entrada Cine Albéniz', 'Película de estreno', 6.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11),
('EVENT-MUSEO-001', 'Entrada Museo Picasso Málaga', 'Acceso colección permanente', 10.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11),
('EVENT-CONCIERTO-002', 'Entrada Concierto Flamenco', 'Tablao Los Amaya', 30.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11),
('EVENT-DEPORTE-001', 'Entrada Málaga CF', 'Partido Liga Smartbank', 20.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11),
('EVENT-TALLER-001', 'Entrada Taller de Cocina', 'Cocina japonesa', 40.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11),
('EVENT-EXPO-001', 'Entrada Exposición Fotografía', 'Centro Pompidou Málaga', 7.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11),
('EVENT-CONCIERTO-003', 'Entrada Concierto Rock Local', 'Sala París 15', 12.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11),
('EVENT-MONOLOGO-001', 'Entrada Monólogo Comedia', 'La Cochera Cabaret', 15.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11),
('EVENT-FERIA-001', 'Bono Descuento Feria Málaga', 'Atracciones feria', 5.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11),
('EVENT-CONFERENCIA-001', 'Entrada Conferencia TEDx', 'Evento local', 25.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11),
('EVENT-CONCIERTO-004', 'Entrada Concierto Clásico', 'Orquesta Filarmónica Málaga', 22.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11),
('EVENT-RUTA-001', 'Entrada Ruta Senderismo Guiada', 'Caminito del Rey (transporte aparte)', 10.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11),
('EVENT-CATA-001', 'Entrada Cata de Vinos', 'Bodega local', 35.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11),
('EVENT-INFANTIL-001', 'Entrada Espectáculo Infantil', 'Teatro Echegaray', 8.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11),
('EVENT-CONCIERTO-005', 'Entrada Concierto Tributo Queen', 'Sala Eventos', 28.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11),
('EVENT-MERCADO-001', 'Entrada Mercado Artesanal', 'Acceso y consumición', 3.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11),
('EVENT-DANZA-001', 'Entrada Espectáculo Danza', 'Compañía local', 16.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 11);

-- Insertar 18 productos adicionales - Electrodomésticos y Cocina (ID: 12) - Total 20
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('ELECTRO-TOSTADORA-001', 'Tostadora Pan Philips', 'Ranura ancha', 20.00, 'assets/images/products/placeholder.png', 1, 25, NOW(), NOW(), 12),
('ELECTRO-BATIDORA-001', 'Batidora de Mano Moulinex', 'Con accesorios', 30.00, 'assets/images/products/placeholder.png', 1, 18, NOW(), NOW(), 12),
('ELECTRO-HERVIDOR-001', 'Hervidor Agua Eléctrico', '1.7 Litros', 22.00, 'assets/images/products/placeholder.png', 1, 30, NOW(), NOW(), 12),
('ELECTRO-SANDWICHERA-001', 'Sandwichera Grill Taurus', 'Placas antiadherentes', 25.00, 'assets/images/products/placeholder.png', 1, 20, NOW(), NOW(), 12),
('ELECTRO-EXPRIMIDOR-001', 'Exprimidor Naranjas Eléctrico', 'Automático', 18.00, 'assets/images/products/placeholder.png', 1, 28, NOW(), NOW(), 12),
('ELECTRO-FREIDORA-001', 'Freidora Aire Cecotec', 'Sin aceite, 3.5L', 60.00, 'assets/images/products/placeholder.png', 1, 10, NOW(), NOW(), 12),
('ELECTRO-PLANCHA-001', 'Plancha Ropa Vapor Rowenta', 'Suela Microsteam', 40.00, 'assets/images/products/placeholder.png', 1, 15, NOW(), NOW(), 12),
('ELECTRO-ASPIRADORA-001', 'Aspiradora Escoba sin Cable', 'Tipo Dyson (imitación)', 80.00, 'assets/images/products/placeholder.png', 1, 8, NOW(), NOW(), 12),
('ELECTRO-ROBOT-001', 'Robot Cocina Multifunción', 'Tipo Monsieur Cuisine (Lidl)', 150.00, 'assets/images/products/placeholder.png', 1, 5, NOW(), NOW(), 12),
('ELECTRO-HORNO-001', 'Horno Sobremesa Pequeño', '10 Litros', 45.00, 'assets/images/products/placeholder.png', 1, 14, NOW(), NOW(), 12),
('ELECTRO-VENTILADOR-001', 'Ventilador de Pie', 'Oscilante, 3 velocidades', 30.00, 'assets/images/products/placeholder.png', 1, 26, NOW(), NOW(), 12),
('ELECTRO-CALEFACTOR-001', 'Calefactor Eléctrico Bajo Consumo', 'Termoventilador', 28.00, 'assets/images/products/placeholder.png', 1, 22, NOW(), NOW(), 12),
('ELECTRO-SECADOR-001', 'Secador Pelo Profesional', '2200W, iónico', 35.00, 'assets/images/products/placeholder.png', 1, 19, NOW(), NOW(), 12),
('ELECTRO-BASCULA-001', 'Báscula Cocina Digital', 'Precisión 1g', 15.00, 'assets/images/products/placeholder.png', 1, 33, NOW(), NOW(), 12),
('ELECTRO-PICADORA-001', 'Picadora Eléctrica Universal', 'Para verduras, carne', 27.00, 'assets/images/products/placeholder.png', 1, 16, NOW(), NOW(), 12),
('ELECTRO-YOGURTERA-001', 'Yogurtera Eléctrica 7 Vasos', 'Para hacer yogur casero', 24.00, 'assets/images/products/placeholder.png', 1, 11, NOW(), NOW(), 12),
('ELECTRO-GOFRERA-001', 'Gofrera Eléctrica', 'Placas antiadherentes', 29.00, 'assets/images/products/placeholder.png', 1, 13, NOW(), NOW(), 12),
('ELECTRO-MINIPIMER-001', 'Minipimer Braun', 'Batidora de brazo', 38.00, 'assets/images/products/placeholder.png', 1, 17, NOW(), NOW(), 12);

-- Insertar 18 productos adicionales - Mascotas y Accesorios (ID: 13) - Total 20
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('MASCOTA-ADOP-002', 'Perro Adulto en Adopción', 'Mestizo tamaño mediano, muy cariñoso', 0.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 13),
('MASCOTA-COMIDA-001', 'Pienso Gato Adulto Royal Canin', 'Saco 2kg', 18.00, 'assets/images/products/placeholder.png', 1, 30, NOW(), NOW(), 13),
('MASCOTA-CORREA-001', 'Correa Perro Extensible Flexi', '5 metros', 15.00, 'assets/images/products/placeholder.png', 1, 25, NOW(), NOW(), 13),
('MASCOTA-JUGUETE-001', 'Juguete Pelota Goma Perro', 'Resistente', 5.00, 'assets/images/products/placeholder.png', 1, 50, NOW(), NOW(), 13),
('MASCOTA-ARENERO-001', 'Arenero Gato Cubierto', 'Con filtro antiolor', 25.00, 'assets/images/products/placeholder.png', 1, 15, NOW(), NOW(), 13),
('MASCOTA-CAMA-001', 'Cama Perro Mediana', 'Cojín mullido', 30.00, 'assets/images/products/placeholder.png', 1, 20, NOW(), NOW(), 13),
('MASCOTA-TRANSPORTIN-001', 'Transportín Gato/Perro Pequeño', 'Homologado IATA', 28.00, 'assets/images/products/placeholder.png', 1, 12, NOW(), NOW(), 13),
('MASCOTA-COMEDERO-001', 'Comedero Doble Acero Inoxidable', 'Para agua y comida', 12.00, 'assets/images/products/placeholder.png', 1, 40, NOW(), NOW(), 13),
('MASCOTA-CEPILLO-001', 'Cepillo Perro Pelo Largo', 'Elimina pelo muerto', 10.00, 'assets/images/products/placeholder.png', 1, 35, NOW(), NOW(), 13),
('MASCOTA-COLLAR-001', 'Collar Antiparasitario Perro', 'Scalibor', 22.00, 'assets/images/products/placeholder.png', 1, 28, NOW(), NOW(), 13),
('MASCOTA-ACUARIO-001', 'Acuario Pequeño 20L', 'Kit básico con filtro', 40.00, 'assets/images/products/placeholder.png', 1, 8, NOW(), NOW(), 13),
('MASCOTA-HAMSTER-001', 'Jaula Hámster Completa', 'Con rueda y bebedero', 35.00, 'assets/images/products/placeholder.png', 1, 10, NOW(), NOW(), 13),
('MASCOTA-PAJARO-001', 'Jaula Canario Mediana', 'Con comederos y palos', 26.00, 'assets/images/products/placeholder.png', 1, 14, NOW(), NOW(), 13),
('MASCOTA-SNACK-001', 'Snacks Dentales Perro', 'Pedigree Dentastix', 8.00, 'assets/images/products/placeholder.png', 1, 45, NOW(), NOW(), 13),
('MASCOTA-ARENA-001', 'Arena Aglomerante Gato', 'Saco 10L', 9.00, 'assets/images/products/placeholder.png', 1, 38, NOW(), NOW(), 13),
('MASCOTA-JUGUETE-002', 'Caña con Plumas Gato', 'Juguete interactivo', 4.00, 'assets/images/products/placeholder.png', 1, 60, NOW(), NOW(), 13),
('MASCOTA-ROPA-001', 'Abrigo Impermeable Perro', 'Talla M', 18.00, 'assets/images/products/placeholder.png', 1, 16, NOW(), NOW(), 13),
('MASCOTA-CHAMPU-001', 'Champú Perro Pelo Blanco', 'Realza el color', 11.00, 'assets/images/products/placeholder.png', 1, 24, NOW(), NOW(), 13);

-- Insertar 18 productos adicionales - Deporte y Aire Libre (ID: 14) - Total 20
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('DEPORTE-ESTERILLA-001', 'Esterilla Yoga Antideslizante', 'Grosor 6mm', 18.00, 'assets/images/products/placeholder.png', 1, 40, NOW(), NOW(), 14),
('DEPORTE-BALON-001', 'Balón Fútbol Sala', 'Talla oficial', 15.00, 'assets/images/products/placeholder.png', 1, 35, NOW(), NOW(), 14),
('DEPORTE-RAQUETA-001', 'Raqueta Tenis Adulto', 'Nivel iniciación', 30.00, 'assets/images/products/placeholder.png', 1, 20, NOW(), NOW(), 14),
('DEPORTE-MOCHILA-001', 'Mochila Senderismo 30L', 'Espalda acolchada', 40.00, 'assets/images/products/placeholder.png', 1, 25, NOW(), NOW(), 14),
('DEPORTE-GOMAS-001', 'Set Bandas Elásticas Resistencia', '5 niveles', 12.00, 'assets/images/products/placeholder.png', 1, 50, NOW(), NOW(), 14),
('DEPORTE-COMBA-001', 'Comba Saltar Fitness', 'Mango ergonómico', 8.00, 'assets/images/products/placeholder.png', 1, 60, NOW(), NOW(), 14),
('DEPORTE-TIENDA-001', 'Tienda Campaña 2 Personas', 'Impermeable', 55.00, 'assets/images/products/placeholder.png', 1, 10, NOW(), NOW(), 14),
('DEPORTE-GAFAS-001', 'Gafas Natación Adulto', 'Antivaho', 14.00, 'assets/images/products/placeholder.png', 1, 45, NOW(), NOW(), 14),
('DEPORTE-GUANTES-001', 'Guantes Gimnasio Musculación', 'Con muñequera', 16.00, 'assets/images/products/placeholder.png', 1, 38, NOW(), NOW(), 14),
('DEPORTE-COLCHONETA-001', 'Colchoneta Hinchable Camping', 'Individual', 28.00, 'assets/images/products/placeholder.png', 1, 18, NOW(), NOW(), 14),
('DEPORTE-BALONCESTO-001', 'Balón Baloncesto Spalding', 'Tamaño 7', 25.00, 'assets/images/products/placeholder.png', 1, 28, NOW(), NOW(), 14),
('DEPORTE-PULSOMETRO-001', 'Pulsómetro Banda Pecho', 'Compatible ANT+/Bluetooth', 35.00, 'assets/images/products/placeholder.png', 1, 22, NOW(), NOW(), 14),
('DEPORTE-BOTAS-001', 'Botas Montaña Impermeables', 'Talla 43', 70.00, 'assets/images/products/placeholder.png', 1, 12, NOW(), NOW(), 14),
('DEPORTE-PESA-001', 'Pesa Rusa Kettlebell 8kg', 'Hierro fundido', 20.00, 'assets/images/products/placeholder.png', 1, 32, NOW(), NOW(), 14),
('DEPORTE-FRONTAL-001', 'Linterna Frontal LED Recargable', 'Para correr o camping', 19.00, 'assets/images/products/placeholder.png', 1, 42, NOW(), NOW(), 14),
('DEPORTE-NEVERA-001', 'Nevera Portátil Playa/Camping', '24 Litros', 24.00, 'assets/images/products/placeholder.png', 1, 26, NOW(), NOW(), 14),
('DEPORTE-SILLA-001', 'Silla Plegable Camping', 'Ligera y resistente', 15.00, 'assets/images/products/placeholder.png', 1, 48, NOW(), NOW(), 14),
('DEPORTE-BAÑADOR-001', 'Bañador Natación Hombre Turbo', 'Tipo slip', 22.00, 'assets/images/products/placeholder.png', 1, 30, NOW(), NOW(), 14);

-- Insertar 19 productos adicionales - Fotografía y Audiovisual (ID: 15) - Total 20
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('FOTO-OBJETIVO-001', 'Objetivo Canon 50mm f/1.8', 'Objetivo fijo luminoso', 100.00, 'assets/images/products/placeholder.png', 1, 15, NOW(), NOW(), 15),
('FOTO-TRIPODE-001', 'Trípode Cámara Ligero', 'Aluminio, altura máx 1.5m', 35.00, 'assets/images/products/placeholder.png', 1, 25, NOW(), NOW(), 15),
('FOTO-MICROFONO-001', 'Micrófono Solapa Lavalier', 'Para móvil/cámara', 20.00, 'assets/images/products/placeholder.png', 1, 40, NOW(), NOW(), 15),
('FOTO-CAMARA-002', 'Cámara Compacta Sony Cyber-shot', 'Zoom óptico 10x', 180.00, 'assets/images/products/placeholder.png', 1, 8, NOW(), NOW(), 15),
('FOTO-BOLSA-001', 'Bolsa Transporte Cámara Réflex', 'Acolchada', 28.00, 'assets/images/products/placeholder.png', 1, 30, NOW(), NOW(), 15),
('FOTO-TARJETA-001', 'Tarjeta Memoria SD 64GB', 'SanDisk Extreme Pro', 25.00, 'assets/images/products/placeholder.png', 1, 50, NOW(), NOW(), 15),
('FOTO-FLASH-001', 'Flash Externo Yongnuo', 'Compatible Canon/Nikon', 60.00, 'assets/images/products/placeholder.png', 1, 12, NOW(), NOW(), 15),
('FOTO-CAMARA-003', 'Cámara Acción GoPro Hero 8 Black', 'Usada, con accesorios', 220.00, 'assets/images/products/placeholder.png', 1, 5, NOW(), NOW(), 15),
('FOTO-FOCO-001', 'Foco LED Anillo Selfie', 'Con trípode pequeño', 22.00, 'assets/images/products/placeholder.png', 1, 35, NOW(), NOW(), 15),
('FOTO-DRON-001', 'Dron DJI Mini 2', 'Pack Fly More Combo', 450.00, 'assets/images/products/placeholder.png', 1, 3, NOW(), NOW(), 15),
('FOTO-FILTRO-001', 'Filtro Polarizador Circular 58mm', 'Mejora colores', 18.00, 'assets/images/products/placeholder.png', 1, 45, NOW(), NOW(), 15),
('FOTO-CAMARA-004', 'Cámara Instantánea Fujifilm Instax Mini 11', 'Color azul', 70.00, 'assets/images/products/placeholder.png', 1, 18, NOW(), NOW(), 15),
('FOTO-ESTABILIZADOR-001', 'Estabilizador Gimbal Móvil', 'DJI Osmo Mobile 3', 90.00, 'assets/images/products/placeholder.png', 1, 10, NOW(), NOW(), 15),
('FOTO-PROYECTOR-001', 'Mini Proyector Portátil LED', 'Conexión HDMI/USB', 80.00, 'assets/images/products/placeholder.png', 1, 14, NOW(), NOW(), 15),
('FOTO-PANTALLA-001', 'Pantalla Verde Croma Plegable', 'Fondo para vídeo', 40.00, 'assets/images/products/placeholder.png', 1, 20, NOW(), NOW(), 15),
('FOTO-CAMARA-005', 'Cámara Mirrorless Sony Alpha a6000', 'Con objetivo kit', 400.00, 'assets/images/products/placeholder.png', 1, 6, NOW(), NOW(), 15),
('FOTO-MICRO-002', 'Micrófono USB Condensador', 'Para podcasting/streaming', 55.00, 'assets/images/products/placeholder.png', 1, 28, NOW(), NOW(), 15),
('FOTO-REFLECTOR-001', 'Reflector Fotografía 5 en 1', 'Plegable 80cm', 15.00, 'assets/images/products/placeholder.png', 1, 38, NOW(), NOW(), 15),
('FOTO-KIT-001', 'Kit Limpieza Cámara Fotos', 'Pera, pincel, paño', 12.00, 'assets/images/products/placeholder.png', 1, 55, NOW(), NOW(), 15);

-- Insertar 18 productos adicionales - Servicios (ID: 16) - Total 20 (Ejemplos)
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('SERV-TRADUCCION-001', 'Traducción Inglés-Español', 'Traducción de documentos (precio por palabra)', 0.05, 'assets/images/products/placeholder.png', 1, 10, NOW(), NOW(), 16),
('SERV-CLASES-002', 'Clases Particulares Física y Química', 'Nivel ESO y Bachillerato', 13.00, 'assets/images/products/placeholder.png', 1, 8, NOW(), NOW(), 16),
('SERV-DISEÑO-001', 'Diseño Gráfico Flyers/Carteles', 'Diseño personalizado (precio por proyecto)', 50.00, 'assets/images/products/placeholder.png', 1, 5, NOW(), NOW(), 16),
('SERV-INFORMATICA-001', 'Reparación Ordenadores a Domicilio', 'Formateo, limpieza virus (precio por hora)', 25.00, 'assets/images/products/placeholder.png', 1, 6, NOW(), NOW(), 16),
('SERV-CLASES-003', 'Clases de Guitarra Iniciación', 'Clases individuales', 15.00, 'assets/images/products/placeholder.png', 1, 7, NOW(), NOW(), 16),
('SERV-CUIDADO-001', 'Cuidado de Niños por Horas', ' Canguro con experiencia', 10.00, 'assets/images/products/placeholder.png', 1, 12, NOW(), NOW(), 16),
('SERV-MUDANZA-001', 'Ayuda Pequeñas Mudanzas', 'Ayudante para carga/descarga (precio por hora)', 18.00, 'assets/images/products/placeholder.png', 1, 4, NOW(), NOW(), 16),
('SERV-CLASES-004', 'Clases de Inglés Conversación', 'Profesor nativo (o nivel alto)', 14.00, 'assets/images/products/placeholder.png', 1, 9, NOW(), NOW(), 16),
('SERV-FOTOGRAFIA-001', 'Sesión Fotos Retrato Exterior', 'Fotógrafo estudiante (precio por sesión)', 40.00, 'assets/images/products/placeholder.png', 1, 3, NOW(), NOW(), 16),
('SERV-LIMPIEZA-001', 'Limpieza Pisos Estudiantes', 'Limpieza por horas', 11.00, 'assets/images/products/placeholder.png', 1, 15, NOW(), NOW(), 16),
('SERV-CLASES-005', 'Clases Particulares Programación Python', 'Nivel básico/intermedio', 16.00, 'assets/images/products/placeholder.png', 1, 6, NOW(), NOW(), 16),
('SERV-MASAJES-001', 'Masaje Relajante Espalda', 'Estudiante fisioterapia (precio por sesión)', 20.00, 'assets/images/products/placeholder.png', 1, 5, NOW(), NOW(), 16),
('SERV-PASEADOR-001', 'Paseador de Perros', 'Paseos por horas', 9.00, 'assets/images/products/placeholder.png', 1, 10, NOW(), NOW(), 16),
('SERV-CLASES-006', 'Clases de Apoyo Selectividad', 'Matemáticas, Física, Química', 15.00, 'assets/images/products/placeholder.png', 1, 8, NOW(), NOW(), 16),
('SERV-EDICION-001', 'Edición Vídeo Básica', 'Montaje vídeos cortos (precio por proyecto)', 30.00, 'assets/images/products/placeholder.png', 1, 4, NOW(), NOW(), 16),
('SERV-MANITAS-001', 'Pequeñas Reparaciones Hogar', 'Colgar cuadros, montar muebles (precio por hora)', 17.00, 'assets/images/products/placeholder.png', 1, 7, NOW(), NOW(), 16),
('SERV-CLASES-007', 'Clases de Francés Básico', 'Profesor particular', 13.00, 'assets/images/products/placeholder.png', 1, 9, NOW(), NOW(), 16),
('SERV-CV-001', 'Revisión y Mejora CV', 'Ayuda para buscar empleo', 25.00, 'assets/images/products/placeholder.png', 1, 11, NOW(), NOW(), 16);

-- Insertar 18 productos adicionales - Artículos de Segunda Mano (ID: 17) - Total 20
INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id) VALUES
('SEGUNDA-VAJILLA-001', 'Vajilla Completa 6 Servicios', 'Platos, vasos, cubiertos', 30.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17),
('SEGUNDA-LAMPARA-001', 'Lámpara de Pie Salón', 'Estilo moderno, usada', 25.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17),
('SEGUNDA-JUEGO-001', 'Juego Trivial Pursuit', 'Edición clásica, completo', 12.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17),
('SEGUNDA-DECO-001', 'Figura Decorativa Elefante', 'Madera tallada', 8.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17),
('SEGUNDA-HERRAMIENTA-001', 'Maletín Herramientas Básico', 'Destornilladores, alicates', 15.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17),
('SEGUNDA-INSTRUMENTO-001', 'Flauta Dulce Escolar', 'Marca Hohner', 5.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17),
('SEGUNDA-DISCO-001', 'Vinilo The Beatles - Abbey Road', 'Disco de vinilo usado', 18.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17),
('SEGUNDA-MOCHILA-001', 'Mochila Escolar Eastpak', 'Color azul, usada', 10.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17),
('SEGUNDA-PELUCHE-001', 'Oso Peluche Grande', 'Buen estado', 9.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17),
('SEGUNDA-CUADRO-001', 'Cuadro Paisaje Óleo', 'Marco dorado', 20.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17),
('SEGUNDA-TELEFONO-001', 'Teléfono Fijo Góndola', 'Estilo retro', 14.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17),
('SEGUNDA-RADIO-001', 'Radio Portátil AM/FM', 'Funciona a pilas', 7.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17),
('SEGUNDA-MALETA-001', 'Maleta Cabina Rígida', 'Con ruedas, usada', 22.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17),
('SEGUNDA-DVD-001', 'Reproductor DVD Philips', 'Con mando', 15.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17),
('SEGUNDA-IMPRESORA-001', 'Impresora HP Multifunción', 'Necesita cartuchos', 20.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17),
('SEGUNDA-VENTILADOR-001', 'Ventilador Sobremesa Pequeño', 'Blanco', 10.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17),
('SEGUNDA-COLECCION-001', 'Colección Sellos España', 'Álbum con sellos antiguos', 40.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17),
('SEGUNDA-CRISTALERIA-001', 'Juego 6 Copas Vino', 'Cristal fino', 16.00, 'assets/images/products/placeholder.png', 1, 1, NOW(), NOW(), 17);
