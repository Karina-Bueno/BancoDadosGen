Create database db_pokemon;

use db_pokemon;

create table tb_kanto(
	id bigint auto_increment,
    nome varchar(255),
    tipo varchar(255),
    ataque int,
    
    primary key(id)
);

select * from tb_kanto;  -- ou select nome from tb_kanto por exemplo

insert into tb_kanto(nome, tipo, ataque) values ("Bulbasaur", "Planta - Poison", 21);

select * from tb_kanto;

alter table tb_kanto ADD defesa int; -- alter table é chamado para fazer qq tipo de alteração 
