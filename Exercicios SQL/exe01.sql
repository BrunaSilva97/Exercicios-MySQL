CREATE DATABASE rh_empresa;

USE rh_empresa;

CREATE TABLE rh_funcionarios(
id BIGINT auto_increment,
nome VARCHAR(255)  NOT NULL,
email VARCHAR(255),
cargo VARCHAR(255),
datainicio DATE,
salario DECIMAL(8,2),
PRIMARY KEY (ID)
);

SELECT * FROM rh_funcionarios;

DESCRIBE rh_funcionarios;
-- comando DESCRIBE usado pois o MySQL está interpretando Cargo como INT

INSERT INTO rh_funcionarios (nome, email, cargo, datainicio, salario)
VALUES ("Maria Rosário", "MariaR@empresa.br", "Gerente", "2020-05-30", 6000);
INSERT INTO rh_funcionarios (nome, email, cargo, datainicio, salario)
VALUES ("Sandra dos Reis", "SandraR@empresa.br", "Coordenadora", "2022-11-22", 7000);
INSERT INTO rh_funcionarios (nome, email, cargo, datainicio, salario)
VALUES ("Victor Novaes", "VictorN@empresa.br", "Auxiliar Administrativo", "2023-03-05", 2500);
INSERT INTO rh_funcionarios (nome, email, cargo, datainicio, salario)
VALUES ("Agatha Lima", "AgathaL@empresa.br", "Auxiliar Administrativo", "2024-09-10", 2500);
INSERT INTO rh_funcionarios (nome, email, cargo, datainicio, salario)
VALUES ("Fernando Souza", "FernandoS@empresa.br", "Estagiário", "2023-12-22", 1470);

ALTER TABLE rh_funcionarios MODIFY COLUMN cargo VARCHAR(255);
-- comando usado para corrigir cargo de int para varchar

SELECT * FROM rh_funcionarios WHERE salario >= 2000;
SELECT * FROM rh_funcionarios WHERE salario <= 2000;

UPDATE rh_funcionarios SET salario = 1800 WHERE id = 5;