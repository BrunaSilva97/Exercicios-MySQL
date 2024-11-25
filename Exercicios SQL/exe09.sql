CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

create table tb_categorias(
	id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

create table tb_cursos(
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    carga_horaria INT,
	preco DECIMAL(8,2),
	nivel VARCHAR(255),
    id_categoria BIGINT,
    CONSTRAINT fk_cursos_categorias FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
("TI", "Cursos relacionados à área da Tecnologia da Informação."),
("Saúde", "Cursos voltados à área da saúde e bem-estar."),
("Negócios", "Cursos relacionados a gestão e empreendedorismo."),
("Idiomas", "Cursos de aprendizado de línguas estrangeiras."),
("Artes", "Cursos voltados para música, pintura e artes em geral.");

INSERT INTO tb_cursos (nome, carga_horaria, preco, nivel, id_categoria) VALUES
("Introdução à Programação", 40, 500.00, "Básico", 1),
("Java para iniciantes", 60, 800.00, "Intermediário", 1),
("Primeiros Socorros", 20, 300.00, "Básico", 2),
("Nutrição Esportiva", 50, 700.00, "Avançado", 2),
("Marketing Digital", 45, 600.00, "Intermediário", 3),
("Inglês para Iniciantes", 80, 1000.00, "Básico", 4),
("Violão para Todos", 40, 400.00, "Básico", 5),
("Desenho Artístico", 50, 450.00, "Intermediário", 5);

SELECT *  FROM tb_categorias;
SELECT *  FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco > 500;
SELECT * FROM tb_cursos WHERE preco BETWEEN 600 and 1000;
SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.id_categoria = tb_categorias.id_categoria;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome = "TI";