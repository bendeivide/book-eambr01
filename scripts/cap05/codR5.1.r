##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R5.1
##################################

# Diretorio
getwd()
# Mudando para o diretorio de interesse
setwd('C:/eambr01')
# Verificando os arquivos no diretorio de trabalho
list.files()
# Importando os dados apontando para o diretorio do arquivo
dados1 <- read.table(file = 'C:/eambr01/alfafa.txt', header = TRUE)
# Considerando que o arquivo esta no diretorio de
# trabalho, isto eh, getwd()
dados2 <- read.table('alfafa.txt', header = TRUE)
# Importando os dados com decimais com ',' apontando para o diretorio do arquivo
dados3 <- read.table(file = 'C:/eambr01/dadost1980.txt', header = TRUE, dec = ',')
# Considerando que o arquivo esta no diretorio de
# trabalho, isto eh, getwd()
dados4 <- read.table(file = 'dadost1980.txt', header = TRUE, dec = ',')
# Importando os dados com decimais ',', e separados por ';' apontando para o diretorio do arquivo
dados5 <- read.table(file = 'C:/eambr01/producao.csv', header = TRUE, dec = ',', sep = ';')
# Considerando que o arquivo esta no diretorio de
# trabalho, isto eh, getwd()
dados6 <- read.table(file = 'producao.csv', header = TRUE, dec = ',', sep = ';')
# Importando da internet
dados7 <- read.table(file = 'https://raw.githubusercontent.com/bendeivide/book-eambr01/main/files/alfafa.txt', header = TRUE)