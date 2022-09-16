##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R4.8
##################################

# Criamos um objeto de classe 'data.frame'
dados <- data.frame(a = 1:3, b = LETTERS[1:3])
# Atributo Nome de 'dados'
names(dados)
 
# Alterando o atributo nome
names(dados) <- c("num", "letras")
# Verificando a alteracao
names(dados)
   
dados
  