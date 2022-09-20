##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R10.10
##################################

# Verificando os nomes no ambiente global
ls()

# Criando uma funcao
f2 <-  function() {
  x <<- 2
}
# Executando f2
f2()

# Verificando novamente os nomes no ambiente global
ls()

# Verificando o valor de x
x