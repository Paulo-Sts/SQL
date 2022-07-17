/* É uma função que possibilita retornar um valor alternativo quando o retultado for nulo. */
/* Podemos usar a função IFNULL() ou a função COALESCE()*/

SELECT nome_coluna, nome_coluna * (nome_coluna, IFNULL(nome_coluna, 0)) FROM nome_tabela;

SELECT nome_coluna, nome_coluna * (nome_coluna, COALESCE(nome_coluna, 0)) FROM nome_tabela;