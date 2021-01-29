-- Exclui a coluna ID_Autor

ALTER TABLE LIVRO
DROP COLUMN ID_Autor

-- Adiciona coluna ID_Autor, em seguida a transforma em chave estrangeira que faz 
-- referencia a tabela AUTORES

ALTER TABLE LIVRO
ADD ID_Autor SMALLINT NOT NULL
CONSTRAINT fk_ID_Autor FOREIGN KEY (ID_Autor)
REFERENCES AUTORES

-- Adiciona coluna ID_Editora, em seguida a transforma em chave estrangeira que faz 
-- referencia a tabela EDITORAS

ALTER TABLE LIVRO
ADD ID_Editora SMALLINT NOT NULL
CONSTRAINT fk_ID_Editora FOREIGN KEY (ID_Editora)
REFERENCES EDITORAS

