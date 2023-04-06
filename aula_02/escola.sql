CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
	id bigint auto_increment,
    nome varchar(255) not null,
    idade int,
    serie varchar(255) not null,
    nota decimal,
    periodo varchar(255) not null,
    primary key(id)
    );
    
SELECT * FROM tb_alunos;

ALTER TABLE tb_alunos MODIFY nota decimal(4,2);

INSERT INTO tb_alunos(nome, idade, serie, nota, periodo)
values ("Claire Kyle", 6, "1º Ano A", 6.5, "Manhã");
INSERT INTO tb_alunos(nome, idade, serie, nota, periodo)
values ("Loki Laufeysson", 7, "2º Ano B", 7.5, "Tarde");
INSERT INTO tb_alunos(nome, idade, serie, nota, periodo)
values ("Peter Parker", 12, "7º Ano A", 5.0, "Tarde");
INSERT INTO tb_alunos(nome, idade, serie, nota, periodo)
values ("Mário Brós", 14, "9º Ano C", 9.5, "Manhã");
INSERT INTO tb_alunos(nome, idade, serie, nota, periodo)
values ("Bruce Banner", 8, "3º Ano A", 10.0, "Tarde");
INSERT INTO tb_alunos(nome, idade, serie, nota, periodo)
values ("Tony Stark", 10, "5º Ano B", 8.5, "Manhã");
INSERT INTO tb_alunos(nome, idade, serie, nota, periodo)
values ("Natasha Romanova", 11, "6º Ano C", 9.5, "Tarde");
INSERT INTO tb_alunos(nome, idade, serie, nota, periodo)
values ("Steve Rogers", 9, "4º Ano A", 6.0, "Manhã");

SELECT * FROM tb_alunos WHERE nota > 7;

SELECT * FROM tb_alunos WHERE nota < 7;

DELETE FROM tb_alunos WHERE id = 9;

ALTER TABLE tb_alunos CHANGE serie ano varchar(255);    
