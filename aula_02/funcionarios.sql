CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_funcionarios (
	id bigint auto_increment,
    nome varchar(255) not null,
    salario decimal not null,
    cargo varchar(255) not null,
    periodo varchar(255) not null,
    cpf varchar(255),
    primary key (id)
    );

ALTER TABLE tb_funcionarios MODIFY salario decimal (6,2);

SELECT * FROM tb_funcionarios;

INSERT INTO tb_funcionarios (nome, salario, cargo, periodo, cpf)
values ("Abelardo Camargo", 4000.00, "Enfermeiro", "Manhã", "123.456.789-00");
INSERT INTO tb_funcionarios (nome, salario, cargo, periodo, cpf)
values ("Creomilda Santana", 8500.90, "Médica", "Integral", "987.654.321-99");
INSERT INTO tb_funcionarios (nome, salario, cargo, periodo, cpf)
values ("Clotilde Maria", 1900.71, "Recepcionista", "Tarde", "654.321.987-11");
INSERT INTO tb_funcionarios (nome, salario, cargo, periodo, cpf)
values ("Maria Silva", 1899.23, "Auxiliar de Limpeza", "Manhã", "321.654.987-77");
INSERT INTO tb_funcionarios (nome, salario, cargo, periodo, cpf)
values ("Rogerson Padilha", 1999.52, "Porteiro", "Noite", "951.753.852-64");

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

ALTER TABLE tb_funcionarios CHANGE nome funcionario varchar(255);
