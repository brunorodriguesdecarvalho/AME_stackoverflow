SELECT 
    linguagem_programacao.nome,
    COUNT(*) AS QTD_usuarios
FROM respondente
JOIN `db_stackoverflow`.`resp_usa_linguagem`
    ON respondente.respondente_id = resp_usa_linguagem.respondente_id
JOIN `db_stackoverflow`.`linguagem_programacao`
    ON resp_usa_linguagem.linguagem_programacao_id = linguagem_programacao.id
GROUP BY linguagem_programacao.nome
ORDER BY QTD DESC
LIMIT 3
;