SELECT
    pais.nome,
    CAST(AVG(respondente.salario) AS DECIMAL(10,2)) AS avg_Salary
FROM respondente

JOIN `db_stackoverflow`.`pais`
    ON respondente_salarionaozero.pais_id = pais.id

GROUP BY pais.nome
ORDER BY avg_Salary DESC;