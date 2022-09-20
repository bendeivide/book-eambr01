##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira#
##################################
# CODIGO R5.2
##################################

# Diretorio
getwd()
# Verificando os arquivos do diretorio de trabalho
list.files()
# Importando os dados da internet
dados7 <- read.table(file = 'https://raw.githubusercontent.com/bendeivide/book-eambr01/main/files/alfafa.txt', header = TRUE)
# Salvando em '.RData'
save(dados7, file = 'alfafa.RData')
# Carregando '.RData' para o ambiente global
load('alfafa.RData')