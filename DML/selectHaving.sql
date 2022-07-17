/* O Having é usado para construir querys com funções agregadas */

SELECT * FROM nome_tabela WHERE condição = valor GROUP BY nome_coluna HAVING nome_coluna COUNT(valor) > 5;
