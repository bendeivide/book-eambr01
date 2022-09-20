##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R2.4
##################################

# Criando um nome 'n' associado a um objeto 10 no escopo da funcao (ambiente global)
n <- 10
# Criando um nome 'funcao' associado a um objeto que eh uma função criado no ambiente global
funcao <- function() {
  # Imprimindo n
  print(n)
}
# Imprimindo 'funcao' no ambiente global
funcao()


# Criando um novo ambiente
novo_ambiente <- new.env()
# Criando um nome "n" associado ao objeto 20 no ambiente  'novo_ambiente'
novo_ambiente$n <- 20
# Criando um objeto funcao no ambiente 'novo_ambiente'
environment(funcao) <- novo_ambiente
# Imprimindo 'funcao' no ambiente 'novo_ambiente'
funcao()