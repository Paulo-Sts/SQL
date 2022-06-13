// Adicionar check que valida uma condição relacional e/ou lógica

CREATE TABLE nome_tabela (
    nome_coluna_1 tipo_dado NOT NULL AUTO_INCREMENT,
    nome_coluna_2 tipo_dado,
    nome_coluna_3 tipo_dado,
    PRIMARY KEY (nome_coluna_1),
    CHECK (nome_coluna_2 >= 18) 
)