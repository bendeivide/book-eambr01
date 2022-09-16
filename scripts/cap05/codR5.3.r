##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R5.3
##################################

# Criando um arquivo temporario trees.rds
dados <- tempfile('trees', fileext = '.rds')
## Salvando um unico objeto em dados
saveRDS(trees, dados)
## Recarregando dados em um novo objeto
trees2 <- readRDS(dados)
identical(trees, trees2)

# ou examinar via conexao, que sera aberto quando necessario
con <- gzfile(dados)
# Imprimindo as primeiras linhas
head(readRDS(con))


close(con)

