"""
import os
if os.path.exists("base_de_respostas_10K_amostra.csv"):
    dados = open("base_de_respostas_10K_amostra.csv", "r", encoding="utf-8")
    print(dados.read())
else:
    print("Erro: O arquivo dos dados não foi localizado.")
dados.close()
"""
import pandas
lerDados = pandas.read_csv("base_de_respostas_10K_amostra.csv", index_col='Respondent')
print(lerDados)
for row in lerDados.itertuples():
    print(row)