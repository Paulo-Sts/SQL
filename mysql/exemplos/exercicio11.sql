CREATE TABLE IF NOT EXISTS unidades_empresa_cidade (
    id INT UNSIGNED NOT NULL PRIMARY KEY,
    id_cidade INT UNSIGNED NOT NULL,
    id_empresa INT UNSIGNED NOT NULL,
    FOREIGN KEY (id_cidade) REFERENCES cidades (id),
    FOREIGN KEY (id_empresa) REFERENCES empresas (id)
)