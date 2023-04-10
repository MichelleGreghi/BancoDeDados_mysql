CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
setor varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (descricao, setor)
VALUES ("Aves", "Fresco");

INSERT INTO tb_categorias (descricao, setor)
VALUES ("Bovina", "Fresco");

INSERT INTO tb_categorias (descricao, setor)
VALUES ("Suina", "Fresco");

INSERT INTO tb_categorias (descricao, setor)
VALUES ("Produtos Prontos", "Congelados");

INSERT INTO tb_categorias (descricao, setor)
VALUES ("Frios", "Fresco");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
dtvalidade date NULL,
dtabastecimento date NULL,
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, dtabastecimento, preco, categoria_id)
VALUES ("Peito de Frango", "2023-04-10", 13.99, 1);

INSERT INTO tb_produtos (nome, dtabastecimento, preco, categoria_id)
VALUES ("Filé Mignon", "2023-04-10", 89.98, 2);

INSERT INTO tb_produtos (nome, dtabastecimento, preco, categoria_id)
VALUES ("Panceta", "2023-04-10", 33.98, 3);

INSERT INTO tb_produtos (nome, dtvalidade, preco, categoria_id)
VALUES ("Nuggets", "2024-01-13", 23.89, 4);

INSERT INTO tb_produtos (nome, dtabastecimento, preco, categoria_id)
VALUES ("Presunto Sadia", "2023-04-09", 28.99, 5);

INSERT INTO tb_produtos (nome, dtabastecimento, preco, categoria_id)
VALUES ("Contra Filé", "2023-04-09", 91.66, 2);

INSERT INTO tb_produtos (nome, dtabastecimento, preco, categoria_id)
VALUES ("Asinha", "2023-04-09", 16.99, 1);

INSERT INTO tb_produtos (nome, dtvalidade, preco, categoria_id)
VALUES ("Salsicha HotDog", "2024-04-09", 38.90, 4);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco > 50.00 AND preco < 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.descricao = "Aves";


