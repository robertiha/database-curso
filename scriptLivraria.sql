CREATE DATABASE LIVRARIA;
USE LIVRARIA;
CREATE TABLE LIVROS(
	TITULO 		VARCHAR(40),
	AUTOR 		VARCHAR(40),
	SEXO	 	CHAR(1),
	NUMPAG	 	INT,
	EDITNOME 	VARCHAR(40),
	PRECO 		FLOAT(5,2),
	UFEDIT	 	CHAR(2),
	ANOPUBLI 	INT(4)
);

INSERT INTO LIVROS (TITULO, AUTOR, SEXO, NUMPAG, EDITNOME, PRECO, UFEDIT, ANOPUBLI) VALUES (
'Cavaleiro real', 'Ana Claudia', 'F', 465, 'Atlas', 49.9, 'RJ', '2009');
INSERT INTO LIVROS (TITULO, AUTOR, SEXO, NUMPAG, EDITNOME, PRECO, UFEDIT, ANOPUBLI) VALUES (
'SQL para leigos', 'João Nunes', 'M', 450, 'Addison', 98, 'SP', '2018'
);
INSERT INTO LIVROS (TITULO, AUTOR, SEXO, NUMPAG, EDITNOME, PRECO, UFEDIT, ANOPUBLI) VALUES (
'Receitas caseiras', 'Celia Tavares', 'F', 210, 'Atlas', 45, 'RJ', '2008'
);
INSERT INTO LIVROS (TITULO, AUTOR, SEXO, NUMPAG, EDITNOME, PRECO, UFEDIT, ANOPUBLI) VALUES (
'Pessoas efetivas', 'Eduardo Santos', 'M', 390, 'Beta', 78.99, 'RJ', '2018'
);
INSERT INTO LIVROS (TITULO, AUTOR, SEXO, NUMPAG, EDITNOME, PRECO, UFEDIT, ANOPUBLI) VALUES (
'Habitos saudáveis', 'Eduardo Santos', 'M', 630, 'Beta', 150.90, 'RJ', '2019'
);
INSERT INTO LIVROS (TITULO, AUTOR, SEXO, NUMPAG, EDITNOME, PRECO, UFEDIT, ANOPUBLI) VALUES (
'A casa marrom', 'Hermes Macedo', 'M', 250, 'Bubba', 60, 'MG', '2016'
);
INSERT INTO LIVROS (TITULO, AUTOR, SEXO, NUMPAG, EDITNOME, PRECO, UFEDIT, ANOPUBLI) VALUES (
'Estacio querido', 'Geraldo Fransisco', 'M', 310, 'Insignia', 100, 'ES', '2015'
);
INSERT INTO LIVROS (TITULO, AUTOR, SEXO, NUMPAG, EDITNOME, PRECO, UFEDIT, ANOPUBLI) VALUES (
'Pra sempre amigos', 'Leda Silva', 'F', 510, 'Insignia', 78.98, 'ES', '2011'
);
INSERT INTO LIVROS (TITULO, AUTOR, SEXO, NUMPAG, EDITNOME, PRECO, UFEDIT, ANOPUBLI) VALUES (
'Copas inesqueciveis', 'Marco Alcantara', 'M', 200, 'Larson', 130.98, 'RS', '2018'
);
INSERT INTO LIVROS (TITULO, AUTOR, SEXO, NUMPAG, EDITNOME, PRECO, UFEDIT, ANOPUBLI) VALUES (
'O poder da mente', 'Clara Mafra', 'F', 120, 'Continental', 56.58, 'SP', '2017'
);


-- 1 – Trazer todos os dados.
SELECT * FROM LIVROS;
-- 2 – Trazer o nome do livro e o nome da editora
SELECT titulo, editnome FROM livros;
-- 3 – Trazer o nome do livro e a UF dos livros publicados por autores do sexo masculino.
SELECT titulo, ufedit FROM livros WHERE sexo LIKE 'M';
-- 4 - Trazer o nome do livro e o número de páginas dos livros publicados por autores do sexo feminino.
SELECT titulo, numpag FROM livros WHERE sexo LIKE 'F';
-- 5 – Trazer os valores dos livros das editoras de São Paulo.
SELECT titulo, preco FROM livros WHERE ufedit LIKE 'SP';
-- 6 – Trazer os dados dos autores do sexo masculino que tiveram livros publicados por São Paulo ou Rio de Janeiro (Questão Desafio).
SELECT autor, sexo, ufedit FROM livros WHERE sexo = 'M'AND (ufedit = 'SP' OR ufedit = 'RJ');
