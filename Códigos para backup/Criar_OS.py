#Importar a biblioteca do pandas para manipular os dados
import pandas as pd
import pymysql
from sqlalchemy import create_engine
#ler o CSV
df = pd.read_csv("base_de_respostas_10K_amostra.csv", usecols= ['OperatingSystem'])
#corrige a chave para começar com 1 ao invés de 0
df.index = df.index + 1
#Substituir valores NaN
df['OperatingSystem'].fillna("Sem Informação", inplace=True)
#Remover valores duplicados - Criei uma nova variável para simplificar
os = (df['OperatingSystem'].unique())
#Transforma em dataframe
os = pd.DataFrame(os)
#Exporta para CSV, tira o cabeçalho automático e a criação de chave a partir do zero
os.to_csv('os.csv', encoding='utf-8', index=False, header=['nome'])
#Carregar a lista de valores exclusivos
os2 = pd.read_csv("os.csv", encoding="utf-8")
#Cria a engine para conectar ao MySQL
engine = create_engine('mysql://admin_db_ame:Pamonha_Doce@localhost/db_stackoverflow?charset=utf8')
#Carrega a lista como uma nova tabela na base.
with engine.connect() as conn, conn.begin():
    os2.to_sql('sistema_operacional', conn, if_exists='replace', index=True, index_label='id')
with engine.connect() as con:
    con.execute('ALTER TABLE `sistema_operacional` ADD PRIMARY KEY (`id`);')
