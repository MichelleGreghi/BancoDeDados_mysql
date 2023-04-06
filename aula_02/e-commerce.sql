CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    produto varchar(255) not null,
    estoque int,
    preco decimal not null,
    vencimento date,
    setor varchar(255) not null,
    primary key(id)
    );
    
ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(produto, estoque, preco, vencimento, setor)
values ("Bolacha Trakinas", 1500, 3.59, "2024-04-21", "Matinais");
INSERT INTO tb_produtos(produto, estoque, preco, vencimento, setor)
values ("Nescafé", 1890, 15.79, "2023-12-05","Matinais");
INSERT INTO tb_produtos(produto, estoque, preco, vencimento, setor)
values ("Sabão em Pó OMO", 3985, 29.31, "2030-11-02","Limpeza");
INSERT INTO tb_produtos(produto, estoque, preco, vencimento, setor)
values ("Detergente Ype", 2145, 2.79, "2032-10-23","Limpeza");
INSERT INTO tb_produtos(produto, estoque, preco, vencimento, setor)
values ("Leite em pó Ninho", 1036, 19.99, "2023-12-31","Matinais");
INSERT INTO tb_produtos(produto, estoque, preco, vencimento, setor)
values ("Chocolate ao Leite", 3256, 5.99, "2024-01-13","Guloseimas");
INSERT INTO tb_produtos(produto, estoque, preco, vencimento, setor)
values ("Papel Higiênico Neve", 1289, 35.21, "2029-02-19","Cuidados Pessoal");
INSERT INTO tb_produtos(produto, estoque, preco, vencimento, setor)
values ("Batata Pringles", 2589, 15.70, "2025-03-15","Guloseimais");
INSERT INTO tb_produtos(produto, estoque, preco, vencimento, setor)
values ("Arroz", 420, 17.99, "2023-07-12","Grãos");
INSERT INTO tb_produtos(produto, estoque, preco, vencimento, setor, codigo_de_barra)
values ("Shampoo", 296, 12.40, "2024-05-25","Cuidados Pessoais", "25896314700");

SELECT * FROM tb_produtos WHERE estoque > 500;

SELECT * FROM tb_produtos WHERE estoque < 500;

ALTER TABLE tb_produtos ADD codigo_de_barra varchar(255);
