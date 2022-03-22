/*Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa. O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.*/
CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.*/
CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
	tamanho VARCHAR (255),
    salgada BOOLEAN, 
    doce BOOLEAN,
    
    PRIMARY KEY(id)
);

/*Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).*/
CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT,
    nome_cliente VARCHAR(255),
    sabores VARCHAR(255),
    quantidade INT,
    valor INT,
    retirada_loja BOOLEAN,
    tamanho_id BIGINT,
    
    
    PRIMARY KEY(id),
    FOREIGN KEY (tamanho_id) REFERENCES tb_categoria(id)
);

-- Popule esta tabela Categoria com até 5 dados.
INSERT INTO tb_categoria(tamanho, salgada, doce) VALUES("Grande", true, true);
INSERT INTO tb_categoria(tamanho, salgada, doce) VALUES("Grande", true, false);
INSERT INTO tb_categoria(tamanho, salgada, doce) VALUES("Média", true, true);
INSERT INTO tb_categoria(tamanho, salgada, doce) VALUES("Média", false, true);
INSERT INTO tb_categoria(tamanho, salgada, doce) VALUES("Pequena", true, true);

-- Popule esta tabela pizza com até 8 dados.
INSERT INTO tb_produto(nome_cliente, sabores, quantidade, valor, retirada_loja, tamanho_id) VALUES("Maria", "Marguerita, Chocolate", 2, 60, true, 1);
INSERT INTO tb_produto(nome_cliente, sabores, quantidade, valor, retirada_loja, tamanho_id) VALUES("José", "Calabresa, Romeu e Julieta", 3, 120, false, 3);
INSERT INTO tb_produto(nome_cliente, sabores, quantidade, valor, retirada_loja, tamanho_id) VALUES("Sônia", "Portuguesa, Chocolate", 2, 80, false, 5);
INSERT INTO tb_produto(nome_cliente, sabores, quantidade, valor, retirada_loja, tamanho_id) VALUES("Kauã", "Chocolate", 1, 39, true, 4);
INSERT INTO tb_produto(nome_cliente, sabores, quantidade, valor, retirada_loja, tamanho_id) VALUES("Marcia", "Três Queijos", 4, 180, true, 2);
INSERT INTO tb_produto(nome_cliente, sabores, quantidade, valor, retirada_loja, tamanho_id) VALUES("Ana", "Atum, Chocolate", 2, 75, false, 1);
INSERT INTO tb_produto(nome_cliente, sabores, quantidade, valor, retirada_loja, tamanho_id) VALUES("Maria", "Calabresa, Romeu e Julieta", 2, 80, false, 3);
INSERT INTO tb_produto(nome_cliente, sabores, quantidade, valor, retirada_loja, tamanho_id) VALUES("Maria", "Chocolate", 1, 35, false, 4);

-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
SELECT * FROM tb_produto WHERE valor > 45;

-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
SELECT * FROM tb_produto WHERE valor BETWEEN 29 AND 60;
 
-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
SELECT * FROM tb_produto WHERE sabores LIKE "%c%";

-- Faça um um select com Inner join entre tabela categoria e pizza.
SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_produto.id = tb_categoria.id;
 
/*Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).*/
SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_produto.tamanho_id = tb_categoria.id WHERE tamanho_id = 1;