##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R4.24
##################################

# 5 amostras
(am1 <- sample(x = 1:1000, size = 10, replace = TRUE))
(am2 <- sample(x = 1:1000, size = 10, replace = TRUE))
(am3 <- sample(x = 1:1000, size = 10, replace = TRUE))
(am4 <- sample(x = 1:1000, size = 10, replace = TRUE))
(am5 <- sample(x = 1:1000, size = 10, replace = TRUE))

# Amostras em colunas
amost_col <- matrix(c(am1, am2, am3, am4, am5), 10, 5); amost_col

# Calculando a media por coluna
apply(X = amost_col, MARGIN = 2, FUN = mean)

# Amostras em linhas
amost_lin <- matrix(c(am1, am2, am3, am4, am5), 5, 10, byrow = TRUE); amost_lin

# Calculando a media por linhas
apply(X = amost_lin, MARGIN = 1, FUN = mean)

# Podemos tambem adicionar argumentos adicionais
# em FUN (Media truncada em 10%)
apply(X = amost_lin, MARGIN = 1, FUN = mean, trim = 0.1)

# Usando o argumento simplify, o padrao eh simplify = TRUE
apply(X = amost_lin, MARGIN = 1, FUN = mean, simplify = FALSE)