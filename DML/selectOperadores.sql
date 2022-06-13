
/* Operadores relacionais */

/*

igual: =
maior: >
menor: <
maior ou igual: >=
menor ou igual: <=
diferente de: <>

*/

/* Operadores lógicos */

/*

AND: e
OR: ou
NOT: negação

*/


/* Selecionar os dados de um registro específico ou que atende a uma condição específica */

SELECT nome_coluna, nome_coluna FROM nome_tabela WHERE condição = valor;

SELECT nome_coluna FROM nome_tabela WHERE condição <= valor;

SELECT * FROM nome_tabela WHERE condição <= valor AND condição2 = valor2;

SELECT nome_coluna, nome_coluna FROM nome_tabela WHERE NOT condição;

SELECT nome_coluna, nome_coluna FROM nome_tabela WHERE condição < valor OR condição2 > valor2 AND condição3 = valor3;


