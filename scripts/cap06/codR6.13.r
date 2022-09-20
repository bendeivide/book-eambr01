##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R6.13
##################################



# Objeto
set.seed(15) # Fixando a semente
x <- rnorm(1000) # Gerando 1000 numeros aleatorios
# medida descritiva
opcao <- 'media' # opcoes: 'media', 'mediana', 'medapar' (media aparada)
switch(opcao,
       media = cat('A média aritmética é:', round(mean(x), 4)),
       mediana = cat('A mediana é:', round(mean(x), 4)),
       medapar = cat('A média aparada é:', round(mean(x, trim = 0.1), 4))
)