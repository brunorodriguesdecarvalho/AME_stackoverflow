SELECT
    pais.nome,
    CAST(AVG(respondente.salario) AS FLOAT) as salario_medio
FROM respondente
INNER JOIN `db_stackoverflow`.`pais`
    ON respondente.pais_id = pais.id
WHERE respondente.salario > 0
GROUP BY pais.nome
ORDER BY salario_medio DESC
LIMIT 5
;