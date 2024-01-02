/* É usado para verificar a existência de qualquer registro em uma subconsulta */


/* O retorno é um boolean */
SELECT nome_coluna FROM nome_tabela WHERE EXISTS (SELECT nome_coluna FROM nome_tabela WHERE condição = valor);

/* Também pode-se usar a não existência */
SELECT nome_coluna FROM nome_tabela WHERE NOT EXISTS (SELECT nome_coluna FROM nome_tabela WHERE condição = valor);