// Criar chave primária simples

CREATE TABLE nome_tabela (
    nome_coluna_1 tipo_dado NOT NULL AUTO_INCREMENT,
    nome_coluna_2 tipo_dado,
    nome_coluna_3 tipo_dado, 
    PRIMARY KEY (nome_coluna_1)
)

// Criar chave primária composta

CREATE TABLE nome_tabela (
    nome_coluna_1 tipo_dado NOT NULL AUTO_INCREMENT,
    nome_coluna_2 tipo_dado,
    nome_coluna_3 tipo_dado, 
    CONSTRAINT nome_coluna PRIMARY KEY (nome_coluna_1, nome_coluna_2)
)