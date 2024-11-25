CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

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
	peso_kg VARCHAR(255),
    id_categoria BIGINT,
    CONSTRAINT fk_produtos_categorias FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

SELECT *  FROM tb_categorias;
SELECT *  FROM tb_produtos;

INSERT INTO tb_categorias (nome, descricao) VALUES
("Bovinos", "Produtos de origem de boi e vaca."),
("Suínos", "Produtos de origem de porco."),
("Frango", "Produtos de origem de galinha."),
("Defumados", "Produtos conservados por defumação."),
("Embutidos", "Produtos processados.");


INSERT INTO tb_produtos (nome, preco, estoque, peso_kg, id_categoria) VALUES
("Contra-filé", 74.00, 100, "1.2", 1),
("Frango inteiro", 12.00, 50, "1.5", 3),
("Costela Suína", 55.00, 200, "1.3", 2),
("Bacon", 42.50, 150, "0.4", 4),
("Linguiça Suína", 26.00, 80, "0.5", 4),
("Peito de Frango", 21.00, 120, "0.8", 3),
("Picanha", 160.00, 60, "1.0", 1),
("Mortadela", 35.00, 200, "0.2", 5);

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50 and 150;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome = "Suínos";