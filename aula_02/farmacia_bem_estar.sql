CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id bigint AUTO_INCREMENT,
setor varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (setor)
VALUES ("Cosméticos");

INSERT INTO tb_categorias (setor)
VALUES ("Remédios Controlados");

INSERT INTO tb_categorias (setor)
VALUES ("Medicamentos sem Receita Obrigatória");

INSERT INTO tb_categorias (setor)
VALUES ("Teste COVID");

INSERT INTO tb_categorias (setor)
VALUES ("Medicamentos Manipulados");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
preco decimal(6, 2),
dtvalidade date NULL,
dtfabricacao date NULL,
fabricante varchar(255) NOT NULL,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, preco, dtvalidade, dtfabricacao, fabricante, categoria_id)
VALUES ("Roacutan", 195.00, "2023-01-12", "2024-03-28", "Roche", 2);

INSERT INTO tb_produtos (nome, preco, dtvalidade, dtfabricacao, fabricante, categoria_id)
VALUES ("Tylenol Bebê", 41.45, "2023-03-02", "2023-12-28", "Johnson & Johnson", 3);

INSERT INTO tb_produtos (nome, preco, dtvalidade, dtfabricacao, fabricante, categoria_id)
VALUES ("Salicyli C10", 152.90, "2023-04-01", "2025-02-19", "La Roche-Posay", 1);

INSERT INTO tb_produtos (nome, preco, dtvalidade, dtfabricacao, fabricante, categoria_id)
VALUES ("Teste Covid-19", 110.00, "2022-12-30", "2023-11-20","Eco Diagnóstica LTDA", 4);

INSERT INTO tb_produtos (nome, preco, dtvalidade, dtfabricacao, fabricante, categoria_id)
VALUES ("Biotina", 29.90, "2022-11-05", "2023-10-12","Maxinutri", 5);

INSERT INTO tb_produtos (nome, preco, dtvalidade, dtfabricacao, fabricante, categoria_id)
VALUES ("Losartana Potássica", 4.22, "2022-07-23", "2024-05-07","EMS", 3);

INSERT INTO tb_produtos (nome, preco, dtvalidade, dtfabricacao, fabricante, categoria_id)
VALUES ("Sabonete Dove Barra", 5.39, "2023-01-01", "2025-08-23","Unilever", 1);

INSERT INTO tb_produtos (nome, preco, dtvalidade, dtfabricacao, fabricante, categoria_id)
VALUES ("Luftal", 26.14, "2023-03-14", "2025-06-19","Reckitt Benckiser", 3);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco > 5.00 AND preco < 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;


