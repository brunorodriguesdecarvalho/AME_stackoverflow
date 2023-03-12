DROP TABLE IF EXISTS ferramenta_comunic;
CREATE TABLE ferramenta_comunic 
    (
        id INT NOT NULL AUTO_INCREMENT,
        PRIMARY KEY (id)
    )
    SELECT DISTINCT nome 
    FROM `db_stackoverflow`.`resp_usa_ferramenta_muitos`
    order by nome;

DROP TABLE resp_usa_ferramenta;
RENAME TABLE resp_usa_ferramenta_muitos TO resp_usa_ferramenta;

DROP TABLE IF EXISTS resp_usa_ferramenta_tratada;
CREATE TABLE resp_usa_ferramenta_tratada
    SELECT 
        ferramenta_comunic.id as ferramenta_comunic_id,
        resp_usa_ferramenta.respondente_id as respondente_id
    FROM `db_stackoverflow`.`resp_usa_ferramenta` , `db_stackoverflow`.`ferramenta_comunic`
    WHERE resp_usa_ferramenta.nome = ferramenta_comunic.nome
    ORDER BY respondente_id;
DROP TABLE resp_usa_ferramenta;
RENAME TABLE resp_usa_ferramenta_tratada TO resp_usa_ferramenta;