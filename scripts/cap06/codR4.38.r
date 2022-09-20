##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R4.38
##################################


# Criando um quadro de dados
dados <- data.frame(x = 1:10,
                    y = letters[1:10],
                    z = rep(c(TRUE, FALSE), 5))
# Imprimindo dados

# Acessando os elementos de forma de lista
dados[[1]]

dados$x

# Acessando os elementos em forma de matriz
dados[1, ] # Coluna 1

dados[1, 1] # Elemento da linha 1 coluna 1

dados[, 1] # Linha 1

