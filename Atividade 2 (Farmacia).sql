CREATE DATABASE db_farmacia_bem_estar

USE db_farmacia_bem_estar

CREATE TABLE tb_categorias (
	Id BIGINT IDENTITY (1,1),
	Nome VARCHAR (255) NOT NULL,
	Quantidade INT,
	Receita VARCHAR (255) NOT NULL,
	PRIMARY KEY (Id)
);

SELECT * FROM tb_categorias 

CREATE TABLE tb_produtos(
	Id BIGINT IDENTITY (1,1),
	NecessitaDeReceita VARCHAR (255),
	TarjaDoMedicamento VARCHAR (255),
	Preco DECIMAL NOT NULL,
	CupomDeDesconto VARCHAR (255),
	categorias_id BIGINT,
	PRIMARY KEY (Id),
	FOREIGN KEY (categorias_id) REFERENCES tb_produtos(Id)

);

SELECT * FROM tb_produtos

INSERT INTO tb_categorias
(Nome, Quantidade, Receita)
VALUES 
( 'Alprazolam', 3, 'Azul'),
( 'Escitalopram', 2, 'Branca'),
( 'Quetiapina', 1, 'Branca'),
( 'Dipirona', 4, 'Não Necessita'),
( 'Bupropiona', 2, 'Branca');

INSERT INTO tb_produtos
(NecessitaDeReceita, TarjaDoMedicamento, Preco, CupomDeDesconto, categorias_id)
VALUES
('SIM', 'PRETA', 18.00, 'NÃO', 1),
('SIM', 'VERMELHA', 36.00, 'NÃO', 2),
('SIM', 'VERMELHA', 18.00, 'SIM', 3),
('NÃO', 'AMARELA', 27.00, 'SIM', 6),
('SIM', 'LARANJA', 89.00, 'NÃO', 7),
('SIM', 'PRETA', 100.00, 'NÃO', 8),
('SIM', 'VERMELHA', 36.00, 'NÃO', 2),
('NÃO', 'PRETA', 90.00, 'NÃO', 1);

SELECT * FROM tb_produtos WHERE Preco >50.00

SELECT * FROM tb_produtos WHERE Preco BETWEEN 5.00 AND 60.00

SELECT * FROM tb_categorias WHERE Nome LIKE '%c%'

SELECT * FROM tb_categorias INNER JOIN tb_produtos
ON tb_categorias.Id = tb_produtos.categorias_id;

SELECT * FROM tb_categorias INNER JOIN tb_produtos
ON tb_categorias.Id = tb_produtos.categorias_id WHERE tb_categorias.Receita = 'Azul'



