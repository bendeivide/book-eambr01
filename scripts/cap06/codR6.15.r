##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R6.15
##################################

# Contador
i <- 1
# Loop repeat
repeat {
  if (i > 5) {
    break
  }
  else {
    if (i == 3) {
      i <- i + 1
      next
      print(i + 1)
    }
    print(i)
    i <- i + 1
  }
}