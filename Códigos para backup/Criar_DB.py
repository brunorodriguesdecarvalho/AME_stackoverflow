#Criação do Banco de Dados via Python e MySQL Connector -
#Fiz na minha máquina usando localhost, mas se hospedar na internet, basta mudar os parâmetros da conexão
#O nome de usuário e senha foi criado dentro do PHPMyAdmin para esse caso específico, pois tenho vários bancos e usos e achei melhor separar.
import mysql.connector
db_stackoverflow = mysql.connector.connect(
    host="localhost",
    user="admin_db_ame",
    passwd="Pamonha_Doce"
)
executador_sql = db_stackoverflow.cursor()
#Cria a base se ela não existir no servidor local
executador_sql.execute("CREATE DATABASE IF NOT EXISTS db_stackoverflow COLLATE UTF8_GENERAL_CI")
print("Banco de Dados: Banco de Dados Criado")
db_stackoverflow.close
