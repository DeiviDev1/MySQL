CREATE DATABASE db_RH;
USE db_RH;

CREATE TABLE tb_colaboradores(
 id bigint auto_increment,
 nome varchar(255)not null,
 CPF varchar(255)not null,
 data_nascimento date,
 salario decimal not null,
 PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, CPF, data_nascimento, salario) 
VALUES("Jose", "731.474.770-11", "1999-03-03", 1000.00 );
INSERT INTO tb_colaboradores(nome, CPF, data_nascimento, salario) 
VALUES("Joao", "107.152.490-96", "1980-07-01", 2000.00 );
INSERT INTO tb_colaboradores(nome, CPF, data_nascimento, salario) 
VALUES("Maria", "587.694.610-90", "2000-01-01", 2000.00 );
INSERT INTO tb_colaboradores(nome, CPF, data_nascimento, salario) 
VALUES("Ana", "263.350.190-78", "2002-05-03", 1000.00 );
INSERT INTO tb_colaboradores(nome, CPF, data_nascimento, salario) 
VALUES("Tobias", "835.331.700-12","2000-01-01", 3000.00);
select * from tb_colaboradores;
select * from tb_colaboradores where salario > 2000.00;
select * from tb_colaboradores where salario < 2000.00;

update tb_colaboradores set salario = 5000.00 where id = 1;
