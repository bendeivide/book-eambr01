##################################
# Scripts do R Basico            #
# Colecao Estudando o Ambiente R #
# Autores: Ben Deivide de Oliveira Batista e Diego Arthur Bispo Justino de Oliveira   #
##################################
# CODIGO R4.7
##################################

# Criamos um objeto de classe 'data.frame'
dados <- data.frame(a = 1:3, b = LETTERS[1:3])
# Imprimindo na tela
dados

# Verificando sua classe
class(dados)

# Verificando o efeito do objeto 'dados',
# sem o efeito da classe
dados2 <- unclass(dados); dados2

# Qual a classe implicita desse objeto sem o efeito da classe 'data.frame'
class(dados2)