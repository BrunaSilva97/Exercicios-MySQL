CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE estudantes(
ra BIGINT AUTO_INCREMENT,
nome VARCHAR(255)  NOT NULL,
idade INT,
turma CHAR(3),
data_matricula DATE,
media_notas DECIMAL(4,2),
PRIMARY KEY (ra)
);

SELECT * FROM estudantes;

INSERT INTO estudantes (nome, idade, turma, data_matricula, media_notas)
VALUES 
("Ana Clara", 14, "9A" , "2023-01-15", 8.5), 
("João Pedro", 15, "9B" , "2023-01-20", 7.8), 
("Matheus Silva", 16, "1A" , "2022-12-10", 9.2), 
("Enzo Gabriel", 15, "9A" , "2023-02-05", 6.9), 
("Julia Ramos", 13, "8B" , "2024-02-01", 7.3),
("Beatriz Lima", 14, "8A" , "2023-01-05", 7.0),
("Maria Clara", 15, "1B" , "2023-03-10", 4.0),
("Lucas Almeida", 13, "8A" , "2023-01-18", 5.5);


SELECT * FROM estudantes WHERE media_notas >= 7;
SELECT * FROM estudantes WHERE media_notas < 7;

UPDATE estudantes SET turma = "1A" WHERE ra = 7;

