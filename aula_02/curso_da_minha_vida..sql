CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
modalidade varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (descricao, modalidade)
VALUES ("Tecnologia", "Online");

INSERT INTO tb_categorias (descricao, modalidade)
VALUES ("Enfermagem", "Presencial");

INSERT INTO tb_categorias (descricao, modalidade)
VALUES ("Idiomas", "Online");

INSERT INTO tb_categorias (descricao, modalidade)
VALUES ("Administração", "Presencial");

INSERT INTO tb_categorias (descricao, modalidade)
VALUES ("Gastronomia", "Presencial");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
dtinicio date NOT NULL,
periodo varchar(255) NULL,
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, dtinicio, preco, categoria_id)
VALUES ("Desenvolvedor Java FullStack Junior", "2023-04-10", 890.00, 1);

INSERT INTO tb_produtos (nome, dtinicio, preco, categoria_id)
VALUES ("Auxiliar e Técnico Enfermagem", "2023-04-17", 450.00, 2);

INSERT INTO tb_produtos (nome, dtinicio, preco, categoria_id)
VALUES ("Inglês Iniciante - Intermediário", "2023-04-24", 399.00, 3);

INSERT INTO tb_produtos (nome, dtinicio, preco, categoria_id)
VALUES ("Contabilidade", "2023-04-10", 620.00, 4);

INSERT INTO tb_produtos (nome, dtinicio, preco, categoria_id)
VALUES ("Desenvolvedor .NET", "2023-04-24", 850.00, 1);

INSERT INTO tb_produtos (nome, dtinicio, preco, categoria_id)
VALUES ("Culinária Italiana", "2023-04-17", 720.00 , 5);

INSERT INTO tb_produtos (nome, dtinicio, preco, categoria_id)
VALUES ("RH - Primeiros Passos", "2023-04-10", 280.00 , 4);

INSERT INTO tb_produtos (nome, dtinicio, preco, categoria_id)
VALUES ("Confeitaria", "2023-04-24", 400.00 , 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500.00;

SELECT * FROM tb_produtos WHERE preco > 600.00 AND preco < 1000.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%J%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.descricao = "Tecnologia";
