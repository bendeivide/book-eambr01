##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R10.3
##################################


# Criando objetos no ambiente global
b <- 2; a <- "Ben"; x <- TRUE
# Verificando os nomes no ambiente global
ls()

# Acessando o objeto "a"
.GlobalEnv$a

.GlobalEnv[["a"]]


# Acessando o primeiro nome (Erro...)
.GlobalEnv[[1]]