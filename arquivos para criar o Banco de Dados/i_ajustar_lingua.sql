DROP TABLE IF EXISTS linguagem_programacao;
CREATE TABLE linguagem_programacao 
    (
        id INT NOT NULL AUTO_INCREMENT,
        PRIMARY KEY (id)
    )
    SELECT DISTINCT nome 
    FROM `db_stackoverflow`.`resp_usa_linguagem_muitos`
    order by nome;

DROP TABLE resp_usa_linguagem;
RENAME TABLE resp_usa_linguagem_muitos TO resp_usa_linguagem;

DROP TABLE IF EXISTS resp_usa_linguagem_tratada;
CREATE TABLE resp_usa_linguagem_tratada
    SELECT 
        linguagem_programacao.id as linguagem_programacao_id,
        resp_usa_linguagem.respondente_id as respondente_id
    FROM `db_stackoverflow`.`resp_usa_linguagem` , `db_stackoverflow`.`linguagem_programacao`
    WHERE resp_usa_linguagem.nome = linguagem_programacao.nome
    ORDER BY respondente_id;
DROP TABLE resp_usa_linguagem;
RENAME TABLE resp_usa_linguagem_tratada TO resp_usa_linguagem;