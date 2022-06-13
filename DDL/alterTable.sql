/* Adicionar coluna a tabela */

ALTER TABLE nome_tabela ADD COLUMN nome_coluna tipo_dado;

/* Apagar coluna */

ALTER TABLE nome_tabela DROP COLUMN nome_coluna;

/* Adicionar constraint foreign key */

ALTER TABLE nome_tabela ADD CONSTRAINT nome_coluna
FOREIGN KEY(nome_coluna_origem)
REFERENCES nome_tabela_origem(nome_coluna_origem);

/* Alterar o tipo de dado da coluna*/

ALTER TABLE nome_tabela MODIFY COLUMN nome_coluna tipo_dado;