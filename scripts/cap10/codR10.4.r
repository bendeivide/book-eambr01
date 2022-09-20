##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R10.4
##################################

# Criando objetos no ambiente global
b <- 2; a <- "Ben"; x <- TRUE
# Verificando os nomes no ambiente global
ls()


# Criando um objeto ambiente no ambiente global
amb1 <- new.env()
# Inserindo nomes nesse no ambiente "amb1"
amb1$d <- 3; amb1$e <- FALSE
# Verificando nomes no ambiente global
ls()


# Verificando nomes no ambiente "amb1"
ls(envir = amb1)
