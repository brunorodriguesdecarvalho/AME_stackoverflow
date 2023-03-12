#Criação do Banco de Dados via Python e MySQL Connector -
#Antes de executar é necessário revisar os parâmetros da conexão
#O nome de usuário e senha foi criado dentro do PHPMyAdmin para esse caso específico, pois tenho vários bancos e usos e achei melhor separar.
import mysql.connector
db_stackoverflow = mysql.connector.connect(
    host="localhost",
    user="admin_db_ame",
    passwd="Pamonha_Doce"
)
#Criação do cursor
executador_sql = db_stackoverflow.cursor()
#Cria a base se ela não existir no servidor local
executador_sql.execute("CREATE DATABASE IF NOT EXISTS db_stackoverflow COLLATE UTF8_GENERAL_CI")
#fecha essa conexão
db_stackoverflow.close
#Começo do step para carregar o CSV original no Banco de Dados
import pandas as pd
import pymysql
from sqlalchemy import create_engine
#Lê o CSV via DataFrame
df = pd.read_csv(r"C:\Users\rodri\OneDrive\Projetos\Ame StackOverflow\base_de_respostas_10k_amostra.csv", encoding="utf-8")
#Cria engine para gravar o CSV
engine = create_engine('mysql://admin_db_ame:Pamonha_Doce@localhost/db_stackoverflow?charset=utf8')
with engine.connect() as conn, conn.begin():
    df.to_sql('origem', conn, if_exists='replace', index=False)