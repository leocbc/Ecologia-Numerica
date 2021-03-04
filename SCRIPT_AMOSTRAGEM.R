### AMOSTRAGEM

## Leitura de dados:
dados = read.table("Dados_especies_locais.txt", header = T, sep = ",")
table(dados$Espécie)

## FUNÇÃO: sample()

amostra = sample(dados$Espécie, 50)
table(amostra)
