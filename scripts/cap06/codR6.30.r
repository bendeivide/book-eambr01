##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R6.30
##################################

mapply(FUN = mean, list(x = 1:10, y = 11:20), USE.NAMES = TRUE)

mapply(FUN = mean, list(x = 1:10, y = 11:20), USE.NAMES = FALSE)

mapply(FUN = rep, x = 1:4,  times = 1:4)

mapply(FUN = rep, x = 1:4,  times = 4)

mapply(rep, times = 1:4, MoreArgs = list(x = 4))