// Criar chave estrangeira simples

CREATE TABLE nome_tabela (
    nome_coluna_1 tipo_dado NOT NULL AUTO_INCREMENT,
    nome_coluna_2 tipo_dado,
    nome_coluna_3_chave_estrangeira tipo_dado, 
    PRIMARY KEY (nome_coluna_1)
    FOREIGN KEY (nome_coluna_3_chave_estrangeira) REFERENCES nome_tabela_origem(nome_coluna_chave_primária)
)

// Criar chave estrangeira composta

CREATE TABLE nome_tabela (
    nome_coluna_1 tipo_dado NOT NULL AUTO_INCREMENT,
    nome_coluna_2 tipo_dado,
    nome_coluna_3_chave_estrangeira tipo_dado, 
    CONSTRAINT nome_coluna_chave_estrangeira_composta FOREIGN KEY (nome_coluna_3_chave_estrangeira)
    REFERENCES nome_tabela_origem(nome_coluna_chave_primária)
)