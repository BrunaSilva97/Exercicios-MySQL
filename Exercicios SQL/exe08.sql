CREATE DATABASE  db_construindo_vidas;
USE  db_construindo_vidas;

create table tb_categorias(
	id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

create table tb_produtos(
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2) NOT NULL,
    estoque INT,
	fabricante VARCHAR(255),
    id_categoria BIGINT,
    CONSTRAINT fk_produtos_categorias FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

SELECT *  FROM tb_categorias;
SELECT *  FROM tb_produtos;

INSERT INTO tb_categorias (nome, descricao) VALUES
("Ferramentas", "Produtos utilizados para construção e reparos."),
("Materiais Elétricos", "Itens relacionados a instalações elétricas."),
("Tintas e Acabamentos", "Produtos para pintura e acabamento."),
("Hidráulicos", "Itens relacionados a instalações hidráulicas."),
("Construção Básica", "Materiais básicos para construção como cimento e tijolos.");

INSERT INTO tb_produtos (nome, preco, estoque, fabricante, id_categoria) VALUES
("Martelo", 25.00, 50, "Ferramentas Pro", 1),
("Parafusadeira", 160.00, 20, "ToolMaster", 1),
("Fio Elétrico 10mm", 80.00, 100, "Elétricos Brasil", 2),
("Interruptor Simples", 10.00, 200, "EletroMais", 2),
("Tinta Acrílica Branca", 120.00, 30, "TintasMax", 3),
("Cano PVC 100mm", 30.00, 150, "HidroTech", 4),
("Tijolo Comum", 1.50, 5000, "Construcasa", 5),
("Cimento CP II", 25.00, 300, "Cimento Forte", 5);


SELECT * FROM tb_produtos WHERE preco > 100;
SELECT * FROM tb_produtos WHERE preco BETWEEN 70 and 150;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome = "Ferramentas";

drop table tb_categorias;