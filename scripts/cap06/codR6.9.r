##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R6.9
##################################

# Funcao vetorizada '*'
x <- 1:4
x * 2

# Se nao fosse vetorizada, fariamos
x <- numeric()
for (i in 1:4) {
  x[i] <- i * 2
}
x