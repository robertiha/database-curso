/* Modelagem básica -> 
[entidade]    = tabela
[campos]      = atributos */

/* PROCESSOS DE MODELAGEM */

--[FASE 1] e [FASE 2] AD / ADM DE DADOS:
--> MODELAGEM CONCEITUAL -> RASCUNHO
--> MODELAGEM LÓGICA     -> QUALQUER PROGRAMA DE MODELAGEM

--[FASE 3] - DBA / AD:
--> MODELAGEM FÍSICA ADD -> SCRIPTS DE DATABASE

/* Iniciando a modelagem física e criando o banco de dados */

CREATE DATABASE PROJETO;

--visualizando os bancos de dados já existentes
SHOW DATABASES;

--conectando ao banco de dados do projeto
USE PROJETO;

--criando tabela

CREATE TABLE CLIENTE(
    NOME        VARCHAR(30),
    SEXO        CHAR(1),
    EMAIL       VARCHAR(30),
    CPF         INT(11),
    TELEFONE    VARCHAR(30),
    ENDERECO    VARCHAR(100)
);

--Mostrando tabelas
SHOW TABLES;

--Exibindo estrutura de uma tabela
DESC CLIENTE;

/*SINTAXE BÁSICA DE INSERÇÃO DE DADOS
-> [INSERT INTO] */

--Forma 1: Omitindo as colunas

INSERT INTO CLIENTE VALUES ('JOAO', 'M', 'JOAO@GMAIL.COM', 988638273, '22923110', 'MAIA LACERDA - ESTACIO - RIO DE JANEIRO - RJ');
INSERT INTO CLIENTE VALUES('CELIA','F','CELIA@GMAIL.COM',541521456,'25078869','RIACHUELO - CENTRO - RIO DE JANEIRO - RJ');
INSERT INTO CLIENTE VALUES('JORGE','M',NULL,885755896,'58748895','OSCAR CURY - BOM RETIRO - PATOS DE MINAS - MG');

--Forma 2: Colocando as colunas

INSERT INTO CLIENTE (NOME, SEXOM ENDERECO, TELEFONE, CPF) VALUES ('LILIAN', 'F', 'SENADOR SOARES - TIJUCA - RIO DE JANEIRO - RJ', '947785696', 887774856);

--Forma 3: [INSERT] compacto - somente SQL

INSERT INTO CLIENTE VALUES('ANA','F','ANA@GLOBO.COM',85548962,'548556985','PRES ANTONIO CARLOS - CENTRO - SAO PAULO - SP'),
                          ('CARLA','F','CARLA@TERATI.COM.BR',7745828,'66587458','SAMUEL SILVA - CENTRO - BELO HORIZONTE - MG');

/* Comando [SELECT]
Seleção, projeção e junção */

SELECT NOW(); -- mostra data e hora
SELECT NOW() AS DATA_HORA, 'Roberta Pereira' as ALUNA; --criando projeção
SELECT 'ROBERTA PEREIRA';
SELECT 'BANCO DE DADOS';

--Alias de colunas
SELECT NOME, SEXO, EMAIL FROM CLIENTE;
SELECT NOME, SEXO EMAIL, ENDERECO FROM CLIENTE;
SELECT EMAIL, SEXO, ENDERECO, NOME, NOW() AS DATA_HORA FROM CLIENTE;

--Usar apenas para fins acadêmicos
SELECT * FROM CLIENTE;

--Filtrando com [WHERE] e [LIKE]
--[LIKE] -> igual/como

SELECT NOME, TELEFONE FROM CLIENTE WHERE ENDERECO LIKE '%RJ';
SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE ENDERECO LIKE 'OSCAE CURY%';
SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE ENDERECO LIKE '%CENTRO%';
-- [%] -> qualquer coisa

/*OPERADORES LÓGICOS:
[OR]  -> Para que a saída da query seja verdadeira, 
        basta que apenas uma condição seja verdadeira.

[AND] -> Para que a saída da query seja verdadeira, 
        todas as condições PRECISA, ser verdadeiras. */

--[OR]
SELECT NOME, SEXO, ENDERECO 
FROM CLIENTE 
WHERE SEXO = 'M' OR endereco LIKE '%rj';

--[AND]
SELECT NOME, SEXO, ENDERECO 
FROM CLIENTE 
WHERE SEXO = 'f' AND  endereco LIKE '%rj';
SELECT NOME, SEXO, ENDERECO 
FROM CLIENTE 
WHERE SEXO = 'F' AND endereco LIKE '%Estacio';


/* [COUNT(*), GROUP BY] -> Performance com operadores lógicos */

-- Contado os registros de uma tabela
SELECT COUNT(*) FROM CLIENTE;
SELECT COUNT(*) AS "Quantidade de registros da tabela cliente FROM CLIENTE; --está faltando uma aspas

-- Operador croup by
SELECT SEXO, COUNT(*) FROM CLIENTE GROUP BY SEXO;

--Filtrando valores [NULOS]
SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE EMAIL IS NULL;
SELECT NOME, SEXO, ENDERECO FROM CLIENTE WHERE EMAIL IS NOT NULL;

-- [UPDATE] -> Atualizar valores da tabela

UPDATE CLIENTE SET EMAIL 'lilian@hotmail.com'; --atualiza [TODOS] os emails da tabela

-- [WHERE] com [UPDATE]

UPDATE CLIENTE SET EMAIL = 'joao@gmail.com' WHERE NOME = 'JOAO';

-- Deletando registros com clausula [DELETE]
DELETE FROM CLIENTE; --vai LIMPAR a tabela INTEIRA, usar o [DELETE] sempre co [WHERE]

DELETE FROM CLIENTE WHERE NOME = 'ANA';

--Conferindo o dado e a quantidade de registros para evitar erros
SELECT COUNT(*) FROM CLIENTE;
SELECT COUNT(*) FROM CLIENTE WHERE NOME = 'ANA';











