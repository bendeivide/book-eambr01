##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R6.34
##################################


estdesc <- function(x, opcao) {
  res <- switch(opcao,
                media = round(mean(x), 4),
                mediana = round(mean(x), 4),
                medapar = round(mean(x, trim = 0.1), 4))
  return(res)
}
# Objeto
set.seed(15)
x <- rnorm(1000)
# Argumentos nomeados na funcao
estdesc(x = x, opcao = 'media')


estdesc(opcao = 'media', x = x)

# Argumentos não nomeados ordenados
estdesc(x, 'media')

# Argumentos não ordenados (Gera erro)
estdesc('media', x)

