setwd("C:/Users/User/Desktop/DSA/PowerBI/Capitulo12")
getwd()

# Instalar Pacotes
install.packages("dplyr")
install.packages("data.table")
install.packages("ggplot2")

# Carregar os pacotes
library(dplyr)
library(data.table)
library(ggplot2)

# carrega Dados
dados_iris <- iris
View(dados_iris)

# Tarefa 1 - Sumarizar os dados com as m�dias de cada coluna de um dataset
library(dplyr)
medias_iris <- summarize(group_by(dados_iris, Species),
                        media_sepal_length = mean(Sepal.Length),
                        media_sepal_width = mean(Sepal.Width),
                        media_petal_length = mean(Petal.Length),
                        media_petal_width = mean(Petal.Width))
View(medias_iris)

# Tarefa 2 - Extrair o valor inteiro de uma das colunas decimais
library(data.table)
dados_iris_id <- data.table(dados_iris)
View(dados_iris_id)
dados_iris_id$Sepal.Length <- as.integer(dados_iris_id$Sepal.Length)
View(dados_iris_id)

# Para executar no Power query
library(data.table)
dados_iris_id <- data.table(dados_iris)
dados_iris_id$Sepal.Length <- as.integer(dados_iris_id$Sepal.Length)

# Tarefa 3 - Construir um gr�fico mostrando a rela��o de duas vari�veis num�ricas
library(ggplot2)
ggplot(data = dados_iris, aes(x = Petal.Width, y = Petal.Length)) +
  geom_point(aes(color = Species), size = 3) +
  ggtitle("Largura e Comprimento das P�talas") + 
  labs(x = "Largura da P�tala",
  y = "Comprimento da P�tala") + 
  theme_bw() +
  theme(title = element_text(size = 15, color = "turquoise2"))

# Cores linguagem R
colors()