CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
    id bigint auto_increment,
    nome varchar(255)not null,
    estoque bigint,
    categoria varchar(255),
    preco decimal (8,2)not null,
    PRIMARY KEY (id)
);
INSERT INTO tb_produtos(nome, estoque, categoria, preco) 
VALUES("Celular",10000, "eletrônicos", 2000.00 );
INSERT INTO tb_produtos(nome, estoque, categoria, preco) 
VALUES("Fogão",5000, "eletrodomésticos", 2000.00 );
INSERT INTO tb_produtos(nome, estoque, categoria, preco) 
VALUES("Tênis",50000, "Calçados", 100.00 );
INSERT INTO tb_produtos(nome, estoque, categoria, preco) 
VALUES("Vestido",4000, "Roupas", 500.00 );
INSERT INTO tb_produtos(nome, estoque, categoria, preco) 
VALUES("RTX4090",500, "GAMES", 7000.00 );
INSERT INTO tb_produtos(nome, estoque, categoria, preco) 
VALUES("PlayStation5",100, "GAMES", 6000.00 );
INSERT INTO tb_produtos(nome, estoque, categoria, preco) 
VALUES("geladeira",100, "eletrodomésticos", 4000.00 );
INSERT INTO tb_produtos(nome, estoque, categoria, preco) 
VALUES("SMART TV",1800, "eletrônicos", 4000.00 );
select * from tb_produtos;
select * from tb_produtos where preco > 500.00;
select * from tb_produtos where preco < 500.00;
update tb_produtos set preco = 450.00 where id = 3;