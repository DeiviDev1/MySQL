CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id BIGINT auto_increment,
tipo VARCHAR(255) NOT NULL,
entrega VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_categoria (tipo , entrega)
VALUES ("doce", "sim" );
INSERT INTO tb_categoria (tipo , entrega)
VALUES ("salgada", "sim" );
INSERT INTO tb_categoria (tipo , entrega)
VALUES ("salgada", "sim" );
INSERT INTO tb_categoria (tipo , entrega)
VALUES ("doce", "não" );
INSERT INTO tb_categoria (tipo , entrega)
VALUES ("salgada", "não" );

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizzas(
id bigint auto_increment,
nome VARCHAR(255) NOT NULL,
valor DECIMAL(8.2)NOT NULL,
tamanho VARCHAR(100) NOT NULL,
quantidade BIGINT(255) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)

);

SELECT * FROM tb_pizzas;


 INSERT INTO tb_pizzas(nome, valor, tamanho, quantidade, categoria_id )
 VALUES ("margerita", 80.00, "grande", 2, 1 );
  INSERT INTO tb_pizzas(nome , valor, tamanho, quantidade, categoria_id )
 VALUES ("4queijos", 100.00, "media", 5, 3 );
  INSERT INTO tb_pizzas(nome , valor, tamanho, quantidade, categoria_id )
 VALUES ("chocolate", 50.00, "grande", 50, 2 );
  INSERT INTO tb_pizzas(nome , valor, tamanho, quantidade, categoria_id )
 VALUES ("calabresa", 40.00, "pequena", 3, 1 );
  INSERT INTO tb_pizzas(nome , valor, tamanho, quantidade, categoria_id )
 VALUES ("napolitana", 60.00, "grande", 2, 2 );
  INSERT INTO tb_pizzas(nome , valor, tamanho, quantidade, categoria_id )
 VALUES ("CARNE SECA", 120.00, "grande", 1, 1);
 
 SELECT * FROM tb_pizzas WHERE valor  > 45.00;
 SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;
 SELECT * FROM  tb_pizzas WHERE nome LIKE "%M%";
 
  SELECT * FROM tb_pizzas INNER JOIN tb_categoria
  ON tb_pizzas.categoria_id = tb_categoria.id;
 
 SELECT * FROM tb_pizzas INNER JOIN tb_categoria
 ON tb_pizzas.categoria_id = tb_categoria.id
 WHERE tb_categoria.tipo = "doce";


 