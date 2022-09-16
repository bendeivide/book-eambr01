##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R6.11
##################################


x <- 2 # numero

# Estrutura 'if'
if (!is.numeric(x)) {
  'Nao_eh_numero'
} else {
  if ((trunc(x) %% 2) == 0) {
    cat('numero_par: ', trunc(x))
  } else {
    if ((trunc(x) %% 2) == 1) {
      cat('numero_impar: ', trunc(x))
    }
  }
}
