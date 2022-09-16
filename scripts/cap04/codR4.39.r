##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R4.39
##################################


# Criando um quadro de dados
dados <- data.frame(x = 1:10,
                    y = letters[1:10],
                    z = rep(c(TRUE, FALSE), 5))
# Imprimindo dados

# Usando attach()
attach(dados)
x; y; z