/*Crie um banco de dados para uma plataforma de Cursos Online (EAD).
O nome do Banco de dados deverá ter o seguinte nome db_curso_da_minha_vida. 
O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_cursos e tb_categorias, que deverão estar relacionadas*/
CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

-- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
CREATE TABLE categorias(
	id BIGINT AUTO_INCREMENT,
	materias VARCHAR(255),
    disciplinas VARCHAR(255),
    
    PRIMARY KEY (id)
);

-- Crie a tabela tb_cursos e determine 4 atributos, além da Chave Primária, relevantes aos produtos do curso.
CREATE TABLE curso(
	id BIGINT AUTO_INCREMENT,
	aluno VARCHAR(255),
    nota INT,
    idade INT,
    serie VARCHAR(255), 
    disciplinas_id BIGINT,
    
    PRIMARY KEY (id), 
    FOREIGN KEY (disciplinas_id) REFERENCES categorias(id)
);

-- Insira 5 registros na tabela tb_categorias
INSERT INTO categorias(materias, disciplinas) VALUES ("Filosofia moderna", "Filosofia"); 
INSERT INTO categorias(materias, disciplinas) VALUES ("Leis de Newton", "Fisica"); 
INSERT INTO categorias(materias, disciplinas) VALUES ("Gêneros textuais", "Português"); 
INSERT INTO categorias(materias, disciplinas) VALUES ("Álgebra", "Matematica"); 
INSERT INTO categorias(materias, disciplinas) VALUES ("Vida e evolução", "Ciência"); 

-- Insira 8 registros na tabela tb_cursos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO curso(aluno, nota, idade, serie, disciplinas_id) VALUES ("Amanda", 10, 11, "5º Ano", 4); 
INSERT INTO curso(aluno, nota, idade, serie, disciplinas_id) VALUES ("Igor", 7, 17, "2º Ano", 1); 
INSERT INTO curso(aluno, nota, idade, serie, disciplinas_id) VALUES ("Sarah", 9, 14, "7º Ano", 3); 
INSERT INTO curso(aluno, nota, idade, serie, disciplinas_id) VALUES ("Talita", 4, 16, "3º Ano", 2); 
INSERT INTO curso(aluno, nota, idade, serie, disciplinas_id) VALUES ("Victor", 8, 12, "6º Ano", 5); 
INSERT INTO curso(aluno, nota, idade, serie, disciplinas_id) VALUES ("Gustavo", 10, 17, "3º Ano", 2);
INSERT INTO curso(aluno, nota, idade, serie, disciplinas_id) VALUES ("Gabriela", 3, 12, "5º Ano", 4);
INSERT INTO curso(aluno, nota, idade, serie, disciplinas_id) VALUES ("Tabata", 6, 13, "6º Ano", 3);

-- Faça um SELECT que retorne todes os cursos cujo valor seja maior do que 5
SELECT * FROM curso WHERE nota > 5;

-- Faça um SELECT que retorne todes os cursos cujo valor esteja no intervalo 6 até 10
SELECT * FROM curso WHERE nota BETWEEN 6 AND 10;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os cursos que possuam a letra J no atributo nome.
SELECT * FROM categorias WHERE disciplinas LIKE "%J%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias.
SELECT * FROM curso INNER JOIN categorias ON categorias.id = curso.id;

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos
 com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma 
 categoria específica (Exemplo: Todes os cursos que pertencem a categoria Java)*/
 SELECT * FROM curso INNER JOIN categorias ON curso.disciplinas_id = categorias.id WHERE disciplinas_id = 5;