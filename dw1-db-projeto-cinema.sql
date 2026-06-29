DROP TABLE IF EXISTS filmes, genero;

CREATE TABLE genero(
	id_genero INTEGER,
	nome_genero VARCHAR(80),
	PRIMARY KEY(id_genero)
);

CREATE TABLE filmes(
	id_filme INTEGER,
	nome_filme VARCHAR(200),
	id_genero INTEGER,
	faixa_etaria INTEGER,
	imagem VARCHAR(200),
	PRIMARY KEY (id_filme),
	FOREIGN KEY(id_genero) REFERENCES genero(id_genero)
);
INSERT INTO genero(id_genero, nome_genero)
VALUES(1, 'Comedia'), (2, 'Fantasia'), (3, 'Animacao'),
	  (4, 'Acao'), (5, 'Romance'), (6, 'Aventura');

INSERT INTO filmes(id_filme, nome_filme, id_genero, faixa_etaria, imagem)
VALUES (1, 'O Auto da Compadecida', 1, NULL, './imagens/Compadecida.jpg'),
	   (2, 'Star Wars: A Vingança dos Sith', 6, NULL,'./imagens/StarWars.jpeg'),
	   (3, 'Frozen', 3, NULL, './imagens/Frozen.jpg'),
	   (4, 'Homem-Aranha: De Volta ao Lar', 4, 10, './imagens/Aranha.jpg'),
	   (5, 'Como Eu Era Antes de Você', 5, 12, './imagens/Amor.jpg'),
	   (6, 'Barbie: Escola de Princesas', 3, NULL, './imagens/Barbie.png'),
	   (7, 'Harry Potter e a Pedra Filosofal', 2, NULL, './imagens/Harry.jpg'),
	   (8, 'Os Vingadores: Ultimato', 4, 12, './imagens/Vingadores.jpg'),
	   (9, 'Titanic', 5, 12, './imagens/titanic.jpg'),
	   (10, 'Esqueceram de Mim', 1, NULL, './imagens/esqueceram.png'),
	   (11, 'O Rei Leão', 3, NULL, './imagens/Leão.jpg'),
	   (12, 'Jurrasic Park', 6, 12, './imagens/Jurassic.jpg'),
	   (13, 'Top Gun: Maverick', 4, 12, './imagens/TopGun.png'),
	   (14, 'O Senhor dos Anéis: A Sociedade do Anel', 2, 12, './imagens/Aneis.jpg'),
	   (15, 'Missão Impossível', 4, 12, './imagens/missao.jpg'),
	   (16, 'Shrek', 3, NULL, './imagens/shrek.jpg'),
	   (17, 'As Crônicas de Narnia', 2, NULL, './imagens/narnia.jpg'),
	   (18, 'Piratas do Caribe: A Maldição da Pérola Negra', 6, 12, './imagens/Piratas.jpg'),
	   (19, 'Barbie: Moda e Magia', 3, null, './imagens/Barbie1.jpg'),
	   (20, 'Homem-Aranha: Sem Volta Pra Casa', 4, 10, './imagens/HomemAranha.jpg');

CREATE EXTENSION IF NOT EXISTS UNACCENT;