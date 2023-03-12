SELECT 
    pais.nome, 
    COUNT(*) AS QTD
FROM respondente
INNER JOIN `db_stackoverflow`.`pais`
    ON respondente.pais_id = pais.id
GROUP BY pais_id
ORDER BY QTD DESC;