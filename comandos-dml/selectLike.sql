/* O operador Like é usando em conjunto com o Where para retornar valores de acordo com um padrão. Esse padrão é definido com os wildcards % e _ */

/* A Posição do card define a posição do padrão que se deseja(início, meio, fim, determinada posição), sendo possível também combinar os dois wildcards */

/* O % é usado para procurar zero, um ou vários caracteres*/

SELECT * FROM nome_tabela WHERE nome_coluna LIKE '%caractere'; 
SELECT * FROM nome_tabela WHERE nome_coluna LIKE '%caractere(s)%'; 

/* O _ é usado para procurar um caractere */

SELECT * FROM nome_tabela WHERE nome_coluna LIKE '_caractere'; 