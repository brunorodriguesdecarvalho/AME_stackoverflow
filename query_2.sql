SELECT
    COUNT(*) AS QTD
FROM respondente
INNER JOIN `db_stackoverflow`.`pais`
    ON respondente.pais_id = pais.id
INNER JOIN `db_stackoverflow`.`sistema_operacional`
    ON respondente.sistema_operacional_id = sistema_operacional.id
WHERE pais.nome = "United States" and sistema_operacional.nome = "Windows"
ORDER BY QTD DESC
;