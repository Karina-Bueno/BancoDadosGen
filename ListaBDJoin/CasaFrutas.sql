/*Crie um banco de dados para um serviço de um Açougue ou de um Hortifruti. 
O nome do Banco de dados deverá ter o seguinte nome db_cidade_das_carnes ou cidade_das_frutas.
O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas*/
CREATE DATABASE cidade_das_frutas;

USE cidade_das_frutas;

-- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos
CREATE TABLE categorias(
	id BIGINT AUTO_INCREMENT,
    organicos BOOLEAN,
    secao VARCHAR(255),
	
    PRIMARY KEY(id)
);

-- Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos do Hortifruti.
CREATE TABLE produtos(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
    quantidade INT,
    preco FLOAT,
    peso VARCHAR(255),
    secao_id BIGINT,
    
    PRIMARY KEY(id),
    FOREIGN KEY(secao_id) REFERENCES categorias(id)
);

-- Insira 5 registros na tabela tb_categorias.
INSERT INTO categorias(organicos, secao) VALUES (true, "verduras");
INSERT INTO categorias(organicos, secao) VALUES (false, "vegetais");
INSERT INTO categorias(organicos, secao) VALUES (true, "frutas");
INSERT INTO categorias(organicos, secao) VALUES (false, "legumes");
INSERT INTO categorias(organicos, secao) VALUES (true, "hortaliças");

-- Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO produtos(nome, quantidade, preco, peso, secao_id) VALUES ("Beterraba", 5, 24.85, "3 KG", 4);
INSERT INTO produtos(nome, quantidade, preco, peso, secao_id) VALUES ("Alface", 3, 10.0, "900 gm", 5);
INSERT INTO produtos(nome, quantidade, preco, peso, secao_id) VALUES ("Batata", 10, 8.55, "5 KG", 4);
INSERT INTO produtos(nome, quantidade, preco, peso, secao_id) VALUES ("Maçã", 6, 12.59, "1 KG", 3);
INSERT INTO produtos(nome, quantidade, preco, peso, secao_id) VALUES ("Brócolis", 4, 26.0, "4 maços", 1);
INSERT INTO produtos(nome, quantidade, preco, peso, secao_id) VALUES ("Abobrinha", 7, 16.90, "4 KG", 2);
INSERT INTO produtos(nome, quantidade, preco, peso, secao_id) VALUES ("Lichia", 30, 80.0, "2 KG", 3);
INSERT INTO produtos(nome, quantidade, preco, peso, secao_id) VALUES ("Couve", 3, 14.70, "3 maços", 5);

-- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00
SELECT * FROM produtos WHERE preco > 50.0;

-- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00.
SELECT * FROM produtos WHERE preco BETWEEN 50.0 AND 150.0;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
SELECT * FROM produtos WHERE nome LIKE "%c_%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT * FROM produtos INNER JOIN categorias ON categorias.id = produtos.id;

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos 
com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma 
categoria específica (Exemplo: Todes os produtos que pertencem a categoria aves ou frutas).*/
SELECT * FROM produtos INNER JOIN categorias ON produtos.secao_id = categorias.id WHERE secao_id = 4;