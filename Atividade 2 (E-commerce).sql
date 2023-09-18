CREATE DATABASE db_ecommerce

USE db_ecommerce

CREATE TABLE tb_ecommerce (

Id BIGINT IDENTITY (1,1),
Produto VARCHAR (255) NOT NULL,
Nome VARCHAR (255) NOT NULL,
Descricao VARCHAR (255) NOT NULL,
Quantidade INT NOT NULL,
Preco DECIMAL NOT NULL,
PRIMARY KEY (Id)
);

SELECT * FROM tb_ecommerce

INSERT INTO tb_ecommerce
(Produto, Nome, Descricao, Quantidade, Preco)
VALUES 
('Tenis', 'All Star', 'Numero 42', 2, 350);

INSERT INTO tb_ecommerce
(Produto, Nome, Descricao, Quantidade, Preco)
VALUES 
('Tenis', 'Stefan Janoski', 'Numero 42', 2, 550);

INSERT INTO tb_ecommerce
(Produto, Nome, Descricao, Quantidade, Preco)
VALUES 
('Camiseta', 'Vans', 'GG', 1, 100);

INSERT INTO tb_ecommerce
(Produto, Nome, Descricao, Quantidade, Preco)
VALUES 
('Tenis', 'Stefan Janoski', 'Numero 42', 2, 550);

INSERT INTO tb_ecommerce
(Produto, Nome, Descricao, Quantidade, Preco)
VALUES 
('Calça', 'Calça Cargo', 'Numero 40', 3, 570);

INSERT INTO tb_ecommerce
(Produto, Nome, Descricao, Quantidade, Preco)
VALUES 
('Shape', 'Shape DC', 'Shape de 8 pol', 3, 600);

INSERT INTO tb_ecommerce
(Produto, Nome, Descricao, Quantidade, Preco)
VALUES 
('Rolamento', 'Rol. Sptfire', 'ABEC 11', 4, 440);

INSERT INTO tb_ecommerce
(Produto, Nome, Descricao, Quantidade, Preco)
VALUES 
('Truck', 'Truck Element', '139 mm', 2, 600);

INSERT INTO tb_ecommerce
(Produto, Nome, Descricao, Quantidade, Preco)
VALUES 
('Rodas', 'Rodas Moska', 'Roda Moska 53mm', 4, 270);

SELECT * FROM tb_ecommerce WHERE Preco >500
SELECT * FROM tb_ecommerce WHERE Preco <500

UPDATE tb_ecommerce SET Preco = 250 WHERE Id = 1;









