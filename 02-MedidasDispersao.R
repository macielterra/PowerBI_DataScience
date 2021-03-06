# Estatistica B�sica

# Parte 2 - Medidas de Dispers�o

#Definindo a pasta de trabalho
setwd("C:/Users/User/Desktop/DSA/PowerBI/Capitulo12")
getwd()

# Carregando o DataSet
Vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo DataSet
View(Vendas)
str(Vendas)
summary(Vendas$Valor)
summary(Vendas$Custo)

# Variancia
var(Vendas$Valor)

# Desvio Padr�o
sd(Vendas$Valor)