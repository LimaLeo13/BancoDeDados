CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_rh(

Id BIGINT IDENTITY (1,1),
Nome VARCHAR (255) NOT NULL,
Idade INT NOT NULL,
Salario DECIMAL(6,2) NOT NULL,
Cargo VARCHAR (255) NOT NULL,
InicioNaEmpresa DATE,
PRIMARY KEY (Id)
);

SELECT * FROM tb_rh

INSERT INTO tb_rh
(Nome, Idade, Salario, Cargo, InicioNaEmpresa)
VALUES 
('Ricardo', 25, 3300.00, 'DevJr', '2022-02-24'),

INSERT INTO tb_rh
(Nome, Idade, Salario, Cargo, InicioNaEmpresa)
VALUES 
('João', 26, 3500.00, 'DevJr', '2022-03-12'),

INSERT INTO tb_rh
(Nome, Idade, Salario, Cargo, InicioNaEmpresa)
VALUES 
('Andreia', 45, 9000.00, 'DevPlena', '2018-03-12'),

INSERT INTO tb_rh
(Nome, Idade, Salario, Cargo, InicioNaEmpresa)
VALUES 
('Leonardo', 21, 1800.00, 'Estagiario', '2023-08-20');

INSERT INTO tb_rh
(Nome, Idade, Salario, Cargo, InicioNaEmpresa)
VALUES 
('Maria', 45, 1900.00, 'Estagiaria', '2022-09-18');


SELECT * FROM tb_rh WHERE Salario >2000.00 
SELECT * FROM tb_rh WHERE Salario <2000.00

UPDATE tb_rh SET Cargo = 'DevJr' WHERE Id = 5;
UPDATE tb_rh SET Salario = 3300.00 WHERE Id = 5;









