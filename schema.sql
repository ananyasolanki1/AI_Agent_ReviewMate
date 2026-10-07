CREATE DATABASE IF NOT EXISTS moodmate;
USE moodmate;

CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL UNIQUE,
    price DECIMAL(10,2),
    display VARCHAR(255),
    battery INT,
    camera VARCHAR(255),
    processor VARCHAR(255),
    ram VARCHAR(50),
    storage VARCHAR(50),
    charging VARCHAR(100),
    network VARCHAR(100),
    key_qualities TEXT
);

CREATE TABLE IF NOT EXISTS reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    review_title VARCHAR(255),
    rating DECIMAL(3,1),
    category VARCHAR(100),
    comments TEXT,
    sentiment VARCHAR(20),
    emotion VARCHAR(50),
    suggestion_1_id INT,
    suggestion_2_id INT,
    recommendation_message TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES products(id),
    FOREIGN KEY (suggestion_1_id) REFERENCES products(id),
    FOREIGN KEY (suggestion_2_id) REFERENCES products(id)
);
