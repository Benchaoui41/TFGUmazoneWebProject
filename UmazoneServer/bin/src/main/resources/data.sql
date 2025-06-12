-- Borrar datos existentes
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE product;
TRUNCATE TABLE product_category;
SET FOREIGN_KEY_CHECKS = 1;

-- Insertar categorías
INSERT INTO product_category(category_name) VALUES 
('Books'),
('Coffee Mugs');

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
