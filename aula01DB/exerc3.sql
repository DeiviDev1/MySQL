CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE alunos(
    id bigint auto_increment,
    nome varchar(255)not null,
    data_nascimento  date,
    endereco varchar(255),
    mae_ou_pai varchar(255),
    nota decimal not null,
    PRIMARY KEY (id)
);
INSERT INTO alunos(nome, data_nascimento, endereco, mae_ou_pai, nota) 
VALUES("Junior Jose"," 2010-06-09", "bairro da iluão 123 01", "Jose Junior", 10.0 );
INSERT INTO alunos(nome, data_nascimento, endereco, mae_ou_pai, nota) 
VALUES("owaldo Antonio"," 2010-10-01", "bairro da iluão 123 02", "Maria fulana", 8.5 );
INSERT INTO alunos(nome, data_nascimento, endereco, mae_ou_pai, nota) 
VALUES("Martins Gomes"," 2011-07-09", "bairro da iluão 123 03 ", "Joao Miguel", 5.5 );
INSERT INTO alunos(nome, data_nascimento, endereco, mae_ou_pai, nota) 
VALUES("Bob Esponja"," 2012-09-09", "bairro da iluão 123 04", "Bob esponja pai", 10.0 );
INSERT INTO alunos(nome, data_nascimento, endereco, mae_ou_pai, nota) 
VALUES("Maria Ana"," 2013-10-10", "bairro da iluão 123 05", "Antonia Ana", 7.0 );
INSERT INTO alunos(nome, data_nascimento, endereco, mae_ou_pai, nota) 
VALUES("Maria de lourdes"," 2010-11-09", "bairro da iluão 123 06", "Lourdes de Maria", 7.5 );
INSERT INTO alunos(nome, data_nascimento, endereco, mae_ou_pai, nota) 
VALUES("Vicicius "," 2010-12-03", "bairro da iluão 123 07", "Marcus Vinicius", 3.5 );
INSERT INTO alunos(nome, data_nascimento, endereco, mae_ou_pai, nota) 
VALUES("Jose Maria"," 2014-11-29", "bairro da iluão 123 08", "Maria Jose", 6.5 );

alter table alunos modify nota decimal(3,1);
select * from alunos;
select * from alunos where nota > 7.0;
select * from alunos where nota < 7.0;
update alunos set nota = 9.00 where id = 7;





