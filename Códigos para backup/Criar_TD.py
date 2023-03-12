import mysql.connector
db_stackoverflow = mysql.connector.connect(
    host="localhost",
    user="admin_db_ame",
    passwd="Pamonha_Doce",
    database="db_stackoverflow"
)

executador_sql = db_stackoverflow.cursor()

#Criar tabela Respondente
executador_sql.execute("CREATE TABLE IF NOT EXISTS db_admin_ame.respondente("
                       " `id` INT NOT NULL AUTO_INCREMENT,"
                       " `nome` TEXT NOT NULL ,"
                       " `contrib_open_source` INT(1) NOT NULL ,"
                       " `programa_hobby` INT(1) NOT NULL ,"
                       " `salario` FLOAT NOT NULL ,"
                       " `sistema_operacional_id` INT NOT NULL ,"
                       " `pais_id` INT NOT NULL ,"
                       " `empresa_id` INT NOT NULL ,"
                       " PRIMARY KEY (`id`)) ENGINE = InnoDB; ")
db_stackoverflow.close

