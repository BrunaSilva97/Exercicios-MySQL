CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_classe BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255)
);

CREATE TABLE tb_personagens (
    id_personagem BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nivel INT,
    poder_ataque INT,
	poder_defesa INT
);

ALTER TABLE tb_personagens ADD id_classe BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (id_classe) REFERENCES tb_classes (id_classe);

SELECT *  FROM tb_personagens;
SELECT *  FROM tb_classes;

INSERT INTO tb_classes (nome, descricao) VALUES
("Guerreiro", "Especialista em combate corpo a corpo."),
("Mago", "Mestre das artes arcanas."),
("Arqueiro", "Hábil com ataques usando arco e flecha."),
("Ladino", "Ágil e furtivo."),
("Paladino", "Guerreiro sagrado com habilidades de cura e defesa.");

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, id_classe) VALUES
("Thalion", 10, 1500, 120, 1),
("Eldrin", 15, 3000, 4000, 2),
("Kael", 8, 1000, 7500, 3),
("Zerath", 12, 2000, 3000, 4),
("Auriel", 20, 5000, 1500, 5),
("Ragnar", 7, 800, 1100, 1),
("Lirien", 5, 500, 600, 3), 
("Draven", 18, 4000, 1300, 2);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";
SELECT * FROM tb_personagens WHERE nome LIKE "%d%"; -- linha de código acrescida pois nenhum personagem possui c no nome

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_personagem = tb_classes.id_classe;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.id_classe = tb_classes.id_classe 
WHERE tb_classes.nome = "Arqueiro";

