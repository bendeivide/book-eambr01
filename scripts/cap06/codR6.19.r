##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R6.19
##################################


# Contador
i <- 1
# Loop while
while (i <= 5) {
  if (i == 3) {
    i <- i + 1
    next
  }
  print(i)
  i <- i + 1
}