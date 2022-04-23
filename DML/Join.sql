SELECT * FROM nome_tabela apelido_tabela, nome_tabela2 apelido_tabela2
WHERE apelido_tabela.id = apelido_tabela2.id_nome_coluna_chave_estrangeira;

SELECT apelido_tabela.campo_tabela AS alias_nome_coluna, apelido_tabela2.campo_tabela AS alias_nome_coluna2 FROM 
nome_tabela apelido_tabela, nome_tabela2 apelido_tabela2 WHERE apelido_tabela.id = apelido_tabela2.id_nome_coluna_chave_estrangeira;

/* Inner join */

-- Essa consulta realizar a junção entre duas ou mais tabelas e retorna os dados que se relacionam a partir de um atributo em comum (a interseção de valores), no caso a PK de uma tabela com a FK de outra.

SELECT 
    apelido_tabela2.nome_coluna AS alias_nome_coluna2,
    apelido_tabela.nome_coluna AS alias_nome_coluna,
    nome_coluna AS alias_nome_coluna
    FROM nome_tabela apelido_tabela 
    INNER JOIN nome_tabela2 apelido_tabela2 ON apelido_tabela.id = apelido_tabela2.id_nome_coluna_chave_estrangeira;


/* Left Join */

/* Essa consulta retorna a junção de duas ou mais tabelas e retorna os dados que se relacionam a partir de uma atributo em comum (a interseção de valores) 
e também traz todos os atributos da tabela do lado esquerdo da consulta */


/* Right Join */

/* Essa consulta retorna a junção de duas ou mais tabelas e retorna os dados que se relacionam a partir de uma atributo em comum (a interseção de valores) 
e também traz todos os atributos da tabela do lado direito da consulta */


/* Full join*/

/* Essa consulta retorna a união da junção de duas ou mais tabelas e retorna os dados que se relacionam a partir de uma atributo em comum (a interseção de valores) 
e também traz todos os atributos da tabela do lado direito da consulta e do lado esquerdo */