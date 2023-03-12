import pandas as pd
from sqlalchemy import create_engine
engine = create_engine('mysql://admin_db_ame:Pamonha_Doce@localhost/db_stackoverflow?charset=utf8')
with engine.connect() as conn, conn.begin():
    df = pd.read_sql('SELECT * FROM db_stackoverflow.resp_usa_ferramenta', engine)
#Separar as ferramentas de comunicação em cada linha
new_df = pd.DataFrame(df.nome.str.split(';').tolist(), index=df.respondente_id).stack()
new_df = new_df.reset_index([0, 'respondente_id'])
new_df.columns = ['respondente_id', 'nome']
new_df
with engine.connect() as conn, conn.begin():
    new_df.to_sql('resp_usa_ferramenta_muitos', conn, if_exists='replace', index=False)