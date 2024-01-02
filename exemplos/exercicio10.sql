CREATE TABLE IF NOT EXISTS prefeitos (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    id_cidade INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY (id_cidade),
    FOREIGN KEY (id_estado) REFERENCES cidades (id)
);