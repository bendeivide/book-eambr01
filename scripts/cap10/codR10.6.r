##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R10.6
##################################


# Criando dois ambientes
amb01 <- new.env()
amb02 <- new.env(parent = amb01)
# Esses dois ambientes tem pai o ambiente pai
parent.env(amb01); parent.env(amb02)

# Identificador de memoria de amb01
amb01

# Mudando o ambiente superior
parent.env(amb01) <- emptyenv()
# Verificando novamente o ambiente superior
parent.env(amb01)