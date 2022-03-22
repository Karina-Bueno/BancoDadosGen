/*Crie um banco de dados para um serviço de uma loja de Material de Construção. 
O nome do Banco de dados deverá ter o seguinte nome db_construindo_vidas. 
O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas.*/
CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

-- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
CREATE TABLE categorias(
	id BIGINT AUTO_INCREMENT,
    marcas VARCHAR(255),
    secoes VARCHAR(255),
    
    PRIMARY KEY (id)
);

-- Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos de material de construção.
CREATE TABLE produtos(
	id BIGINT AUTO_INCREMENT,
    nome_cliente VARCHAR(255),
    nome_produto VARCHAR(255),
    valor INT,
    quantidade INT,
    secoes_id BIGINT,
    
    PRIMARY KEY(id),
    FOREIGN KEY(secoes_id) REFERENCES categorias(id)
);

-- Insira 5 registros na tabela tb_categorias.
INSERT INTO categorias(marcas, secoes) VALUES("Fortgpro", "Jardim");
INSERT INTO categorias(marcas, secoes) VALUES("Brilia LED", "Eletrica");
INSERT INTO categorias(marcas, secoes) VALUES("Tigre", "Encanamento");
INSERT INTO categorias(marcas, secoes) VALUES("Portinari", "Pisos");
INSERT INTO categorias(marcas, secoes) VALUES("Fortaleza", "Areia");

-- Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO produtos(nome_cliente, nome_produto, valor, quantidade, secoes_id) VALUES("José", "Jogo ferramentas Jadim", 189, 1, 1);
INSERT INTO produtos(nome_cliente, nome_produto, valor, quantidade, secoes_id) VALUES("Antonio", "Porcelanato", 285, 150, 4);
INSERT INTO produtos(nome_cliente, nome_produto, valor, quantidade, secoes_id) VALUES("Ana", "Pazinha Larga Jardim e Vaso", 4, 1, 1);
INSERT INTO produtos(nome_cliente, nome_produto, valor, quantidade, secoes_id) VALUES("Jéssica", "Lâmpada Led Bulbo", 100, 10, 2);
INSERT INTO produtos(nome_cliente, nome_produto, valor, quantidade, secoes_id) VALUES("Natasha", "Areia fina", 40, 4, 5);
INSERT INTO produtos(nome_cliente, nome_produto, valor, quantidade, secoes_id) VALUES("Claudia", "Tê De Encanamento De Água", 45, 1, 3);
INSERT INTO produtos(nome_cliente, nome_produto, valor, quantidade, secoes_id) VALUES("Carlos", "Tubo Soldável", 48, 4, 3);
INSERT INTO produtos(nome_cliente, nome_produto, valor, quantidade, secoes_id) VALUES("Beijamin", "Fita Led Ultra", 235, 1, 2);

-- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 100,00.
SELECT * FROM produtos WHERE valor > 100;

-- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 70,00 e R$ 150,00.
SELECT * FROM produtos WHERE valor BETWEEN 70 AND 150;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
SELECT * FROM produtos WHERE nome_produto LIKE "%c%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT * FROM produtos INNER JOIN categorias ON categorias.id = produtos.id;

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com 
os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria 
específica (Exemplo: Todes os produtos que pertencem a categoria hidráulica).*/
SELECT * FROM produtos INNER JOIN categorias ON produtos.secoes_id = categorias.id WHERE secoes_id = 2;

