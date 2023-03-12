SELECT
    sistema_operacional.nome as sistema_operacaional,
    CAST(AVG(CASE respondente.programa_hobby WHEN 'Yes' THEN salario END) AS FLOAT) AS media_hobby,
    CAST(AVG(salario) AS FLOAT) AS media_geral,
    CAST(AVG(salario) - (AVG(CASE respondente.programa_hobby WHEN 'Yes' THEN salario END)) as FLOAT) as diff_media
FROM respondente
JOIN `db_stackoverflow`.`pais`
    ON respondente.pais_id = pais.id
JOIN `db_stackoverflow`.`sistema_operacional`
    ON respondente.sistema_operacional_id = sistema_operacional.id
WHERE pais.nome="Brazil"
GROUP BY sistema_operacional.nome
;