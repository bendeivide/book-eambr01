##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R4.32
##################################

# Criando um vetor atomico
x <- 1:6; x

# Verificando se o objeto 'x' tem atributo adicionado
attributes

# Vamos verificar a classe do objeto x
sloop::s3_class(x)

# Adicionando o atributo dim
dim(x) <- c(2, 3) # 2 x 3 = 6 (Comp do vetor)
# attr(x, 'dim') <- c(2, 3)
# Observando agora o comportamento do objeto 'x'
x

# Verificando se o objeto 'x' tem atributo adicionado
attributes(x)

# Verificando a classe do objeto
sloop::s3_class(x)