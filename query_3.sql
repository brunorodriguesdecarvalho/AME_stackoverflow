SELECT
    pais.nome,
    CAST(AVG(respondente.salario) AS FLOAT) as salario_medio
FROM respondente 
JOIN `db_stackoverflow`.`pais`
    ON respondente.pais_id = pais.id
JOIN `db_stackoverflow`.`sistema_operacional`
    ON respondente.sistema_operacional_id = sistema_operacional.id
WHERE respondente.salario > 0 AND pais.nome="Israel" AND sistema_operacional.nome="Linux-based"
GROUP BY pais.nome
ORDER BY salario_medio desc;