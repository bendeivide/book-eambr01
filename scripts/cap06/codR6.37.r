##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R6.37
##################################


# Recuperando o valor do segundo argumento, e assim por diante
aux <-  \(...) ..2
aux(x = 1, y = 2, z = NULL)

# Recuperando os nomes
aux <-  \(...) ...names()
aux(x = 1, y = 2, z = NULL)

# Recuperando o numero de argumentos em '...'
aux <-
  \(x, ...) ...elt(x) # observe que x eh um argumento da funcao
aux(x = 1, y = 2, z = NULL)

# Recuperando o numero de argumentos em '...'
aux <-  \(...) ...length()
aux(x = 1, y = 2, z = NULL)

# Recuperando os argumentos de '...'
aux <-  \(...) list(...)
aux(x = 1, y = 2, z = NULL)$x$y$z
