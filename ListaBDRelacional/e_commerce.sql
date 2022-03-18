/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.*/
create database e_commerce;

use e_commerce;

/*Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.*/
create table produtos(
	id bigint auto_increment,
    nome varchar(255),
    categoria varchar(255),
    valor float,
    num_serie int,
    quantidade int,
    
    primary key(id)
);

-- Popule esta tabela com até 8 dados;
insert into produtos(nome, categoria, valor, num_serie, quantidade) values ("Água Mineral sem gás", "Bebida", 2.0, 12345, 3);
insert into produtos(nome, categoria, valor, num_serie, quantidade) values ("Biscoito Recheado Negresco", "Biscoitos", 2.79, 23456, 5);
insert into produtos(nome, categoria, valor, num_serie, quantidade) values ("Shampoo", "Higiene", 17.90, 34567, 1);
insert into produtos(nome, categoria, valor, num_serie, quantidade) values ("Sabonete", "Higiene", 1.89, 45678, 4);
insert into produtos(nome, categoria, valor, num_serie, quantidade) values ("Vasoura", "Limpeza", 23.50, 56789, 1);
insert into produtos(nome, categoria, valor, num_serie, quantidade) values ("Detergente", "Limpeza", 1.69, 67891, 2);
insert into produtos(nome, categoria, valor, num_serie, quantidade) values ("Blusa de Ginastica Feminina", "Moda Feminina", 29.90, 78912, 1);
insert into produtos(nome, categoria, valor, num_serie, quantidade) values ("Cacto", "Jardim", 10.00, 89123, 2);
insert into produtos(nome, categoria, valor, num_serie, quantidade) values ("Fogão", "Eletrodomestico", 999.90, 101114, 1);

select * from produtos;

-- Faça um select que retorne os produtos com o valor maior do que 500.
select * from produtos where valor > 500;

-- Faça um select que retorne os produtos com o valor menor do que 500.
select * from produtos where valor < 500;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update produtos set quantidade = 10 where id = 1;