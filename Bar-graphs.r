dados_covid_craibas <- read.csv("DadosCovidCraibas.csv")

# variaveis <- xtabs(~sexo + situacao_atual, data = dados_covid_craibas)

# # Gráfico de barras empilhadas:
# barplot(variaveis,
#         cex.names = 0.8,
#         col = c("#0e0d66", "#bc1a5e"),
#         ylab = "Frequência absoluta",
#         xlab = "Situação atual",
#         cex.axis = 1.15,
#         main = "Proporção dos infectados (por sexo) em cada situação",
#         cex.lab = 1.15,
#         bty = "n",
#         legend.text = c("M", "F"),
#         ylim = c(0, 700))
# box(bty = "L")

# # Gráfico de barras lado a lado:
# barplot(variaveis,
#         beside = TRUE,
#         cex.names = 0.8,
#         col = c("#0e0d66", "#bc1a5e"),
#         ylab = "Frequência absoluta",
#         xlab = "Situação atual",
#         cex.axis = 1.15,
#         main = "Proporção dos infectados (por sexo) em cada situação",
#         cex.lab = 1.15,
#         bty = "n",
#         legend.text = c("M", "F"),
#         ylim = c(0, 700))
# box(bty = "L")

# # Gráfico de barras empilhadas relativas
# u <- variaveis %*% diag(1 / colSums(variaveis))
# colnames(u) <- colnames(variaveis)

# barplot(u,
#         beside = FALSE,
#         xlab = "Situação atual",
#         ylab = "Frequência relativa",
#         main = "Proporção dos infectados (por sexo) em cada situação",
#         cex.lab = 1.15,
#         col = c("#0e0d66", "#bc1a5e"))
# box(bty = "L")


variaveis <- xtabs(~sexo + idade, data = dados_covid_craibas)

# Gráfico de barras lado a lado:
barplot(variaveis,
        beside = TRUE,
        cex.names = 0.8,
        col = c("#0e0d66", "#bc1a5e"),
        ylab = "Frequência absoluta",
        xlab = "idade",
        cex.axis = 1.15,
        main = "Proporção dos infectados (por sexo) x idade",
        cex.lab = 1.15,
        bty = "n",
        legend.text = c("M", "F"),
        ylim = c(0, 16))
box(bty = "L")

