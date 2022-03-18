/*Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.*/
create database servico_rh;

use servico_rh;

/*Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.*/
create table funcionarios(
	id bigint auto_increment,
    nome varchar(255),
    cargo varchar(255),
    data_nascimento date,
    ctps int,
    salario int,
    
    primary key(id)
);

-- Popule esta tabela com até 5 dados;
insert into funcionarios(nome, cargo, data_nascimento, ctps, salario) values ("Ana Gomes", "Advogada", 19900513, 00000000, 3000);
insert into funcionarios(nome, cargo, data_nascimento, ctps, salario) values ("Vanessa Silva", "Representante Comercial", 19960201, 11111111, 2098);
insert into funcionarios(nome, cargo, data_nascimento, ctps, salario) values ("Karina Bueno", "Atendente", 19730415, 22222222, 1190);
insert into funcionarios(nome, cargo, data_nascimento, ctps, salario) values ("José Aparecido", "Ajudante Geral", 19691201, 33333333, 1780);

select * from funcionarios;

delete from funcionarios where id = 2;

-- Faça um select que retorne os funcionaries com o salário maior do que 2000.
select salario from funcionarios where salario > 2000;

-- Faça um select que retorne os funcionaries com o salário menor do que 2000.
select salario from funcionarios where salario < 2000;

-- Ao término atualize um dado desta tabela através de uma query de atualização.
update funcionarios set salario = 3500 where id = 3;

