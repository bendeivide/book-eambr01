##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R5.4
##################################

# Arquivo temporario
x <- tempfile(pattern = 'dados', fileext = '.txt')

# Objeto
d <- data.frame(x = 1, y = 1:10)

# Exportando os dados
write.table(d, file = x, sep = '\t', quote = FALSE, row.names = FALSE)
# sep = '\t' => representa uma 	TAB entre as colunas
# file = x => Essa saida foi um arquivo temporario, mas se desejar
#             exportar os dados para um arquivo especifico, em um
#             diretorio específico, basta inserir esse caminho entre
#             aspas, por exemplo, file = 'C:\dados.txt'

# Abrindo o arquivo
file.show(x)	