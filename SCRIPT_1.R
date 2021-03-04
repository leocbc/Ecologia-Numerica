# SCRIPT PARA A AULA INTRODUTÓRIO DE USO DO PROGRAMA R

## CONFIGURANDO DIRETÓRIO DE TRABALHO:

# 1) Crie uma pasta para as analises em seu computador
# 2) Salve todos os arquivos de dados que serão analisados na pasta criada
# 3) No R studio acesse: Menu > Session > Set Working Directory (após isso, selecione a pasta que foi criada)

# Após esses passos será possível ver os arquivos listados no menu "files/arquivos" do R studio (canto inferior direito)


## LENDO ARQUIVOS DE DADOS:

soi = scan("soi.dat")

recruit = scan("recruit.dat")

# gráfico exploratório:
plot(recruit~soi)

# gráfico mais bonito:

dados = data.frame(recruit,soi)
library(ggplot2)

ggplot(dados, aes(x=recruit, y=soi)) + 
  geom_point(
    color="blue",
    fill="#69b3a2",
    shape=22,
    alpha=0.5,
    size=4,
    stroke = 1
  )

# coeficiente de correlação de Pearson:

correlacao = cor(recruit,soi)
correlacao

# coeficiente de correlação cruzada:
coef = ccf(soi, recruit) 
coef
