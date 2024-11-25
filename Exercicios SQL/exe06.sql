CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

create table tb_categorias(
	id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

create table tb_produtos(
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(5,2) NOT NULL,
    estoque INT,
	fabricante VARCHAR(255),
    id_categoria BIGINT,
    CONSTRAINT fk_produtos_categorias FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

SELECT *  FROM tb_categorias;
SELECT *  FROM tb_produtos;

INSERT INTO tb_categorias (nome, descricao) VALUES
("Medicamentos", "Produtos utilizados para tratar ou prevenir doenças."),
("Higiene", "Produtos para cuidados pessoais e higiene."),
("Beleza", "Produtos relacionados a estética e cuidados com a pele."),
("Suplementos", "Suplementos alimentares e vitaminas."),
("Infantil", "Produtos voltados para o cuidado de bebês e crianças.");

INSERT INTO tb_produtos (nome, preco, estoque, fabricante, id_categoria) VALUES
("Paracetamol", 10.50, 200, "Farmacêutica A", 1),
("Ibuprofeno", 15.75, 150, "Farmacêutica B", 1),
("Sabonete Líquido", 8.00, 300, "Higiene Pro", 2),
("Shampoo Anticaspa", 25.90, 100, "Cuidado Plus", 2),
("Protetor Solar FPS 50", 55.00, 50, "Beleza Natural", 3),
("Vitamina C 500mg", 30.00, 120, "NutriVida", 4),
("Leite em Pó Infantil", 45.00, 80, "Infantil Premium", 5),
("Fralda Descartável", 60.00, 500, "BabyCare", 5);


SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 and 60;
UPDATE tb_produtos SET preco = 4.50 WHERE id_produto = 3;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome = "Higiene";