#Dados de Precipitação em Belterra
Prec_Belt<-c(1539.2,2427.6,2001.8,1301.3,1477.6,1527.1,2023.8) #Vetor com valores de precipitação de Belterra
Prec_Belt

#Comandos básicos para gráficos
barplot(Prec_Belt) #Cria um gráfico de colunas
plot(Prec_Belt)    #Cria um gráfico de pontos
boxplot(Prec_Belt) #Cria um gráfico de caixa
hist(Prec_Belt)    #Cria um histograma

?plot.default

#Explorando a função plot
#plot(x, y, type = "p",  xlim = NULL, ylim = NULL, main = NULL, sub = NULL, xlab = NULL, ylab = NULL, ...)\
x<-seq(1,20,1) #cria uma sequência de 1 a 20, de 1 em 1
y<-seq(10,200,10) #cria uma sequência de 10 a 200, de 10 em 10
plot(x,y) #plota as duas variáveis

par(mfrow=c(3,3)) #Permite plotar 9 gráficos em uma mesma janela (3x3)

plot(x,y, type = "p") #Pontos (padrão do pacote)
plot(x,y, type = "l") #Linhas
plot(x,y, type = "b") #Pontos e linhas
plot(x,y, type = "c") #Pontos vazios unidos por linhas
plot(x,y, type = "o") #Pontos cheios com linha
plot(x,y, type = "s") #Degraus
plot(x,y, type = "S") #Degraus
plot(x,y, type = "h") #Linhas verticais
plot(x,y, type = "n") #Não produz pontos ou linhas

par(mfrow=c(1,1)) #Retorna ao padrão original (1x1)

#' Usando outras paletas
# install.packages("RColorBrewer") #instale o pacote
library("RColorBrewer") #Carregue o pacote
display.brewer.all() #todas as paletas
display.brewer.pal(n = 8, name = 'RdBu') #escolhendo uma palata
brewer.pal(n = 8, name = "RdBu")#paleta em códigos hexidecimais
plot(x,y, type = "o", pch=19, col="#2166AC") #mudando a cor do gráfico de acordo com um código hexadecimal


plot(x,y, type = "o", pch=19)
plot(x,y, type = "o", pch=19, col=8) #gráfico cor cinza
plot(x,y, type = "o", pch=19, col="grey") #gráfico cor cinza
plot(x,y, type = "o", pch=19, col="grey40") #gráfico cor cinza
plot(x,y, type = "o", pch=19, col="grey40",
     las=1,     #Direção dos números do eixo y, las=2 muda o eixo x
     tcl=0.3,   #Modifica o tamanho dos traçados dos eixos
     cex.lab=1.5, #altera o tamanho da fonte dos rotulos dos eixos
     cex.axis=1.5, #altera o tamanho da fonte dos números dos eixos
     xlab = "Variável A", #adiciona título no eixo x
     ylab = "Variável B", #adiciona título no eixo y
     main = "Demonstração") #adicina título ao gráfico  


plot(x,y, type = "o", pch=19, col="grey40",
     las=1,     #Direção dos números do eixo y, las=2 muda o eixo x
     tcl=0.3,   #Modifica o tamanho dos traçados dos eixos
     cex.lab=1.5, #altera o tamanho da fonte dos rotulos dos eixos
     cex.axis=1.5, #altera o tamanho da fonte dos números dos eixos
     xlab = "Variável A", #adiciona título no eixo x
     ylab = "Variável B", #adiciona título no eixo y
     main = "Demonstração", #adicina título ao gráfico
     bty="l")  #Modifica o layout do gráfico




# Carregamento de dados em vetores
Prec_Belt<-c(1539.2,2427.6,2001.8,1301.3,1477.6,1527.1,2023.8) #Vetor com valores de precipitação de Belterra
Prec_Belem<-c(3563.0,3775.6,3598.4,3445.2,3416.2,3563.9,3830.4) #Vetor com valores de precipitação de Belterra
Anos<-c(2012:2018)

# Adicionando vários gráficos na mesma janela
par(mfrow=c(1,2))
plot(Anos,Prec_Belt, ylim = c(1200,2500), yaxs="i", 
     xlab = "Belterra", ylab = "Precipitação Pluvial (mm)",
     type="o", pch=20, tck=0.02,las=1, col="black")

#Gráfico para Belém
plot(Anos,Prec_Belem, ylim = c(3200,4000), yaxs="i", 
     xlab = "Belém", ylab = "Precipitação Pluvial (mm)",
     type="o", pch=20, tck=0.02,las=1, col=1)
par(mfrow=c(1,1))

#' ## Barplot
#barplot(height, ...)

### Formas Básicas
par(mfrow=c(2,2))
# Gráfico de barras (Forma 1)
Especies<-c("A","B","C","D")
Observacoes<-c(4,3,2,1)
barplot(Observacoes, names.arg = Especies, col = 3)

# Gráfico de barras (Forma 2)
b <- c(4, 3, 2, 1) # adiciona quantidades
names(b) <- c(LETTERS[1:4]) #Adiciona letras em ordem alfabética
barplot(b, col = "blue")

# Gráfico de barras (Forma 3)
Observacoes2<-c(4,3,2,1)
names(Observacoes2)<-c("A","B","C","D")
Observacoes2 
barplot(Observacoes2,col = 5)

# Gráfico de barras (Forma 4)
barplot(table(c("A","A","A","A","B","B","B","C","C","D")),col="green")
par(mfrow=c(1,1))

### Gráfico de Colunas
barplot(Prec_Belt,  # Vetor de dados 
        xlab="Anos", # Adiciona texto ao eixo x
        ylim=c(0,2500),     # Delimita o limite do eixo y
        ylab="Precipitação pluvial Anual (mm)", #Adiciona texto ao eixo y
        main = "Precipitação Pluvial Anual no 
        município de Belterra-PA (2016 a 2018)", #Adiciona título ao gráfico
        sub="Fonte: https://bdmep.inmet.gov.br/") #Adiciona fonte

#Modificando os eixos e colunas 
barplot(Prec_Belt, 
        xlab="Anos",
        ylim=c(0,2500),
        ylab="Precipitação pluvial (mm)",
        main = "Precipitação Pluvial Anual no 
        município de Belterra-PA (2016 a 2018)", 
        sub="Fonte: https://bdmep.inmet.gov.br/",
        border=NA, # Remove as bordas das colunas
        col = 4, # Muda a cor das colunas
        tcl=0.3, # Modifica o tamanho dos traços do eixo
        las=1) # Modifica a orientação dos valores da escala
box() #Adiciona uma caixa ao gráfico

### Adicionando os dados de Precipitação de Belém
#Criando uma matriz
Precip<-matrix(c(3563.0,3775.6,3598.4,3445.2,3416.2,3563.9,3830.4,1539.2,
                 2427.6,2001.8,1301.3,1477.6,1527.1,2023.8), 
               nrow = 7,ncol=2)
Precip

# Nomeando as linhas e colunas da matriz
Precip<-matrix(c(3563.0,3775.6,3598.4,3445.2,3416.2,3563.9,3830.4,1539.2,
                 2427.6,2001.8,1301.3,1477.6,1527.1,2023.8), 
               nrow = 7,ncol=2,
               dimnames=list(c(2012:2018),c("Belém", "Belterra")))
Precip

# Adicionando dados de Belém e legenda ao gráfico
barplot(Precip, beside=T, 
        ylim=c(0,4000),ylab="Precipitação pluvial (mm)",
        xlab="Anos",
        main = "Precipitação Pluvial Anual nas cidades 
        paraenses de Belém e Belterra (2016 a 2018)", 
        border=NA, 
        sub="Fonte: https://bdmep.inmet.gov.br/",
        tcl=0.3,
        legend=c(2012:2018),
        args.legend=list(bty="n",ncol=2))
box()

#' ## Histograma
#hist(x, ...)

# Simulando dados com distribuição normal
dist.norm <- rnorm(n = 800, mean = 20, sd = 2)

# Histograma
hist(dist.norm)
# Inserindo os dados diretamente no R
alt_brot_abc<-c(1.00,1.18,1.21,1.27,1.34,1.37,1.43,1.47,1.52,
                1.68,1.01,1.19,1.25,1.30,1.35,1.37,1.43,1.47,
                1.57,1.73,1.08,1.19,1.26,1.31,1.36,1.39,1.44,
                1.49,1.61,1.77,1.11,1.20,1.27,1.34,1.36,1.41,
                1.46,1.50,1.62)

# Histograma
hist(alt_brot_abc, right = F, breaks = 7,
     xlab = "Altura de Brotos de Abacaxi (cm)",
     ylab="Frequência", col="blue", main = "", tcl=0.3,
     las=1)
box()

#' ## Boxplot
#boxplot(x, ...)

# Inserindo os dados diretamente no R
alt_brot_abc<-c(1.00,1.18,1.21,1.27,1.34,1.37,1.43,1.47,1.52,
                1.68,1.01,1.19,1.25,1.30,1.35,1.37,1.43,1.47,
                1.57,1.73,1.08,1.19,1.26,1.31,1.36,1.39,1.44,
                1.49,1.61,1.77,1.11,1.20,1.27,1.34,1.36,1.41,
                1.46,1.50,1.62)
boxplot(alt_brot_abc)

boxplot(alt_brot_abc, horizontal=T,
        col="orange",
        ylab="Altura de brotos (cm)")

# Nomeando as linhas e colunas da matriz
Precip<-matrix(c(3563.0,3775.6,3598.4,3445.2,3416.2,3563.9,3830.4,1539.2,
                 2427.6,2001.8,1301.3,1477.6,1527.1,2023.8), 
               nrow = 7,ncol=2,
               dimnames=list(c(2012:2018),c("Belém", "Belterra")))

boxplot(Precip,
        ylab="Precipitação pluvial (mm)",
        las=1,
        col=c("orange","blue"))

boxplot(Precip,
        yaxs="i",
        ylim=c(0,4000),
        ylab="Precipitação pluvial (mm)",
        las=1,
        col=c("orange","blue"))

#' ## Setograma
#pie(x, labels = names(x), edges = 200, radius = 0.8,clockwise = FALSE, init.angle = if(clockwise) 90 else 0,density = NULL, angle = 45, col = NULL, border = NULL,lty = NULL, main = NULL, ...)

# Usando os dados de Precipitação em Belém e Belterra
Prec_Belt<-c(1539.2,2427.6,2001.8,1301.3,1477.6,1527.1,2023.8) #Vetor com valores de precipitação de Belterra
Prec_Belem<-c(3563.0,3775.6,3598.4,3445.2,3416.2,3563.9,3830.4) #Vetor com valores de precipitação de Belterra

# Somando o total de precipitação nos munucípios
a<-sum(Prec_Belem) #Soma os valores de precipitação de Belém
b<-sum(Prec_Belt) #Soma os valores de precipitação de Belterra

# Salvando o resultado em um novo objeto
Total<-c(a,b)

# Gráfico de pizza
pie(Total)

# Nomeando as colunas
names(Total)<-c("Belém","Belterra")

# Verificando
pie(Total)

# Aprimorando o gráfico
pie(Total, col = c("darkblue","darkred"), border = "white")














