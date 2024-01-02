INSERT INTO cidades (nome, area, id_estado)
VALUES ('Campinas', 795, 31);

INSERT INTO cidades (nome, area, id_estado)
VALUES ('Caruaru', 920.6, (SELECT id FROM estados WHERE sigla = 'PE'));