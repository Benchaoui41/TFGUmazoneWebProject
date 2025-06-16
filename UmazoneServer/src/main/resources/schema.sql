-- Crear tablas
CREATE TABLE IF NOT EXISTS product_category (
    id BIGINT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(255) NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS product (
    id BIGINT NOT NULL AUTO_INCREMENT,
    sku VARCHAR(255) NULL,
    name VARCHAR(255) NULL,
    description VARCHAR(255) NULL,
    unit_price DECIMAL(13,2) NULL,
    image_url VARCHAR(255) NULL,
    active BIT NULL,
    units_in_stock INT NULL,
    date_created DATETIME(6) NULL,
    last_updated DATETIME(6) NULL,
    category_id BIGINT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (category_id) REFERENCES product_category(id)
);
