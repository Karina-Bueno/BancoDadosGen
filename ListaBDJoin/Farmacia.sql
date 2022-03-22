/*Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
informações dos produtos desta empresa. O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.*/
CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

/*Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.*/
CREATE TABLE tb_categoria(
	id BIGINT AUTO_INCREMENT,
	medicamentos BOOLEAN,
    higiene BOOLEAN,
    secao VARCHAR(255),
    
    PRIMARY KEY(id)
);

/*Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
esqueça de criar a foreign key de tb_categoria nesta tabela).*/
CREATE TABLE tb_produto(
	id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(255),
    descricao VARCHAR(255),
    valor INT,
    quantidade INT,
    embalagem VARCHAR(255),
    secao_id BIGINT,
    
    PRIMARY KEY(id),
    FOREIGN KEY(secao_id) REFERENCES tb_categoria(id)    
);

-- Popule esta tabela Categoria com até 5 dados.
INSERT INTO tb_categoria(medicamentos, higiene, secao) VALUES (true, false, "Infantil");
INSERT INTO tb_categoria(medicamentos, higiene, secao) VALUES (true, true, "Feminino");
INSERT INTO tb_categoria(medicamentos, higiene, secao) VALUES (true, false, "Masculino");
INSERT INTO tb_categoria(medicamentos, higiene, secao) VALUES (true, false, "Feminino");
INSERT INTO tb_categoria(medicamentos, higiene, secao) VALUES (false, true, "Masculino");

-- Popule esta tabela Produto com até 8 dados.
INSERT INTO tb_produto(nome, descricao, valor, quantidade, embalagem, secao_id) VALUES ("Puran", "Medicamento indicado para o tratamento de hipotireoidismo", 20, 1, "caixa", 3);
INSERT INTO tb_produto(nome, descricao, valor, quantidade, embalagem, secao_id) VALUES ("Aas Infantil", "Para o alívio de dores de leve ou moderada intensidade em crianças", 21, 1, "caixa", 1);
INSERT INTO tb_produto(nome, descricao, valor, quantidade, embalagem, secao_id) VALUES ("Torsilax e Shampoo Dove", "Medicamento indicado para o tratamento de diversos tipos de dores, shampoo para cabelos lisos", 30, 2, "caixa, tubo 400ml", 2);
INSERT INTO tb_produto(nome, descricao, valor, quantidade, embalagem, secao_id) VALUES ("Glifage", "Medicamento utilizados para tratar pacientes com diabetes tipo 2", 29, 1, "caixa", 3);
INSERT INTO tb_produto(nome, descricao, valor, quantidade, embalagem, secao_id) VALUES ("Neosaldina", " Medicamento é bastante utilizado para tratar dores de cabeça, musculares e até tensões", 10, 1, "cartela", 4);
INSERT INTO tb_produto(nome, descricao, valor, quantidade, embalagem, secao_id) VALUES ("Shampoo Anticaspa Clear", "Shampoo para controle de caspa", 22, 1, "tubo 400ml", 5);
INSERT INTO tb_produto(nome, descricao, valor, quantidade, embalagem, secao_id) VALUES ("Allegra", "Medicamento indicado para o tratamento de alergia respiratória", 18, 1, "caixa", 1);
INSERT INTO tb_produto(nome, descricao, valor, quantidade, embalagem, secao_id) VALUES ("Dorflex e Sabonete Phebo Lavanda", "Medicamento analgésico que funciona para diferentes tipos de dores e Sabonete para banho", 18, 2, "caixa", 2);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
SELECT * FROM tb_produto WHERE valor > 50;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_produto WHERE valor BETWEEN 3 AND 60;

-- Faça um select utilizando LIKE buscando os Produtos com a letra B.
SELECT * FROM tb_produto WHERE nome LIKE "%b_%";

-- Faça um um select com Inner join entre tabela categoria e produto.
SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_produto.id = tb_categoria.id;

-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).
SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_produto.secao_id = tb_categoria.id WHERE secao_id = 1;