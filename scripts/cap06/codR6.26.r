##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R6.26
##################################



# Lista
lapply(list(x = 1:10, y = 11:20), mean)

lapply(list(x = 1:10, y = 11:20), '[[', 2)

lapply(list(mat1 = matrix(1:12, 4, 3)), '[', , 2)