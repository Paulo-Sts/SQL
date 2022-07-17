/* Union */

/* Essa consulta retorna a união da junção de duas ou mais tabelas e retorna os dados que se relacionam a partir de uma atributo em comum (a interseção de valores) 
e também traz todos os atributos da tabela do lado direito da consulta e do lado esquerdo */

SELECT * FROM nome_tabela apelido_tabela LEFT JOIN nome_tabela2 apelido_tabela2 ON apelido_tabela.id = apelido_tabela2.id_nome_coluna_chave_estrangeira
UNION
SELECT * FROM nome_tabela apelido_tabela RIGHT JOIN nome_tabela2 apelido_tabela2 ON apelido_tabela.id = apelido_tabela2.id_nome_coluna_chave_estrangeira;