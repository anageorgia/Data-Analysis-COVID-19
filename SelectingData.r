install.packages("dplyr")

library(dplyr)

df <- read.csv("DadosPandemiaAlagoas.csv")

# Selecionando apenas os dados da cidade de Craíbas
DadosCraibas <- df %>% select(id, sexo, municipio_residencia, classificacao, situacao_atual, idade) %>% filter(municipio_residencia == "Craíbas")

# Salvando o novo conjunto de dados
write.csv(DadosCraibas, "DadosCovidCraibas.csv", row.names = FALSE)


dados_covid_craibas <- read.csv("DadosCovidCraibas.csv")
# str(dados_covid_craibas)

# Frequência absoluta:
craibas_tb <- table(dados_covid_craibas$situacao_atual)
print("Frequência absoluta:")
print(craibas_tb)

# Frequência relativa
print("Frequência relativa:")
print(craibas_tb / length(dados_covid_craibas$situacao_atual))

par(mfrow = c(1, 2))

# Gráfico de barras:
barplot(craibas_tb,
        cex.names = 0.8,
        col = c("#12f596", "#d6d61a", "#0066ff", "pink", "#8e56b1cc"),
        ylab = "Número de infectados",
        xlab = "Situação atual",
        cex.axis = 1.15,
        main = "Proporção dos infectados em cada situação",
        cex.lab = 1.15,
        bty = "n",
        ylim = c(0, 700))

# Gráfico de pizza:
labs <- paste(c("Alta Hospitalar = ",
                "Alta Médica = ",
                "Internação Leito Clínico = ",
                "Isolamento Domiciliar = ",
                "Óbito = "),
        round(craibas_tb / length(dados_covid_craibas$situacao_atual),
        digits = 2), "%")

pie(craibas_tb,
    labels = NA,
    col = c("#12f596", "#d6d61a", "#0066ff", "pink", "#8e56b1cc"),
    main = "Proporção de infectados em cada situação",
    cex = 0.6)

# Plotando legenda no canto superior direito
legend("topright",
        pch = 15,
        col = c("#12f596", "#d6d61a", "#0066ff", "pink", "#8e56b1cc"),
        legend = labs,
        cex = 1.2,
        bty = "n")
