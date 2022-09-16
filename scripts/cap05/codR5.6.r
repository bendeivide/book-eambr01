##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R5.6
##################################


# Dados do pacote nativo 'datasets'
library('datasets')
dados <- head(cars); dados # Quadro de dados (Data frame)

# Instalando e/ou carregando writexl
install.packages('writexl')
library(writexl)
# Diretorio de trabalho
dirtrab <- getwd()
# Nome do arquivo
nome <- 'dados.xlsx'
# Caminho
caminho <- paste(dirtrab, nome, sep = '/')
# Exportando esses dados para um '.xlsx'
file <- writexl::write_xlsx(dados, caminho)
# Mortrando o arquivo
file.show(file)

# Vamos criar agora listas de quadro de dados
d1 <- head(cars); d1 # valores iniciais de 'cars'
d2 <- tail(cars); d2 # valores finais de 'cars'

lista <- list(elem01 =d1,  elem02 =02); lista


# Diretorio de trabalho
dirtrab <- getwd()
# Nome do arquivo
nome <- 'lista.xlsx'
# Caminho
caminho <- paste(dirtrab, nome, sep = '/')
# Exportando esses dados para um '.xlsx'
file <- writexl::write_xlsx(lista, caminho)
# Mortrando o arquivo
file.show(file)