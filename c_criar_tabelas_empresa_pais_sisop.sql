DROP TABLE IF EXISTS empresa;
CREATE TABLE empresa 
    (
        id INT NOT NULL AUTO_INCREMENT,
        PRIMARY KEY (id)
    )
    SELECT DISTINCT CompanySize AS tamanho
    FROM `db_stackoverflow`.`origem`
    ORDER BY tamanho ASC;

DROP TABLE IF EXISTS pais;
CREATE TABLE pais 
    (
        id INT NOT NULL AUTO_INCREMENT,
        PRIMARY KEY (id)
    )
    SELECT DISTINCT Country AS nome
    FROM `db_stackoverflow`.`origem`
    ORDER BY nome ASC;

DROP TABLE IF EXISTS sistema_operacional;
CREATE TABLE sistema_operacional 
    (
        id INT NOT NULL AUTO_INCREMENT,
        PRIMARY KEY (id)
    )
    SELECT DISTINCT OperatingSystem AS nome
    FROM `db_stackoverflow`.`origem`
    ORDER BY nome ASC;
