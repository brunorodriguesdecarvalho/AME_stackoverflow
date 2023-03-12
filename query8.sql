SELECT
    pais.nome,
    count (*) as qtd,
    CAST(AVG(respondente.salario) AS FLOAT) as salario_medio
FROM respondente
INNER JOIN `db_stackoverflow`.`pais`
    ON respondente.pais_id = pais.id
WHERE (pais.nome = "United States" and respondente.salario > (4787.9*5)) or (pais.nome="India" and respondente.salario > (243.52*5)) or (pais.nome="United Kingdom" and respondente.salario > (6925.63*5)) or (pais.nome="Germany" and respondente.salario > (6664*5)) or (pais.nome="Canada" and respondente.salario > (5567.68*5))
GROUP BY pais.nome
ORDER BY salario_medio DESC
;