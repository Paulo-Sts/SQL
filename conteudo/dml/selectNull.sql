/* Seleciona valores usando como condição a verificação de valores nulos ou não nulos */

/* Para valores nulos*/
SELECT nome_coluna, nome_coluna FROM nome_tabela WHERE condição IS NULL; 

/* Para valores não nulos*/
SELECT nome_coluna, nome_coluna FROM nome_tabela WHERE condição IS NOT NULL; 