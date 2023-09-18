CREATE DATABASE db_escola

USE db_escola

CREATE TABLE tb_escola (
Id BIGINT IDENTITY (1,1),
Nome VARCHAR (255) NOT NULL,
Idade INT NOT NULL,
Sala INT NOT NULL,
Genero VARCHAR (255),
Nota INT NOT NULL,
PRIMARY KEY (Id)
);

SELECT * FROM tb_escola


INSERT INTO tb_escola
(Nome, Idade, Genero, Sala, Nota)
VALUES 
('Leonardo', '15', 'Masculino', 7, 6),

INSERT INTO tb_escola
(Nome, Idade, Genero, Sala, Nota)
VALUES 
('Rafael', '13', 'Masculino', 5, 8),

INSERT INTO tb_escola
(Nome, Idade, Genero, Sala, Nota)
VALUES 
('Eduardo', '11', 'Masculino', 3, 10),

INSERT INTO tb_escola
(Nome, Idade, Genero, Sala, Nota)
VALUES 
('Rafaela', '16', 'Feminino', 12, 8)

INSERT INTO tb_escola
(Nome, Idade, Genero, Sala, Nota)
VALUES 
('Vitor', '17', 'Masculino', 9, 5)

INSERT INTO tb_escola
(Nome, Idade, Genero, Sala, Nota)
VALUES 
('Ana', '17', 'Feminino', 9, 8);

INSERT INTO tb_escola
(Nome, Idade, Genero, Sala, Nota)
VALUES 
('Joel', '18', 'Masculino', 9, 4)

INSERT INTO tb_escola
(Nome, Idade, Genero, Sala, Nota)
VALUES 
('helena', '12', 'Feminino', 3, 5);

SELECT * FROM tb_escola WHERE Nota >7
SELECT * FROM tb_escola WHERE Nota <7

UPDATE tb_escola SET Nota = 10 WHERE Id = 1;