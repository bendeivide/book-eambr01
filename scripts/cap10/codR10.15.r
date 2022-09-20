##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R10.15
##################################

# objeto quadro de dados
dados <- data.frame(sd = 1:3, var = (1:3)^2)
# Caminho de busca
search()

# anexando "dados" ao caminho de busca
attach(dados)
# Verificando novamente o caminho de busca
search()

# Imprimindo sd
sd

# Desanexando "dados"
detach(dados)
# Imprimindo sd
sd