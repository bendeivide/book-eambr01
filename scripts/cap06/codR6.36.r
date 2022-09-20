##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R6.36
##################################


# Funcao que plota um grafico
grafico <- function(x, y, ...) {
  plot(x = x, y = y)
}
# Vetores
x <- 1:10; y <- rnorm(10)
# Chamada 1, com os argumentos definidos
grafico(x = x, y = y)

# Chamada 2, inserindo argumentos nao definidos
grafico(x = x, y = y, main = 'Título')
