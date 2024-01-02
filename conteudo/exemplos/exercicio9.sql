SELECT 
    c.nome AS cidades,
    e.nome AS estados,
    regiao AS regiao
    FROM estados e 
    INNER JOIN cidades c ON e.id = c.id_estado;