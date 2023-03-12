DROP TABLE IF EXISTS resp_usa_ferramenta;
CREATE TABLE resp_usa_ferramenta 
    SELECT 
        respondent as respondente_id, 
        CommunicationTools as nome
    FROM `db_stackoverflow`.`origem`
    ORDER BY respondent ASC;

DROP TABLE IF EXISTS ferramenta_comunic;
CREATE TABLE ferramenta_comunic 
    (
        id INT NOT NULL AUTO_INCREMENT,
        PRIMARY KEY (id)
    )
    SELECT DISTINCT nome AS nome
    FROM `db_stackoverflow`.`resp_usa_ferramenta`
    ORDER BY nome ASC;