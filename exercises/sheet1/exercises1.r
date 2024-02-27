par(bg = "#282828", col="#ebdbb2", col.axis="#ebdbb2", col.lab="#ebdbb2", col.main="#ebdbb2", fg="#ebdbb2", family="JetBrainsMono Nerd Font")
file <- read.csv("exercises/sheet1/DadosFolha1.csv", header = TRUE)

ex3 <- function(x = file) {
    data <- na.omit(x$Ex3)

    par(mfrow=c(2,1))
    barplot(table(data), main="Magnitudes de Sismos na Califórnia", xlab="Magnitudes", ylab="Contagem", col="#689d6a")
    stripchart(data, method="stack", main="Magnitudes de Sismos na Califórnia", xlab="Magnitudes", ylab="Contagem", col="#689d6a", pch=19)
    par(mfrow=c(1,1))

    cat("Mean:", mean(data), "\n")
    cat("Median:", median(data), "\n")
    cat("Standard Deviation:", sd(data), "\n")
}

ex4 <- function(x = file) {
    data <- na.omit(x$Ex4)

    par(mfrow=c(2,1))
    barplot(table(data), main="Perímetro Cefálico de Recém Nascidos do Sexo Masculino", xlab="Perímetro (em cm)", ylab="Contagem", col="#689d6a")
    hist(data, main="Perímetro Cefálico de Recém Nascidos do Sexo Masculino", xlab="Perímetro (em cm)", ylab="Frequência", col="#689d6a")
    par(mfrow=c(1,1))

    cat("Mean:", mean(data), "\n")
    cat("Standard Deviation:", sd(data), "\n")
}

ex5 <- function(x = file) {
    data <- na.omit(x$Ex5)
    hist(data, main="Largura do último molar superior em Acropithecus Rigidus", xlab="Largura", ylab="Frequência", col="#689d6a")
    cat("Mean:", mean(data), "\n")
    cat("Median:", median(data), "\n")
}

ex6 <- function(x = file) {
    data <- na.omit(x$Ex6)

    par(mfrow=c(2,1))
    hist(data, main="Atividade de uma enzima nas plaquetas sanguíneas", xlab="Atividade", ylab="Frequência", col="#689d6a")
    boxplot(data, main="Atividade de uma enzima nas plaquetas sanguíneas", xlab="Atividade", ylab="Frequência", col="#689d6a", horizontal=TRUE)
    par(mfrow=c(1,1))

    cat("Quartiles:", quantile(data, type=2), "\n")
    cat("Inter-Quartile Range:", IQR(data, type=2), "\n")
}

ex7 <- function(x = file) {
    data <- na.omit(x$Ex7)
    
    par(mfrow=c(2,1))
    hist(data, main="Comprimentos de tripanossomas", xlab="Comprimento", ylab="Frequência", col="#689d6a", breaks=seq(min(data), max(data), 1)) 
    interval <- ceiling((max(data) - min(data)) / 6)
    hist(data, main="Comprimentos de tripanossomas", xlab="Comprimento", ylab="Frequência", col="#689d6a", breaks=seq(min(data), min(data)+6*interval, interval))
    par(mfrow=c(1,1))
}

ex9 <- function(x = file) {
    data <- na.omit(x$Ex9)
    hist(data, main="Idade do primeiro diagnóstico de diabetes tipo 2", xlab="Idade", ylab="Frequência", col="#689d6a")
    cat("Mean:", mean(data), "\n")
    cat("Standard Deviation:", sd(data), "\n")
}

ex11 <- function(x = file) {
    data <- na.omit(x$Ex11)

    par(mfrow=c(2,1))
    barplot(table(data), main="Tamanho da ninhada de porcas", xlab="Tamanho", ylab="Contagem", col="#689d6a")
    boxplot(data, main="Tamanho da ninhada de porcas", xlab="Tamanho", ylab="Contagem", col="#689d6a", horizontal=TRUE)
    par(mfrow=c(1,1))

    cat("Mean:", mean(data), "\n")
    cat("Median:", median(data), "\n")
    cat("Standard Deviation:", sd(data), "\n")
    # Note: mode is not here since there's no standard function
}

ex12 <- function(x = file) {
    data <- na.omit(x$Ex12)
    hist(data, main="Altura do caule das plantas numa estufa", xlab="Altura", ylab="Frequência", col="#689d6a")
    cat("Mean:", mean(data), "\n")
    cat("Variance:", var(data), "\n")
    cat("Standard Deviation:", sd(data), "\n")
}

ex13 <- function(x = file) {
    dataBefore <- na.omit(x$Ex13Antes)
    dataAfter <- na.omit(x$Ex13Depois)

    par(mfrow=c(2,1))
    boxplot(dataBefore, dataAfter, names=c("Antes", "Depois"), main="Tensão sistólica antes e depois do tratamento", xlab="Tensão", ylab="Distribuição", col="#689d6a", horizontal=TRUE)
    plot(dataBefore, dataAfter, main="Tensão sistólica antes e depois do tratamento", xlab="Tensão Antes", ylab="Tensão Depois", col="#689d6a", pch=19)
    par(mfrow=c(1,1))

    cat("Correlation Coefficient:", cor(dataBefore, dataAfter), "\n")
}

ex15 <- function(x = file) {
    dataX <- na.omit(x$Ex15x)
    dataY <- na.omit(x$Ex15y)
    plot(dataX, dataY, main="Diagrama de dispersão", xlab="x", ylab="y", col="#689d6a", pch=19)
    cat("Correlation Coefficient:", cor(dataX, dataY), "\n")
}

ex17 <- function(x = file) {
    dataA <- na.omit(x$Ex17A)
    dataB <- na.omit(x$Ex17B)
    boxplot(dataA, dataB, names=c("A", "B"), main="Peso dos animais de dois grupos submetidos a diferentes dietas", xlab="Peso, em gramas", ylab="Distribuição", col="#689d6a", horizontal=TRUE)
}