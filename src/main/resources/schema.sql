DROP DATABASE IF EXISTS postgres;
CREATE DATABASE postgres;

USE postgres;

CREATE TABLE IF NOT EXISTS CUSTOMERS (
                                         id INT PRIMARY KEY AUTO_INCREMENT,
                                         name VARCHAR(255) NOT NULL,
                                         surname VARCHAR(255) NOT NULL,
                                         age INT CHECK (age > 0 AND age < 150),
                                         phone_number VARCHAR(25)
);

CREATE TABLE IF NOT EXISTS ORDERS (
                                      id INT PRIMARY KEY AUTO_INCREMENT,
                                      date DATETIME NOT NULL DEFAULT now(),
                                      customer_id INT NOT NULL,
                                      product_name VARCHAR(255) NOT NULL,
                                      amount INT NOT NULL CHECK (amount > 0),
                                      FOREIGN KEY (customer_id) REFERENCES CUSTOMERS (id)
);
