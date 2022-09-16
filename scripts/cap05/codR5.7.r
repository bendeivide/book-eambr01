##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R5.7
##################################


# Instalando e/ou carregando o pacote 'xtable'
## install.packages('xtable')
library(xtable)
library(datasets)
# Dados
dados <- head(mtcars[,1:3]); dados



# Exportando para LaTeX
xtable(dados)