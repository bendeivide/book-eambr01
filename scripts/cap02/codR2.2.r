##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira#
##################################
# CODIGO R2.2
##################################

# Instale o pacote lobstr
install.packages("lobstr")

# Criando um nome 'n' associado a um objeto 10 
n <- 10
lobstr::obj_addr(n) # Id. de memoria do objeto



# Criando um nome "funcao" associado a um objeto
funcao <- function() {
  print(n) # Imprimindo n
  n <<- 15 # Nome "n" associado a um objeto 15
  print(n) # Imprimindo n
}
funcao() # Imprimindo 'funcao'

# Imprimindo 'n'
n


lobstr::obj_addr(n) # Id. de memoria do objeto