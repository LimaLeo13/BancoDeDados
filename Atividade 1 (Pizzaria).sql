CREATE DATABASE db_pizzaria_legal


USE db_pizzaria_legal

CREATE TABLE tb_categorias (
	Id BIGINT IDENTITY (1,1),
	Quantidade INT,
	Tamanho VARCHAR (255) NOT NULL,
	PRIMARY KEY (Id)
);

 SELECT * FROM tb_categorias;

 CREATE TABLE tb_pizzas(
	Id BIGINT IDENTITY (1,1),
	Sabores VARCHAR (255),
	Borda VARCHAR (255),
	Adicionais VARCHAR (255),
	Acompanhamentos VARCHAR (255),
	Valor DECIMAL NOT NULL,
	categorias_id BIGINT,
	PRIMARY KEY (Id),
	FOREIGN KEY (categorias_id) REFERENCES tb_pizzas(Id)
);

SELECT * FROM tb_pizzas

INSERT INTO tb_categorias
(Quantidade, Tamanho)
VALUES 
( 2, 'GRANDE'),
( 3, 'MEDIA'),
( 2, 'BROTO');

INSERT INTO tb_pizzas 
(Sabores, Borda, Adicionais, Acompanhamentos, Valor, categorias_id)
VALUES 
('Strogonoff', 'Borda com recheio', 'Nenhum', 'Coca-Cola', 70.00,1),
('Abacaxi', 'Borda sem recheio', 'Canela', 'Guarana', 85.00,2),
('Calabresa', 'Borda com recheio', 'Nenhum', 'Xereta', 67.00,3),
('Chocolate', 'Borda com recheio', 'Graulado', 'Coca-Cola', 100.00,4),
('Banana', 'Borda sem recheio', 'Canela', 'Nenhum', 40.00, 2);

SELECT * FROM tb_pizzas WHERE Valor >45.00

SELECT * FROM tb_pizzas WHERE Valor BETWEEN 50.00 AND 100.00

SELECT * FROM tb_pizzas WHERE Sabores LIKE '%m%'

SELECT * FROM tb_categorias INNER JOIN tb_pizzas
ON tb_categorias.Id = tb_pizzas.categorias_id;

SELECT * FROM tb_categorias INNER JOIN tb_pizzas
ON tb_categorias.Id = tb_pizzas.categorias_id WHERE tb_categorias.Tamanho = 'BROTO'



