CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT auto_increment,
classe VARCHAR(255) NOT NULL,
atributo VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO tb_classes(classe , atributo)
VALUES ("GUERREIRO", "FORÇA" );
INSERT INTO tb_classes( classe , atributo)
VALUES ("MAGO", "INTELIGÊNCIA" );
INSERT INTO tb_classes( classe , atributo)
VALUES ("ARQUEIRO", "AGILIDADE" );
INSERT INTO tb_classes( classe , atributo)
VALUES ("DEFENSOR", "DEFESA" );
INSERT INTO tb_classes( classe , atributo)
VALUES ("ASSASSINO", "FURTIVIDADE" );

SELECT * FROM tb_classes;

CREATE TABLE tb_personagens(
id bigint auto_increment,
nome VARCHAR(255) NOT NULL,
ataque  BIGINT(255)NOT NULL,
defesa BIGINT(255) NOT NULL,
hp BIGINT(255) NOT NULL,
gold DECIMAL (65),
classes_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)

);

SELECT * FROM tb_personagens;


 INSERT INTO tb_personagens(nome ,ataque, defesa, hp, gold, classes_id )
 VALUES ("matanub ",1100, 500, 1000, 10.0, 1 );
 INSERT INTO tb_personagens(nome,ataque, defesa, hp, gold, classes_id )
 VALUES ("jack",1500, 300, 500, 9.0, 2 );
 INSERT INTO tb_personagens(nome,ataque, defesa, hp, gold, classes_id )
 VALUES ("killnow",700, 400, 700, 5.0, 3 );
INSERT INTO tb_personagens(nome,ataque, defesa, hp, gold, classes_id )
 VALUES ("jao",500, 2000, 3000, 5.0, 4 );
INSERT INTO tb_personagens(nome,ataque, defesa, hp, gold, classes_id )
 VALUES ("hitkill",800, 800, 1500, 7.0 ,5);
 INSERT INTO tb_personagens(nome,ataque, defesa, hp, gold, classes_id )
 VALUES ("abacateverde",900, 800, 300, 6.0 , 2 );
 INSERT INTO tb_personagens(nome,ataque, defesa, hp, gold, classes_id )
 VALUES ("13vidas",2000, 800, 100, 0.0, 4 );
 INSERT INTO tb_personagens(nome,ataque, defesa, hp, gold, classes_id )
 VALUES ("novato", 0, 2000, 3500, 2.0 , 5);
 
 SELECT * FROM tb_personagens WHERE ataque > 1500;
 SELECT * FROM tb_personagens WHERE ataque BETWEEN 1000 AND 2000;
 SELECT * FROM  tb_personagens WHERE nome LIKE "%c%";
 
 SELECT * FROM tb_personagens INNER JOIN tb_classes
 ON tb_personagens.classes_id = tb_classes.id;
 
 SELECT * FROM tb_personagens INNER JOIN tb_classes
 ON tb_personagens.classes_id = tb_classes.id
 WHERE tb_classes.classe = "MAGO";

 
 
 
