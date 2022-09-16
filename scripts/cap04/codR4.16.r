##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R4.16
##################################


# Objeto de modo numerico
minha_idade <- 35
mode(minha_idade)

# Coercao do objeto para modo caractere (`string`)
minha_idade <- as.character(minha_idade)
mode(minha_idade)


# Verificando se o objeto tem modo 'character'
is.character(minha_idade)