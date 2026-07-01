DROP TABLE IF EXISTS sinopse, filmes, genero;

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

CREATE TABLE sinopse(
	id_sinopse INTEGER,
	filme_sinopse VARCHAR(900),
	id_filme INTEGER,
	PRIMARY KEY(id_sinopse),
	FOREIGN KEY(id_filme) REFERENCES filmes(id_filme)
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

INSERT INTO sinopse(id_sinopse, filme_sinopse, id_filme)
VALUES (1, 'João Grilo e Chicó são os amigos inseparáveis que vivem no sertão nordestino. Assolados pela fome, 
aridez, violência e pobreza, sobrevivendo num ambiente hostil e miserável, os amigos usam a inteligência e esperteza 
para contornarem os problemas.', 1),
	   (2, 'Em Star Wars: Episódio III, as Guerras Clônicas estão em pleno andamento e as diferenças entre o Conselho 
	   Jedi e o Chanceler Palpatine (Ian McDiarmid) aumentam cada vez mais. Anakin Skywalker (Hayden Christensen) 
	   mantém um elo de lealdade com Palpatine, ao mesmo tempo em que luta para que seu casamento com Padmé Amidala 
	   (Natalie Portman) não seja afetado por esta situação. Seduzido por promessas de poder, Anakin se aproxima cada 
	   vez mais de Darth Sidious (Ian McDiarmid) até se tornar o temível Darth Vader. Juntos eles tramam um plano para 
	   aniquilar de uma vez por todas com os cavaleiros jedi.', 2),
	   (3, 'A caçula Anna (Kristen Bell/Gabi Porto) adora sua irmã Elsa (Idina Menzel/Taryn Szpilman), mas um acidente 
	   envolvendo os poderes especiais da mais velha, durante a infância, fez com que os pais as mantivessem afastadas.
	   Após a morte deles, as duas cresceram isoladas no castelo da família, até o dia em que Elsa deveria assumir o 
	   reinado de Arendell. Com o reencontro das duas, um novo acidente acontece e ela decide partir para sempre e se 
	   isolar do mundo, deixando todos para trás e provocando o congelamento do reino. É quando Anna decide se 
	   aventurar pelas montanhas de gelo para encontrar a irmã e acabar com o frio.', 3),
	   (4, 'Em Homem-Aranha: De Volta ao Lar, depois de atuar ao lado dos Vingadores, chegou a hora de Peter Parker 
	   (Tom Holland) voltar para casa e para a sua vida, já não mais tão normal. Lutando diariamente contra pequenos 
	   crimes nas redondezas, ele pensa ter encontrado a missão de sua vida quando o terrível vilão Abutre 
	   (Michael Keaton) surge amedrontando a cidade. O problema é que a tarefa não será tão fácil como ele imaginava.',4),
	   (5, 'Em Como Eu Era Antes de Você, o rico e bem sucedido Will (Sam Claflin) leva uma vida repleta de conquistas,
	   viagens e esportes radicais até ser atingido por uma moto. O acidente o torna tetraplégico, obrigando-o a 
	   permanecer em uma cadeira de rodas. A situação o torna depressivo e extremamente cínico, para a preocupação de 
	   seus pais (Janet McTeer e Charles Dance). É neste contexto que Louisa Clark (Emilia Clarke) é contratada para 
	   cuidar de Will. De origem modesta, com dificuldades financeiras e sem grandes aspirações na vida, ela faz o 
	   possível para melhorar o estado de espírito de Will e, aos poucos, acaba se envolvendo com ele.', 5),
	   (6, 'Blair Willows, a jovem garçonete com um coração de ouro, descobre que é aceita na prestigiosa Princess 
	   Charm School de Gardania, onde as meninas podem treinar para se tornarem princesas ou damas reais. Enquanto 
	   Blair aprende os caminhos de uma princesa de verdade, a professora da academia, Dame Devin, percebe que a bela 
	   jovem se parece muito com a herdeira desaparecida do reino - um título que ela pretende para sua filha, Delancy.
	   Blair poderia ser a verdadeira rainha de Gardania?', 6),
	   (7, 'Harry Potter (Daniel Radcliffe) é um garoto órfão de 10 anos que vive infeliz com seus tios, os Dursley. 
	   Até que, repentinamente, ele recebe uma carta contendo um convite para ingressar em Hogwarts, uma famosa escola
	   especializada em formar jovens bruxos. Inicialmente Harry é impedido de ler a carta por seu tio Válter 
	   (Richard Griffiths), mas logo ele recebe a visita de Hagrid (Robbie Coltrane), o guarda-caça de Hogwarts, que 
	   chega em sua casa para levá-lo até a escola. A partir de então Harry passa a conhecer um mundo mágico que 
	   jamais imaginara, vivendo as mais diversas aventuras com seus mais novos amigos, Rony Weasley (Rupert Grint) e 
	   Hermione Granger (Emma Watson).', 7),
	   (8, 'Em Vingadores: Ultimato, após Thanos eliminar metade das criaturas vivas em Vingadores: Guerra Infinita, 
	   os heróis precisam lidar com a dor da perda de amigos e seus entes queridos. Com Tony Stark (Robert Downey Jr.)
	   vagando perdido no espaço sem água nem comida, o Capitão América/Steve Rogers (Chris Evans) e a Viúva 
	   Negra/Natasha Romanov (Scarlett Johansson) precisam liderar a resistência contra o titã louco.', 8),
	   (9, 'O filme mostra a viagem inaugural do Titanic em 1912 e o romance entre Jack e Rose. Ela é uma jovem de 
	   alta sociedade noiva de um homem rico. Ele é um artista pobre que ganha uma passagem em um jogo de cartas.', 9),
	   (10, 'Uma família de Chicago planeja passar o Natal em Paris. Porém, em meio às confusões da viagem, um dos 
	   filhos, Kevin (Macaulay Culkin), acaba esquecido em casa. O garoto de apenas oito anos é obrigado a se virar 
	   sozinho e defender a casa de dois insistentes ladrões.', 10),
	   (11, 'Mufasa, o leão que governa Pedra do Rei, ganha um herdeiro, Simba. Embora esteja educando o jovem 
	   príncipe para assumir o poder, nenhum deles está preparado para a traição do tio, Scar.', 11),
	   (12, 'Um parque construído por um milionário (Richard Attenborough) tem como habitantes dinossauros diversos, 
	   extintos a sessenta e cinco milhões de anos. Isto é possível por ter sido encontrado um inseto fossilizado, 
	   que tinha sugado sangue destes dinossauros, de onde pôde-se isolar o DNA, o código químico da vida, e, a 
	   partir deste ponto, recriá-los em laboratório. Mas, o que parecia ser um sonho se torna um pesadelo, quando a 
	   experiência sai do controle de seus criadores.', 12),
	   (13, 'Depois de mais de trinta anos de serviço como um dos principais aviadores da Força Aeronaval, Pete 
	   Mitchell (Tom Cruise), mais conhecido como Maverick, está onde pertence.
	   Ele ultrapassa seus próprios limites de piloto para não ser promovido a um cargo que o manteria em terra, além 
	   de trabalhar como mentir de uma nova geração de pilotos.
	   Em sua missão final, ele precisa enfrentar um exército de drones inteligentes que são uma ameaça perigosa.', 13),
	   (14, 'Numa terra fantástica e única, chamada Terra-Média, um hobbit recebe de presente de seu tio o Um Anel, 
	   um anel mágico e maligno que precisa ser destruído antes que caia nas mãos do mal. Para isso o hobbit Frodo 
	   (Elijah Woods) terá um caminho árduo pela frente, onde encontrará perigo, medo e personagens bizarros. Ao seu 
	   lado para o cumprimento desta jornada aos poucos ele poderá contar com outros hobbits, um elfo, um anão, dois 
	   humanos e um mago, totalizando 9 pessoas que formarão a Sociedade do Anel.', 14),
	   (15, 'Durante uma missão em Praga, um grupo especial de agentes cai em uma cilada. O americano Ethan Hunt 
	   (Tom Cruise) descobre que apenas ele e outra agente sobreviveram. Tomado como informante, ele foge e começa a 
	   agir por conta própria. Com a ajuda de um novo grupo, ele vai tentar limpar seu nome, descobrindo quem foi o 
	   espião que armou para o seu time.', 15),
	   (16, 'Shrek conta a história de um ogro solitário que vive tranquilamente em seu pântano, até que diversas 
	   criaturas de contos de fadas invadem sua casa. Para recuperar sua paz, ele embarca em uma aventura para 
	   resgatar uma princesa, acompanhado por um burro muito falante. Ao longo da jornada, Shrek descobre o valor da 
	   amizade, do amor e da aceitação, aprendendo que as aparências podem enganar.', 16),
	   (17, 'As Crônicas de Nárnia: O Leão, a Bruxa e o Guarda-Roupa acompanha quatro irmãos que descobrem um mundo 
	   mágico ao atravessar um guarda-roupa. Em Nárnia, eles se unem ao leão Aslan para enfrentar a Feiticeira Branca 
	   e lutar pela libertação do reino, vivendo uma jornada de coragem, amizade e esperança.', 17),
	   (18, 'Piratas do Caribe: A Maldição da Pérola Negra acompanha o ferreiro Will Turner, que se une ao excêntrico 
	   pirata Jack Sparrow para resgatar Elizabeth Swann, sequestrada pela tripulação do navio Pérola Negra. Durante 
	   a aventura, eles enfrentam uma antiga maldição que transforma os piratas em mortos-vivos sob a luz da lua.', 18),
	   (19, 'Barbie: Moda e Magia acompanha Barbie em uma viagem a Paris, onde ela descobre uma casa de moda em 
	   dificuldades. Com criatividade, amizade e a ajuda de pequenas fadas da moda, ela trabalha para revitalizar a 
	   marca e mostra que acreditar em si mesma pode transformar sonhos em realidade.', 19),
	   (20, 'Homem-Aranha: Sem Volta Pra Casa acompanha Peter Parker após sua identidade como Homem-Aranha ser 
	   revelada ao mundo. Em busca de uma solução, ele recorre à magia, mas um feitiço dá errado e abre as portas 
	   para visitantes de outros universos, obrigando o herói a enfrentar grandes desafios e fazer escolhas que 
	   mudarão sua vida para sempre.', 20);

CREATE EXTENSION IF NOT EXISTS UNACCENT;