/* Inserir um registro em uma tabela*/

INSERT INTO nome_tabela (
    nome_coluna,
    nome_coluna,
    nome_coluna,
    nome_coluna
) VALUES (
    valor,
    valor,
    valor,
    valor
);

/* Inserir múltiplos registros de uma única vez em uma tabela */

INSERT INTO nome_tabela (
    nome_coluna,
    nome_coluna,
    nome_coluna,
    nome_coluna
) VALUES (
    valor,
    valor,
    valor,
    valor
),
(
    valor,
    valor,
    valor,
    valor
),
(
    valor,
    valor,
    valor,
    valor
);

/* É possível omitir as colunas ao inserir dados, desde que todas os campos sejam preenchidos por novos dados */

INSERT INTO nome_tabela
 VALUES (
    valor,
    valor,
    valor,
    valor
);