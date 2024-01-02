/* O Select Into copia dados de uma tabela para outra tabela nova */

SELECT * INTO nome_tabela_nova FROM nome_tabela;

/* Copiar tabela de outro banco de dados */
SELECT nome_coluna, nome_coluna INTO nome_tabela_nova IN 'outro_banco.mdb' FROM nome_tabela;

/* Podemos criar uma nova tabela, copiando o schemma de outra sem adicionar registros, criando uma condição que não retorna valores*/
SELECT * INTO nome_tabela_nova FROM nome_tabela WHERE condição = valor;