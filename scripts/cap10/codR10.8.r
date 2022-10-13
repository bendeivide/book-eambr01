##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R10.8
##################################

x <- 0; x

# Criando uma funcao com a superatribuicao
f1 <-  function() {
  # Obj2
  x <- 1
  # Modificando x do ambiente global
  x <<- 2
  # Imprimindo o ambiente de execucao
  env <- environment()
  # Imprimindo o Obj2
  res <- list(x = x, "Ambiente de execução" = env, "Ambiente Pai" = parent.env(env))
  # Retornando a lista
  return(res)
}
# Imprimindo f1
f1()

# Imprimindo x
x

# Imprimindo o ambiente envolvente de f1
environment(f1)


# Imprimindo os nomes do ambiente global
ls()
