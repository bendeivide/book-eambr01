##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R4.26
##################################


# Semente
set.seed(10)
# vetor
amostra <- sample(1:10, 10); amostra

# Olhamos para a posicao do valor 1 em amostra
which(amostra == 1)

# Olhamos para a posicao do maximo
which.max(amostra)

# Olhamos para a posicao do minimo
which.min(amostra)

# Vamos mudar 'amostra'
amostra[5] <- 10; amostra

amostra[9] <- 1; amostra

# Percebemos que existe mais de um minimo e mais de um maximo
which.max(amostra) # Essa funcao observa apenas o 1º maximo

which.min(amostra) # Essa funcao observa apenas o 1º minimo

# Alternativa
which(amostra == max(amostra))

which(amostra == min(amostra))

# Podemos usar match para verificar a posicao de '1' em 'amostra'
match(1, amostra) # Se existir mais de um, identificara a posicao apenas o primeiro '1'


# Podemos usar match para verificar as posicoes do vetor 'c(1,2)' em 'amostra'
match(c(1, 2), amostra) # Se existir, identificara a posicao dos elementos do vetor

# Saber se apenas existe o valor '1' na amostra
1 %in% amostra # Resultado logico



