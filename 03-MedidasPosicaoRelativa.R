#Definindo a pasta de trabalho
setwd("C:/Users/User/Desktop/DSA/PowerBI/Capitulo12")
getwd()

# Carregando o DataSet
Vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Medidas de Posi��o Relativa

# Resumo dos Dados
head(Vendas)
tail(Vendas)
View(Vendas)
View(Vendas)
View(Vendas)

# Medidas de Tendencia Central
summary(Vendas$Valor)
summary(Vendas[c('Valor','Custo')])

# Explorando vari�veis num�ricas
mean(Vendas$Valor)
median(Vendas$Valor)
quantile(Vendas$Valor)
quantile(Vendas$Valor, probs = c(0.01,0.99))
quantile(Vendas$Valor, seq(from = 0, to =1, by = 0.10))
IQR(Vendas$Valor)
range(Vendas$Valor)
summary(Vendas$Valor)
diff(range(Vendas$Valor))

