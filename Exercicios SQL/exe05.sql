CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

create table tb_categorias(
	id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

create table tb_pizzas(
	id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(5,2) NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
	vegetariana BOOLEAN DEFAULT FALSE
);

ALTER TABLE tb_pizzas ADD id_categoria BIGINT;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria);

SELECT *  FROM tb_categorias;
SELECT *  FROM tb_pizzas;

INSERT INTO tb_categorias (nome, descricao) VALUES
("Frango", "Pizzas que contém frango."),
("Queijo", "Pizzas que contém queijo."),
("Carne", "Pizzas que contém carne vermelha ou suína."),
("Especial", "Sugestões da casa."),
("Doce", "Pizzas com coberturas doces e sobremesas.");

INSERT INTO tb_pizzas (nome, preco, tamanho, vegetariana, id_categoria) VALUES
("Marguerita", 30.00, "Média", TRUE, 2),
("Pepperoni", 35.00, "Grande", FALSE, 3),
("Lombo canadense", 70.00, "Média", FALSE, 3),
("Quatro Queijos", 46.00, "Grande", TRUE, 2),
("Frango com catupiry", 40.00, "Média", FALSE, 1),
("Mix de Cogumelos", 60.00, "Grande", FALSE, 4),
("Brigadeiro", 25.00, "Pequena", FALSE, 5),
("Romeu e Julieta", 28.00, "Pequena", FALSE, 5);

SELECT * FROM tb_pizzas WHERE preco > 45;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 and 100;
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome = "Doce";
