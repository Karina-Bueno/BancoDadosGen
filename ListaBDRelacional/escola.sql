/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.*/
create database escola;

use escola;

/*Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.*/
create table estudante(
	id bigint auto_increment,
    nome varchar(255),
    serie varchar(50),
    habilidade varchar(255),
    idade int,
    nota float, 
        
    primary key (id) 
);

-- Popule esta tabela com até 8 dados;
insert into estudante(nome, serie, habilidade, idade, nota) values ("Maria", "2ºAno do EM", "Matematica", 16, 10);
insert into estudante(nome, serie, habilidade, idade, nota) values ("Graziele", "8ªSérie", "Português", 14, 8.4);
insert into estudante(nome, serie, habilidade, idade, nota) values ("David", "5ªSérie", "Inglês", 11, 9.8);
insert into estudante(nome, serie, habilidade, idade, nota) values ("Karina", "1ºAno do EM", "Ed Física", 15, 10);
insert into estudante(nome, serie, habilidade, idade, nota) values ("Ana", "1ªSérie", "Artes", 7, 5.2);
insert into estudante(nome, serie, habilidade, idade, nota) values ("Flavio", "3ªSérie", "Português", 9, 7);
insert into estudante(nome, serie, habilidade, idade, nota) values ("Vanessa", "3ºAno do EM", "Filosofia", 18, 6.7);
insert into estudante(nome, serie, habilidade, idade, nota) values ("Claúdia", "1ºAno do EM", "Sociologia", 15, 9.8);

select * from estudante;
 
-- Faça um select que retorne o/as estudantes com a nota maior do que 7.
select * from estudante where nota > 7;

-- Faça um select que retorne o/as estudantes com a nota menor do que 7.
select * from estudante where nota < 7;

update estudante set habilidade = "Português" where id = 8;
