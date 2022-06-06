-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/* para workbench - local - desenvolvimento */
CREATE DATABASE hiphop;
USE hiphop;


CREATE TABLE musica (
	id_musica INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100)
);

+-----------+--------------+------+-----+---------+----------------+
| Field     | Type         | Null | Key | Default | Extra          |
+-----------+--------------+------+-----+---------+----------------+
| id_musica | int          | NO   | PRI | NULL    | auto_increment |
| titulo    | varchar(100) | YES  |     | NULL    |                |
+-----------+--------------+------+-----+---------+----------------+


CREATE TABLE usuario (
	id_usuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(60),
	senha VARCHAR(20),
	fk_musica INT,
	FOREIGN KEY (fk_musica) REFERENCES musica (id_musica)
);

+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| id_usuario | int         | NO   | PRI | NULL    | auto_increment |
| nome       | varchar(50) | YES  |     | NULL    |                |
| email      | varchar(60) | YES  |     | NULL    |                |
| senha      | varchar(20) | YES  |     | NULL    |                |
| fk_musica  | int         | YES  | MUL | NULL    |                |
+------------+-------------+------+-----+---------+----------------+


INSERT INTO musica(titulo) VALUES 
('A cultura'),
('Cabeça de Nego'),
('Canão foi tão bom'),
('Cantando pro Santo'),                   
('Cigarro mata'),
('Cocaína'),
('Gíria Criminal'),
('Marginal Alado'),
('Mosquito'),
('Mun-Rá'),
('Na Zona Sul'),
('No Brooklin'),
('O Enxame'),
('O Gatilho'),
('O Gatilho 2'),
('O Invasor'),
('País da Fome'),
('País da Fome, Pt. II'),
('Rap é Compromisso!'),
('Respeito é Pra Quem Tem'),
('Sai da Frente'),
('Um Bom Lugar'),
('Vamo Fuma'),
('Vira Lata S/A');

+-----------+-------------------------+
| id_musica | titulo                  |
+-----------+-------------------------+
|         1 | A cultura               |
|         2 | Cabeça de Nego          |
|         3 | Canão foi tão bom       |
|         4 | Cantando pro Santo      |
|         5 | Cigarro mata            |
|         6 | Cocaína                 |
|         7 | Gíria Criminal          |
|         8 | Marginal Alado          |
|         9 | Mosquito                |
|        10 | Mun-Rá                  |
|        11 | Na Zona Sul             |
|        12 | No Brooklin             |
|        13 | O Enxame                |
|        14 | O Gatilho               |
|        15 | O Gatilho 2             |
|        16 | O Invasor               |
|        17 | País da Fome            |
|        18 | País da Fome, Pt. II    |
|        19 | Rap é Compromisso!      |
|        20 | Respeito é Pra Quem Tem |
|        21 | Sai da Frente           |
|        22 | Um Bom Lugar            |
|        23 | Vamo Fuma               |
|        24 | Vira Lata S/A           |
+-----------+-------------------------+

/* altere esta tabela de acordo com o que está em INSERT de sua API do arduino */

-- create table medida (
-- 	id INT PRIMARY KEY AUTO_INCREMENT,
-- 	dht11_umidade DECIMAL,
-- 	dht11_temperatura DECIMAL,
-- 	luminosidade DECIMAL,
-- 	lm35_temperatura DECIMAL,
-- 	chave TINYINT,
-- 	momento DATETIME,
-- 	fk_aquario INT,
-- 	FOREIGN KEY (fk_aquario) REFERENCES aquario(id)
-- );


/* para sql server - remoto - produção */
-- CREATE TABLE usuario (
-- 	id INT PRIMARY KEY IDENTITY(1,1),
-- 	nome VARCHAR(50),
-- 	email VARCHAR(50),
-- 	senha VARCHAR(50),
-- );

-- CREATE TABLE aviso (
-- 	id INT PRIMARY KEY IDENTITY(1,1),
-- 	titulo VARCHAR(100),
-- 	descricao VARCHAR(150),
-- 	fk_usuario INT FOREIGN KEY REFERENCES usuario(id)
-- );

-- create table aquario (
-- /* em nossa regra de negócio, um aquario tem apenas um sensor */
-- 	id INT PRIMARY KEY IDENTITY(1,1),
-- 	descricao VARCHAR(300)
-- );

-- /* altere esta tabela de acordo com o que está em INSERT de sua API do arduino */

-- CREATE TABLE medida (
-- 	id INT PRIMARY KEY IDENTITY(1,1),
-- 	dht11_umidade DECIMAL,
-- 	dht11_temperatura DECIMAL,
-- 	luminosidade DECIMAL,
-- 	lm35_temperatura DECIMAL,
-- 	chave TINYINT,
-- 	momento DATETIME,
-- 	fk_aquario INT FOREIGN KEY REFERENCES aquario(id)
-- );
