CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100)NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome) 
VALUES ("aves");
INSERT INTO tb_categorias (nome) 
VALUES ("boi");
INSERT INTO tb_categorias (nome) 
VALUES ("peixes");
INSERT INTO tb_categorias (nome) 
VALUES ("porco");


CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(100)NOT NULL,
dtvalidade DATE,
preco DECIMAL(8,2),
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_produtos (nome, dtvalidade, preco, categoria_id) 
VALUES ("picanha", "2022-12-12", 150.00 , 2);
INSERT INTO tb_produtos (nome, dtvalidade, preco, categoria_id) 
VALUES ("costela", "2022-12-12",70.00 , 2);
INSERT INTO tb_produtos (nome, dtvalidade, preco, categoria_id) 
VALUES ("postas", "2022-12-12", 50.00 , 2);
INSERT INTO tb_produtos (nome, dtvalidade, preco, categoria_id) 
VALUES ("bisteca", "2022-12-12", 55.00 ,  4);
INSERT INTO tb_produtos (nome, dtvalidade, preco, categoria_id) 
VALUES ("file de tilápia", "2022-12-12", 45.00 ,  3);
INSERT INTO tb_produtos (nome, dtvalidade, preco, categoria_id) 
VALUES ("lombinho", "2022-12-12", 80.00 ,  4);
INSERT INTO tb_produtos (nome, dtvalidade, preco, categoria_id) 
VALUES ("coxa", "2022-12-12", 35.00 ,  1);

select * from tb_produtos;
select * from tb_produtos WHERE preco > 50.00;
select * from tb_produtos WHERE preco BETWEEN 50 AND 150;
select * from tb_produtos WHERE nome like "%c%";

  SELECT * FROM tb_produtos INNER JOIN tb_categorias
  ON tb_produtos.categoria_id = tb_categorias.id;
 
  SELECT * FROM tb_produtos INNER JOIN tb_categorias
  ON tb_produtos.categoria_id = tb_categorias.id
 WHERE tb_categorias.nome = "aves";
