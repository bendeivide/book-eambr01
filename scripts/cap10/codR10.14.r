##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R10.14
##################################

# Criando uma funcao
f3 <- function() x + 1
# Modificando o ambiente envolvente de f3
environment(f3) <- emptyenv()
# Dependencias externas da funcao f3
codetools::findGlobals(f3)

# Chamando a funcao f3
f3()