#Inserindo os dados
alt_brot_abc<-c(1.00,1.18,1.21,1.27,1.34,1.37,1.43,1.47,1.52,
                1.68,1.01,1.19,1.25,1.30,1.35,1.37,1.43,1.47,
                1.57,1.73,1.08,1.19,1.26,1.31,1.36,1.39,1.44,
                1.49,1.61,1.77,1.11,1.20,1.27,1.34,1.36,1.41,
                1.46,1.50,1.62)
#Calculando a média
mean(alt_brot_abc)


#Calculando a mediana
median(alt_brot_abc)


#install.packages("modeest") #Instale o pacote para calcular a moda
library(modeest) #Carregue o pacote
mfv(alt_brot_abc)

#Calcular a variância
var(alt_brot_abc)

#Calcular o desvio padrão
sd(alt_brot_abc)

#Calcular o erro padrão com o pacote plotrix
#install.packages("plotrix")
library(plotrix)
std.error(alt_brot_abc)


#Criar função para o cálculo do parâmetro estatístico
ep <- function(x) sd(x)/sqrt(length(x))     #Função para calcular o erro padrão
cv <- function(x) sd(x)/mean(x)*100     #Função para calcular o coeficiente de variação

#Calcular o desvio padrão (fórmula)
ep(alt_brot_abc)

#Calcular o coeficiente de variação (Fórmula)
cv(alt_brot_abc)


#Medidas separatrizes
summary(alt_brot_abc)


