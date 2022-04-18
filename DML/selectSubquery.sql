
/* Subquerys são consultas com subconsultas como condição, geralmente usadas para situações específicas em uma consulta desejada (são formadas com o IN ou NOT IN)*/

SELECT * FROM nome_tabela WHERE condição IN( SELECT nome_coluna FROM nome_tabela)

SELECT * FROM nome_tabela WHERE condição NOT IN( SELECT nome_coluna FROM nome_tabela)
