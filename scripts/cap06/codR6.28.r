##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R6.28
##################################



lapply(list(1:10, 11:20), mean)

sapply(list(1:10, 11:20), mean)

# 'simplify = FALSE' em 'sapply()' eh equivalente a 'lapply()'
sapply(list(1:10, 11:20), mean, simplify = FALSE)