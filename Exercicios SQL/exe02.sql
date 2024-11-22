CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE produtos(
id BIGINT auto_increment,
produto VARCHAR(255)  NOT NULL,
categoria VARCHAR(255),
preco DECIMAL(6,2),
data_adicionado DATE,
estoque INT,
PRIMARY KEY (ID)
);

SELECT * FROM produtos;

INSERT INTO produtos (produto, categoria, preco, data_adicionado, estoque)
VALUES ("Smartphone S24+", "Eletrônicos", 4684.99 , "2024-11-22", 5);
INSERT INTO produtos (produto, categoria, preco, data_adicionado, estoque)
VALUES ("Smartphone G84", "Eletrônicos", 1536.99, "2024-11-22", 7);
INSERT INTO produtos (produto, categoria, preco, data_adicionado, estoque)
VALUES ("Fone de ouvido Bluetooth", "Eletrônicos", 150.00, "2024-11-22", 30);
INSERT INTO produtos (produto, categoria, preco, data_adicionado, estoque)
VALUES ("Cadeira Gamer", "Móveis", 799.99, "2024-11-22", 25);
INSERT INTO produtos (produto, categoria, preco, data_adicionado, estoque)
VALUES ("Mesa Gamer", "Móveis", 399.99, "2024-11-22", 15);
INSERT INTO produtos (produto, categoria, preco, data_adicionado, estoque)
VALUES ("Livro: Database", "Livros", 49.99, "2024-11-22", 150);
INSERT INTO produtos (produto, categoria, preco, data_adicionado, estoque)
VALUES ("Livro: Java", "Livros", 79.99, "2024-11-22", 84);
INSERT INTO produtos (produto, categoria, preco, data_adicionado, estoque)
VALUES ("Relógio Digital", "Acessórios", 159.99, "2024-11-22", 40);

SELECT * FROM produtos WHERE preco >= 500;
SELECT * FROM produtos WHERE preco <= 500;

UPDATE produtos SET estoque = 50 WHERE id = 3;

