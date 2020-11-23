dados_covid_craibas <- read.csv("DadosCovidCraibas.csv")

idade <- dados_covid_craibas$idade

craibas_tb <- table(idade)

frequencia <- table(craibas_tb)

frequencia_rel <- prop.table(frequencia)

frequencia_ac <- cumsum(frequencia)

frequencia_rel_ac <- cumsum(frequencia_rel)

# Tabela de frequencias

tabela_frequencia <- cbind(
                        frequencia,
                        frequencia_ac = round(frequencia_ac, digits = 2),
                        frequencia_rel = round(frequencia_rel * 100,
                                                digits = 2),
                        frequencia_rel_ac = round(frequencia_rel_ac * 100,
                                                    digits = 2))

print(tabela_frequencia)

# Histograma:
hist(idade,
    breaks = 80,
    main = "Frequência de casos",
    xlab = "Idades",
    ylab = "",
    xlim = c(1, 100),
    ylim = c(0, 60),
    col = "#7f54c5")
