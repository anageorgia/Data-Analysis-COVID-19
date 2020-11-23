dados_covid_craibas <- read.csv("DadosCovidCraibas.csv")


# Boxplot 1:
# boxplot(idade ~ sexo, data = dados_covid_craibas)

# # Bloxplot 2:
# levels(dados_covid_craibas$sexo) <- trimws(levels(dados_covid_craibas$sexo))
# dados_covid_craibas2 <- droplevels(subset(dados_covid_craibas, sexo != ""))

# bp <- boxplot(idade ~ sexo, data = dados_covid_craibas2)

# # Amplitude interquartílica.
# aiq <- bp$stats[4, ] - bp$stats[2, ]
# l <- bp$stats[2, ] - 1.5 * aiq
# u <- bp$stats[4, ] + 1.5 * aiq
# i <- seq_along(u)

# boxplot(idade ~ sexo,
#         data = dados_covid_craibas2,
#         notch = TRUE,
#         col = "#ff5c21",
#         xlab = "Sexo",
#         ylab = "Idade")

# points(x = 1:nlevels(dados_covid_craibas2$sexo), y = mds, pch = 4, cex = 1.5)
# segments(x0 = i - 0.5, x1 = i + 0.5, y0 = l, y1 = l,
#          col = "gray50", lty = 3)
# segments(x0 = i - 0.5, x1 = i + 0.5, y0 = u, y1 = u,
#          col = "gray50", lty = 3)
idade <- dados_covid_craibas$idade
sexo <- dados_covid_craibas$sexo

print(summary(dados_covid_craibas))
