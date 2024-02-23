file <- read.csv("exercises/sheet1/DadosFolha1.csv", header = TRUE)

ex3 <- function(x = file) {
    data <- na.omit(x$Ex3)
    barplot(table(data), main="Magnitudes de Sismos na Califórnia", xlab="Magnitudes", ylab="Contagem", col="#689d6a")
    cat("Mean:", mean(data), "\n")
    cat("Median:", median(data), "\n")
    cat("Standard Deviation:", sd(data), "\n")
}

ex4 <- function(x = file) {
    data <- na.omit(x$Ex4)
    # barplot(table(data), main="Perímetro Cefálico de Recém Nascidos do Sexo Masculino", xlab="Perímetro (em cm)", ylab="Contagem", col="#689d6a")
    hist(data, main="Perímetro Cefálico de Recém Nascidos do Sexo Masculino", xlab="Perímetro (em cm)", ylab="Frequência", col="#689d6a")
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
    hist(data, main="Atividade de uma enzima nas plaquetas sanguíneas", xlab="Atividade", ylab="Frequência", col="#689d6a")    
    cat("Quartiles:", quantile(data, type=2), "\n")
    cat("Inter-Quartile Range:", IQR(data, type=2), "\n")
}

ex7 <- function(x = file) {
    data <- na.omit(x$Ex7)
    # hist(data, main="Comprimentos de tripanossomas", xlab="Comprimento", ylab="Frequência", col="#689d6a", breaks=seq(min(data), max(data), 1)) 
    interval <- ceiling((max(data) - min(data)) / 6)
    hist(data, main="Comprimentos de tripanossomas", xlab="Comprimento", ylab="Frequência", col="#689d6a", breaks=seq(min(data), min(data)+6*interval, interval))
}

ex9 <- function(x = file) {
    data <- na.omit(x$Ex9)
    hist(data, main="Idade do primeiro diagnóstico de diabetes tipo 2", xlab="Idade", ylab="Frequência", col="#689d6a")
    cat("Mean:", mean(data), "\n")
    cat("Standard Deviation:", sd(data), "\n")
}