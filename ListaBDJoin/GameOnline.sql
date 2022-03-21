CREATE DATABASE game_online_generation;

USE game_online_generation;

CREATE TABLE tb_classe(
	id BIGINT AUTO_INCREMENT,
    nivel INT,
    classe VARCHAR(255),
    habilidade VARCHAR(255),
    arma VARCHAR(255),
    
	PRIMARY KEY (id)
);

CREATE TABLE tb_personagem(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255),
    raca VARCHAR(255),
    vida INT,
    defesa INT,
    ataque INT,
    classe_id BIGINT,
    
    PRIMARY KEY(id),
    FOREIGN KEY(classe_id) REFERENCES tb_classe(id)
);

INSERT INTO tb_classe(nivel, classe, habilidade, arma) VALUES(99,"Guerreiro", "Pericia em armas", "Espada de duas mãos");
INSERT INTO tb_classe(nivel, classe, habilidade, arma) VALUES(200, "Mago", "Resistência a magia", "Cajado");
INSERT INTO tb_classe(nivel, classe, habilidade, arma) VALUES(100, "Ladino", "Mãos leves", "Adaga");
INSERT INTO tb_classe(nivel, classe, habilidade, arma) VALUES(149, "Arqueiro", "Arquerismo", "Arco e Flecha");
INSERT INTO tb_classe(nivel, classe, habilidade, arma) VALUES(50, "Bardo", "Lábia", "Alaude");

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id) VALUES("Cleison", "Anão", 1500, 3000, 12000, 1);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id) VALUES("Josias", "Elfo negro", 1000, 1200, 3000, 5);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id) VALUES("Vanuza", "Centauro", 5000, 700, 7500, 2);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id) VALUES("Cleide", "Humana", 500, 6000, 2000, 3);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id) VALUES("Ariel", "Construto", 2000, 8800, 4000, 4);
INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id) VALUES("Anitta", "Elfa", 2500, 6000, 8000, 3);

SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa >= 1000 AND defesa <= 2000;

SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000  AND 2000; -- outra forma de fazer

SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.id;

SELECT * FROM tb_classe INNER JOIN tb_personagem ON tb_personagem.classe_id = tb_classe.id WHERE classe_id = 3;

