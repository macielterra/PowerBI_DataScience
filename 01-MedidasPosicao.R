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

# M�dia
?mean
mean(Vendas$Valor)
mean(Vendas$Custo)

# M�dia Ponderada
?weighted.mean
weighted.mean(Vendas$Valor, w = Vendas$Custo)

# Mediana
median(Vendas$Valor)
median(Vendas$Custo)

# Moda
# Criando uma fun��o
moda <- function(v){
  valor_unico <-unique(v)
  valor_unico[which.max(tabulate(match(v,valor_unico)))]
}

# Obtendo a Moda
resultado <- moda(Vendas$Valor)
print(resultado)

# Obtendo a Moda
resultado_Custo <- moda(Vendas$Custo)
print(resultado)

# Criando gr�fico de m�dia de valor por Estado com ggplot2
install.packages("ggplot2")
library(ggplot2)

# cria gr�fico
ggplot(Vendas) + 
  stat_summary (aes(x = Estado,
                   y = Valor),
               fun = mean,
               geom = "bar",
               fill = "lightgreen",
               col = "grey50")+
                 labs(title = "M�dia de Valor por Estado")

