##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira#
##################################
# CODIGO R11.2
##################################

install.packages('reticulate')	
library(reticulate)

# Carregando o script add.py
reticulate::source_python('add.py')
# Chamando a funcao add
add(5, 10)
