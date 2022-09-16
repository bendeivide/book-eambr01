##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R4.36
##################################


# Criando uma lista
l0 <- list(l01 = 1:3,
           l02 = letters[5],
           l03 = list(1, 2, 3),
           l04 = mean,
           l05 = expression(x ~ y))
# Imprimindo o primeiro elemento (objeto) da lista 'l0'
l0$l01

# Imprimindo o segundo
l0$l02

# Imprimindo o segundo, usando a indexacao e o nome do elemento
l0[['l02']]