/* Full Join */

/* Retorna todos os registros entre duas tabelas, quando há uma correspondência entre registros */

SELECT nome_coluna FROM nome_tabela_1 FULL JOIN nome_tabela_2 ON nome_tabela_1.nome_coluna = nome_tabela_2.nome_coluna WHERE condição = valor;
SELECT nome_coluna FROM nome_tabela_1 FULL OUTER JOIN nome_tabela_2 ON nome_tabela_1.nome_coluna = nome_tabela_2.nome_coluna WHERE condição = valor;