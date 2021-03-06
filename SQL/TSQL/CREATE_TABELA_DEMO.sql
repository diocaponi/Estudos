-- CRIACAO DE TABELAS 
-- TABELA LIVRO
USE DEMO_TSQL

CREATE TABLE LIVRO
(ID_Livro SMALLINT PRIMARY KEY IDENTITY (100, 1),
Nome_Livro VARCHAR(50) NOT NULL,
ISBN VARCHAR(30) NOT NULL UNIQUE,
ID_Autor SMALLINT NOT NULL,
Data_Pub DATETIME NOT NULL,
Preco_Livro MONEY NOT NULL)

CREATE TABLE AUTORES
(ID_Autor SMALLINT PRIMARY KEY,
Nome_Autor VARCHAR(50),
Sobrenome_Autor VARCHAR(60))

CREATE TABLE EDITORAS
(ID_Editora SMALLINT PRIMARY KEY IDENTITY,
Nome_Editora VARCHAR(50) NOT NULL)

