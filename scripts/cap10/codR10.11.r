##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R10.11
##################################

# Funcao contador
contador <- function() {
  i <- 0
  env1 <- environment()
  aux <- function() {
    i <<- i + 1
    env2 <- environment()
    res2 <- list(i = i, `AmbExec_aux` = env2, `AmbExec_contador` = env1)
    return(res2)
  }
}
# Chamada de funcao
contador1 <- contador()
contador1()

contador1()

contador1()

# Chamada de funcao
contador2 <- contador()
contador2()