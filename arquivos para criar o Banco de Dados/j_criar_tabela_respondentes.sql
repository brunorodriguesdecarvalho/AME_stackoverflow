DROP TABLE IF EXISTS respondente;
CREATE TABLE respondente
    SELECT 
        respondent AS respondente_id,
        CONCAT('respondente_',respondent) AS nome,
        OpenSource AS contrib_open_source,
        Hobby as programa_hobby,
        FORMAT((ConvertedSalary*3.81),2) AS salario,
        OperatingSystem,
        Country,
        CompanySize
    FROM `db_stackoverflow`.`origem`
    ORDER BY respondent ASC;

DROP TABLE IF EXISTS respondente_tratada;
CREATE TABLE respondente_tratada
SELECT 
    respondente.respondente_id,
    respondente.nome,
    respondente.contrib_open_source,
    respondente.programa_hobby,
    respondente.salario,
    sistema_operacional.id as sistema_operacional_id,
    pais.id as pais_id,
    empresa.id as empresa_id
FROM `db_stackoverflow`.`respondente`
    LEFT JOIN `db_stackoverflow`.`sistema_operacional`
        ON respondente.OperatingSystem = sistema_operacional.nome
    LEFT JOIN `db_stackoverflow`.`pais`
        ON respondente.Country = pais.nome
    LEFT JOIN `db_stackoverflow`.`empresa`
        ON respondente.CompanySize = empresa.tamanho
;
DROP TABLE respondente;
DROP TABLE origem;
RENAME TABLE respondente_tratada TO respondente;