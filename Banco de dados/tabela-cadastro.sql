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

SELECT COUNT(*) AS Preferidos, personagem FROM usuario GROUP BY personagem