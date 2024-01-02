/* É usado para comparar um valor específico com um intervalo de valores em uma subconsulta */


/* O retorno é um boolean true se o valor for igual a qualquer um do intervalo */
SELECT nome_coluna FROM nome_tabela WHERE nome_coluna ANY (SELECT nome_coluna FROM nome_tabela WHERE condição = valor);
