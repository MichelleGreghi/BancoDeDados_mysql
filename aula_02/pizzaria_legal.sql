DROP DATABASE db_pizzaria_legal;

CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (descricao)
VALUES ("Pizza Salgada");

INSERT INTO tb_categorias (descricao)
VALUES ("Pizza Doce");

INSERT INTO tb_categorias (descricao)
VALUES ("Refrigerante");

INSERT INTO tb_categorias (descricao)
VALUES ("Suco");

INSERT INTO tb_categorias (descricao)
VALUES ("Frete");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
preco decimal(6, 2),
tamanho varchar(255) NULL,
dtpedido date NULL,
dtvalidade date NULL,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, preco, tamanho, dtpedido, categoria_id)
VALUES ("Mussarela", 45.00, "Grande", "2023-03-28", 1);

INSERT INTO tb_pizzas (nome, preco, tamanho, dtpedido, categoria_id)
VALUES ("Nutella", 60.50, "Família", "2023-04-07",2);

INSERT INTO tb_pizzas (nome, preco, tamanho, dtpedido, categoria_id)
VALUES ("Bananada", 59.80, "Broto", "2023-03-30",2);

INSERT INTO tb_pizzas (nome, preco, tamanho, dtpedido, categoria_id)
VALUES ("Frango com Catupiry", 52.20, "Família", "2023-04-01", 1);

INSERT INTO tb_pizzas (nome, preco, tamanho, dtvalidade, categoria_id)
VALUES ("Coca Cola", 12.52, "2 Litros", "2023-12-25", 3);

INSERT INTO tb_pizzas (nome, preco, tamanho, dtvalidade, categoria_id)
VALUES ("Suco Laranja Natural", 15.12, "1 Litro", "2023-05-10", 4);

INSERT INTO tb_pizzas (nome, preco, categoria_id)
VALUES ("Frete Fixo", 8.00, 5);

INSERT INTO tb_pizzas (nome, preco, tamanho, dtpedido, categoria_id)
VALUES ("Palmito", 72.20, "Família", "2023-04-10", 1);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco > 50.00 AND preco < 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.descricao = "Pizza Doce";



