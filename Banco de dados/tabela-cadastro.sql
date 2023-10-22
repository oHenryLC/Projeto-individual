CREATE DATABASE projetoindividual;

USE projetoindividual; 

CREATE TABLE usuario(
idUsuario int primary key auto_increment,
nome VARCHAR(45),
email VARCHAR(45),
senha VARCHAR(50),
personagem VARCHAR(30)
);

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(idUsuario)
);

SELECT * FROM usuario;

SELECT COUNT(*) AS Preferidos, personagem FROM usuario GROUP BY personagem;

CREATE VIEW personagens AS SELECT COUNT(*) AS Preferidos, personagem FROM usuario GROUP BY personagem;

select * from personagens;

CREATE TABLE patrocinador (
idPatrocinador INT PRIMARY KEY auto_increment,
nome VARCHAR(45),
descrição VARCHAR(300)
);

CREATE TABLE numero(
numero INT primary KEY 
);

CREATE TABLE copaPistao(
idCopa INT primary key auto_increment,
dtAno DATE,
lugar VARCHAR(45)
);

CREATE TABLE carro(
idCarro INT primary key auto_increment,
nome varchar(45),
idade int,
modelo varchar(45),
fkNumero INT,
constraint fknum foreign key (fkNumero) references numero(numero),
fkPatrocinador INT,
constraint fkpatro foreign key (fkPatrocinador) references patrocinador(idPatrocinador)
);

CREATE TABLE vencedores (
idVencedores INT primary KEY auto_increment,
fkCopa int,
constraint fkcopapistao foreign key(fkCopa) references copaPistao(idCopa),
fkCarro int,
constraint fkcarrovencedor foreign key(fkCarro) references carro(idCarro)
);