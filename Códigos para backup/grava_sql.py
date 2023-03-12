import pandas as pd
import pymysql
from sqlalchemy import create_engine

df = pd.read_csv("base_de_respostas_10K_amostra.csv", encoding="utf-8")

engine = create_engine('mysql://admin_db_ame:Pamonha_Doce@localhost/db_stackoverflow?charset=utf8')
with engine.connect() as conn, conn.begin():
    df.to_sql('origem', conn, if_exists='replace', index=False)