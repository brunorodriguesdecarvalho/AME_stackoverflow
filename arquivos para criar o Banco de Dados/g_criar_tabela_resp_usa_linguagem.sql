DROP TABLE IF EXISTS resp_usa_linguagem;
CREATE TABLE resp_usa_linguagem
    SELECT 
        respondent as respondente_id, 
        LanguageWorkedWith as nome
    FROM `db_stackoverflow`.`origem`
    ORDER BY respondent ASC;

DROP TABLE IF EXISTS linguagem_programacao;
CREATE TABLE linguagem_programacao 
    (
        id INT NOT NULL AUTO_INCREMENT,
        PRIMARY KEY (id)
    )
    SELECT DISTINCT nome AS nome
    FROM `db_stackoverflow`.`resp_usa_linguagem`
    ORDER BY nome ASC;